; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_retain_bus_providers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_retain_bus_providers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32, i32*, i32*, i32* }
%struct.chipc_caps = type { i64 }

@BHND_SERVICE_CHIPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ChipCommon device not found\0A\00", align 1
@BHND_SERVICE_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"GPIO device not found\0A\00", align 1
@BHND_SERVICE_PMU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"PMU device not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_softc*)* @bwn_retain_bus_providers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_retain_bus_providers(%struct.bwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.chipc_caps*, align 8
  store %struct.bwn_softc* %0, %struct.bwn_softc** %3, align 8
  %5 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %6 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @BHND_SERVICE_CHIPC, align 4
  %9 = call i8* @bhnd_retain_provider(i32 %7, i32 %8)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i32* %25)
  store %struct.chipc_caps* %26, %struct.chipc_caps** %4, align 8
  %27 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BHND_SERVICE_GPIO, align 4
  %31 = call i8* @bhnd_retain_provider(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %69

44:                                               ; preds = %22
  %45 = load %struct.chipc_caps*, %struct.chipc_caps** %4, align 8
  %46 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BHND_SERVICE_PMU, align 4
  %54 = call i8* @bhnd_retain_provider(i32 %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %57 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %69

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %44
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %62, %39, %17
  %70 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %71 = call i32 @bwn_release_bus_providers(%struct.bwn_softc* %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %68
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @bhnd_retain_provider(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i32*) #1

declare dso_local i32 @bwn_release_bus_providers(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
