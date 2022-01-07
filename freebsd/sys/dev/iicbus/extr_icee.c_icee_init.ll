; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icee_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"wr_sz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icee_softc*)* @icee_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icee_init(%struct.icee_softc* %0) #0 {
  %2 = alloca %struct.icee_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.icee_softc* %0, %struct.icee_softc** %2, align 8
  %5 = load %struct.icee_softc*, %struct.icee_softc** %2, align 8
  %6 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @device_get_name(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.icee_softc*, %struct.icee_softc** %2, align 8
  %10 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_get_unit(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.icee_softc*, %struct.icee_softc** %2, align 8
  %16 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %15, i32 0, i32 2
  %17 = call i32 @resource_int_value(i8* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.icee_softc*, %struct.icee_softc** %2, align 8
  %21 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %20, i32 0, i32 1
  %22 = call i32 @resource_int_value(i8* %18, i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.icee_softc*, %struct.icee_softc** %2, align 8
  %26 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %25, i32 0, i32 0
  %27 = call i32 @resource_int_value(i8* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  ret void
}

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @resource_int_value(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
