; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_cpu_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_cpu_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_fw_img = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@IWM_UCODE_SECTION_MAX = common dso_local global i32 0, align 4
@IWM_CPU1_CPU2_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@IWM_PAGING_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Break since Data not valid or Empty section, sec = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_fw_img*, i32, i32*)* @iwm_pcie_load_cpu_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_pcie_load_cpu_sections(%struct.iwm_softc* %0, %struct.iwm_fw_img* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca %struct.iwm_fw_img*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %6, align 8
  store %struct.iwm_fw_img* %1, %struct.iwm_fw_img** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  br label %22

18:                                               ; preds = %4
  store i32 16, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %82, %22
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @IWM_UCODE_SECTION_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %32 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %29
  %41 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %42 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IWM_CPU1_CPU2_SEPARATOR_SECTION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %62, label %51

51:                                               ; preds = %40
  %52 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %53 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IWM_PAGING_SEPARATOR_SECTION, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51, %40, %29
  %63 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %64 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %63, i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %85

67:                                               ; preds = %51
  %68 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %71 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = call i32 @iwm_pcie_load_section(%struct.iwm_softc* %68, i32 %69, %struct.TYPE_2__* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %25

85:                                               ; preds = %62, %25
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %79
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32) #1

declare dso_local i32 @iwm_pcie_load_section(%struct.iwm_softc*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
