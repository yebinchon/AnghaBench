; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_release_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_release_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"bus_teardown_intr() failed for %s intr, error %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"bus_release_resource() failed for %s intr, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*, %struct.resource*, i8*, i32, i8*)* @tsec_release_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_release_intr(%struct.tsec_softc* %0, %struct.resource* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.tsec_softc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.resource*, %struct.resource** %7, align 8
  %13 = icmp eq %struct.resource* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %48

15:                                               ; preds = %5
  %16 = load %struct.tsec_softc*, %struct.tsec_softc** %6, align 8
  %17 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @bus_teardown_intr(i32 %18, %struct.resource* %19, i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.tsec_softc*, %struct.tsec_softc** %6, align 8
  %26 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %15
  %32 = load %struct.tsec_softc*, %struct.tsec_softc** %6, align 8
  %33 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = call i32 @bus_release_resource(i32 %34, i32 %35, i32 %36, %struct.resource* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.tsec_softc*, %struct.tsec_softc** %6, align 8
  %43 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %14, %41, %31
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
