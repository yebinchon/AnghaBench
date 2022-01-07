; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem_sbus.c_gem_sbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem_sbus.c_gem_sbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32*, i32, i32, i32, i32, i32 }

@GEM_SUN_GEM = common dso_local global i32 0, align 4
@GEM_SERDES = common dso_local global i32 0, align 4
@gem_sbus_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GEM_SBUS_CFG_PARITY = common dso_local global i32 0, align 4
@SBUS_BURST64_MASK = common dso_local global i32 0, align 4
@GEM_SBUS_CFG_64BIT = common dso_local global i32 0, align 4
@SBUS_BURST64_SHIFT = common dso_local global i32 0, align 4
@SBUS_BURST_64 = common dso_local global i32 0, align 4
@GEM_SBUS_CFG_BURST_64 = common dso_local global i32 0, align 4
@SBUS_BURST_32 = common dso_local global i32 0, align 4
@GEM_SBUS_CFG_BURST_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported burst size\0A\00", align 1
@GEM_SBUS_BIF_RESET = common dso_local global i32 0, align 4
@GEM_SBUS_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"could not be attached\0A\00", align 1
@GEM_RES_INTR = common dso_local global i64 0, align 8
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@gem_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to set up interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gem_sbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_sbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gem_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.gem_softc* @device_get_softc(i32 %7)
  store %struct.gem_softc* %8, %struct.gem_softc** %4, align 8
  %9 = load i32, i32* @GEM_SUN_GEM, align 4
  %10 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %11 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %14 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @GEM_SERDES, align 4
  %16 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %17 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @gem_sbus_res_spec, align 4
  %20 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %21 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @bus_alloc_resources(i32 %18, i32 %19, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @gem_sbus_res_spec, align 4
  %30 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %31 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @bus_release_resources(i32 %28, i32 %29, i32* %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %129

35:                                               ; preds = %1
  %36 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_get_nameunit(i32 %37)
  %39 = call i32 @GEM_LOCK_INIT(%struct.gem_softc* %36, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %42 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @OF_getetheraddr(i32 %40, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @sbus_get_burstsz(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @GEM_SBUS_CFG_PARITY, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SBUS_BURST64_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %35
  %53 = load i32, i32* @GEM_SBUS_CFG_64BIT, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @SBUS_BURST64_SHIFT, align 4
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %35
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SBUS_BURST_64, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @GEM_SBUS_CFG_BURST_64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %81

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SBUS_BURST_32, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @GEM_SBUS_CFG_BURST_32, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %119

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %83 = load i32, i32* @GEM_SBUS_BIF_RESET, align 4
  %84 = call i32 @GEM_BANK2_READ_4(%struct.gem_softc* %82, i32 %83)
  %85 = call i32 @DELAY(i32 100)
  %86 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %87 = load i32, i32* @GEM_SBUS_CONFIG, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @GEM_BANK2_WRITE_4(%struct.gem_softc* %86, i32 %87, i32 %88)
  %90 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %91 = call i64 @gem_attach(%struct.gem_softc* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %119

96:                                               ; preds = %81
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %99 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @GEM_RES_INTR, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @INTR_TYPE_NET, align 4
  %105 = load i32, i32* @INTR_MPSAFE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @gem_intr, align 4
  %108 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %109 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %110 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %109, i32 0, i32 1
  %111 = call i64 @bus_setup_intr(i32 %97, i32 %103, i32 %106, i32* null, i32 %107, %struct.gem_softc* %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %96
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %117 = call i32 @gem_detach(%struct.gem_softc* %116)
  br label %119

118:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %129

119:                                              ; preds = %113, %93, %77
  %120 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %121 = call i32 @GEM_LOCK_DESTROY(%struct.gem_softc* %120)
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @gem_sbus_res_spec, align 4
  %124 = load %struct.gem_softc*, %struct.gem_softc** %4, align 8
  %125 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @bus_release_resources(i32 %122, i32 %123, i32* %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %119, %118, %25
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.gem_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @GEM_LOCK_INIT(%struct.gem_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @OF_getetheraddr(i32, i32) #1

declare dso_local i32 @sbus_get_burstsz(i32) #1

declare dso_local i32 @GEM_BANK2_READ_4(%struct.gem_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @GEM_BANK2_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i64 @gem_attach(%struct.gem_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.gem_softc*, i32*) #1

declare dso_local i32 @gem_detach(%struct.gem_softc*) #1

declare dso_local i32 @GEM_LOCK_DESTROY(%struct.gem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
