; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"m3_pci_resume\0A\00", align 1
@REV_B_CODE_MEMORY_BEGIN = common dso_local global i32 0, align 4
@REV_B_CODE_MEMORY_END = common dso_local global i32 0, align 4
@REV_B_DATA_MEMORY_BEGIN = common dso_local global i32 0, align 4
@REV_B_DATA_MEMORY_END = common dso_local global i32 0, align 4
@KDATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@DSP_PORT_CONTROL_REG_B = common dso_local global i32 0, align 4
@REGB_ENABLE_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m3_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.sc_info* @pcm_getdevinfo(i32 %8)
  store %struct.sc_info* %9, %struct.sc_info** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @CHANGE, align 4
  %11 = call i32 @M3_DEBUG(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %13 = call i32 @M3_LOCK(%struct.sc_info* %12)
  %14 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %15 = call i32 @m3_power(%struct.sc_info* %14, i32 0)
  %16 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %17 = call i32 @m3_config(%struct.sc_info* %16)
  %18 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %19 = call i32 @m3_assp_halt(%struct.sc_info* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %21 = call i32 @m3_codec_reset(%struct.sc_info* %20)
  %22 = load i32, i32* @REV_B_CODE_MEMORY_BEGIN, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %39, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @REV_B_CODE_MEMORY_END, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @m3_wr_assp_code(%struct.sc_info* %28, i32 %29, i32 %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* @REV_B_DATA_MEMORY_BEGIN, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %60, %42
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @REV_B_DATA_MEMORY_END, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @m3_wr_assp_data(%struct.sc_info* %49, i32 %50, i32 %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = load i32, i32* @KDATA_DMA_ACTIVE, align 4
  %66 = call i32 @m3_wr_assp_data(%struct.sc_info* %64, i32 %65, i32 0)
  %67 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %68 = load i32, i32* @DSP_PORT_CONTROL_REG_B, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @REGB_ENABLE_RESET, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @m3_wr_1(%struct.sc_info* %67, i32 %68, i32 %71)
  %73 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %74 = call i32 @m3_amp_enable(%struct.sc_info* %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %76 = call i32 @m3_enable_ints(%struct.sc_info* %75)
  %77 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %78 = call i32 @M3_UNLOCK(%struct.sc_info* %77)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @mixer_reinit(i32 %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %63
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %151

86:                                               ; preds = %63
  %87 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %88 = call i32 @M3_LOCK(%struct.sc_info* %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %115, %86
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %89
  %96 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %95
  %106 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %107 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = load i32, i32* @PCMTRIG_START, align 4
  %113 = call i32 @m3_pchan_trigger_locked(i32* null, %struct.TYPE_4__* %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %95
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %89

118:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %145, %118
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %127 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %126, i32 0, i32 2
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = load i32, i32* @PCMTRIG_START, align 4
  %143 = call i32 @m3_rchan_trigger_locked(i32* null, %struct.TYPE_3__* %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %125
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %119

148:                                              ; preds = %119
  %149 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %150 = call i32 @M3_UNLOCK(%struct.sc_info* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %82
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @m3_power(%struct.sc_info*, i32) #1

declare dso_local i32 @m3_config(%struct.sc_info*) #1

declare dso_local i32 @m3_assp_halt(%struct.sc_info*) #1

declare dso_local i32 @m3_codec_reset(%struct.sc_info*) #1

declare dso_local i32 @m3_wr_assp_code(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_wr_assp_data(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_wr_1(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_amp_enable(%struct.sc_info*) #1

declare dso_local i32 @m3_enable_ints(%struct.sc_info*) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @m3_pchan_trigger_locked(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @m3_rchan_trigger_locked(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
