; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_fdt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_fdt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"bus_release_resource() failed for IO memory, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tsec_fdt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_fdt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tsec_softc* @device_get_softc(i32 %5)
  store %struct.tsec_softc* %6, %struct.tsec_softc** %3, align 8
  %7 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %7, i32 0, i32 14
  %9 = call i32 @callout_drain(i32* %8)
  %10 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %18 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tsec_release_intr(%struct.tsec_softc* %10, i32 %13, i32 %16, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %22 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tsec_release_intr(%struct.tsec_softc* %21, i32 %24, i32 %27, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %33 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %40 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tsec_release_intr(%struct.tsec_softc* %32, i32 %35, i32 %38, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %44 = call i32 @tsec_detach(%struct.tsec_softc* %43)
  %45 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %1
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %53 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %56 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %54, i64 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %49
  br label %66

66:                                               ; preds = %65, %1
  %67 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %68 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %67, i32 0, i32 2
  %69 = call i32 @mtx_destroy(i32* %68)
  %70 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %70, i32 0, i32 1
  %72 = call i32 @mtx_destroy(i32* %71)
  %73 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %74 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %73, i32 0, i32 0
  %75 = call i32 @mtx_destroy(i32* %74)
  ret i32 0
}

declare dso_local %struct.tsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @tsec_release_intr(%struct.tsec_softc*, i32, i32, i32, i8*) #1

declare dso_local i32 @tsec_detach(%struct.tsec_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
