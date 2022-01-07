; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_cpu_sections_8000.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_cpu_sections_8000.c"
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
@IWM_FH_UCODE_LOAD_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_fw_img*, i32, i32*)* @iwm_pcie_load_cpu_sections_8000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_pcie_load_cpu_sections_8000(%struct.iwm_softc* %0, %struct.iwm_fw_img* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca %struct.iwm_fw_img*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %6, align 8
  store %struct.iwm_fw_img* %1, %struct.iwm_fw_img** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  br label %24

20:                                               ; preds = %4
  store i32 16, i32* %10, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %106, %24
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @IWM_UCODE_SECTION_MAX, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %109

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %34 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %31
  %43 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %44 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IWM_CPU1_CPU2_SEPARATOR_SECTION, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %42
  %54 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %55 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IWM_PAGING_SEPARATOR_SECTION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %53, %42, %31
  %65 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %66 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %65, i32 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %109

69:                                               ; preds = %53
  %70 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %7, align 8
  %73 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = call i32 @iwm_pcie_load_section(%struct.iwm_softc* %70, i32 %71, %struct.TYPE_2__* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %132

83:                                               ; preds = %69
  %84 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %85 = call i64 @iwm_nic_lock(%struct.iwm_softc* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %89 = load i32, i32* @IWM_FH_UCODE_LOAD_STATUS, align 4
  %90 = call i32 @IWM_READ(%struct.iwm_softc* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  store i32 %95, i32* %14, align 4
  %96 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %97 = load i32, i32* @IWM_FH_UCODE_LOAD_STATUS, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @IWM_WRITE(%struct.iwm_softc* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %100, 1
  %102 = or i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %104 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %103)
  br label %105

105:                                              ; preds = %87, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %27

109:                                              ; preds = %64, %27
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %113 = call i32 @iwm_enable_interrupts(%struct.iwm_softc* %112)
  %114 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %115 = call i64 @iwm_nic_lock(%struct.iwm_softc* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %122 = load i32, i32* @IWM_FH_UCODE_LOAD_STATUS, align 4
  %123 = call i32 @IWM_WRITE(%struct.iwm_softc* %121, i32 %122, i32 65535)
  br label %128

124:                                              ; preds = %117
  %125 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %126 = load i32, i32* @IWM_FH_UCODE_LOAD_STATUS, align 4
  %127 = call i32 @IWM_WRITE(%struct.iwm_softc* %125, i32 %126, i32 -1)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %130 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %129)
  br label %131

131:                                              ; preds = %128, %109
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %81
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32) #1

declare dso_local i32 @iwm_pcie_load_section(%struct.iwm_softc*, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_READ(%struct.iwm_softc*, i32) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_enable_interrupts(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
