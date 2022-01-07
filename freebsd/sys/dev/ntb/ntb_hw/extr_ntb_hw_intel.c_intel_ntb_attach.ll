; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.ntb_hw_info = type { i64, i32 }

@B2B_MW_DISABLED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"ntb hw bits\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@NTB_ATOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intel_ntb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca %struct.ntb_hw_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ntb_softc* @device_get_softc(i32 %6)
  store %struct.ntb_softc* %7, %struct.ntb_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pci_get_devid(i32 %8)
  %10 = call %struct.ntb_hw_info* @intel_ntb_get_device_info(i32 %9)
  store %struct.ntb_hw_info* %10, %struct.ntb_hw_info** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %4, align 8
  %15 = getelementptr inbounds %struct.ntb_hw_info, %struct.ntb_hw_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %4, align 8
  %20 = getelementptr inbounds %struct.ntb_hw_info, %struct.ntb_hw_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @B2B_MW_DISABLED, align 8
  %25 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @B2B_MW_DISABLED, align 8
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %30, i32 0, i32 5
  %32 = call i32 @callout_init(i32* %31, i32 1)
  %33 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %33, i32 0, i32 4
  %35 = call i32 @callout_init(i32* %34, i32 1)
  %36 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %36, i32 0, i32 3
  %38 = call i32 @callout_init(i32* %37, i32 1)
  %39 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %39, i32 0, i32 2
  %41 = load i32, i32* @MTX_SPIN, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NTB_ATOM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %50 = call i32 @intel_ntb_detect_atom(%struct.ntb_softc* %49)
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %1
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = call i32 @intel_ntb_detect_xeon(%struct.ntb_softc* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %95

58:                                               ; preds = %54
  %59 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %60 = call i32 @intel_ntb_detect_max_mw(%struct.ntb_softc* %59)
  %61 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_enable_busmaster(i32 %63)
  %65 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %66 = call i32 @intel_ntb_map_pci_bars(%struct.ntb_softc* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %95

70:                                               ; preds = %58
  %71 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NTB_ATOM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %78 = call i32 @intel_ntb_atom_init_dev(%struct.ntb_softc* %77)
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %81 = call i32 @intel_ntb_xeon_init_dev(%struct.ntb_softc* %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %95

86:                                               ; preds = %82
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @intel_ntb_spad_clear(i32 %87)
  %89 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %90 = call i32 @intel_ntb_poll_link(%struct.ntb_softc* %89)
  %91 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %92 = call i32 @intel_ntb_sysctl_init(%struct.ntb_softc* %91)
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @ntb_register_device(i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %86, %85, %69, %57
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @intel_ntb_detach(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local %struct.ntb_hw_info* @intel_ntb_get_device_info(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @intel_ntb_detect_atom(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_detect_xeon(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_detect_max_mw(%struct.ntb_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @intel_ntb_map_pci_bars(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_atom_init_dev(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_xeon_init_dev(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_spad_clear(i32) #1

declare dso_local i32 @intel_ntb_poll_link(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_sysctl_init(%struct.ntb_softc*) #1

declare dso_local i32 @ntb_register_device(i32) #1

declare dso_local i32 @intel_ntb_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
