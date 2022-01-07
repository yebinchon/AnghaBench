; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_video_packetize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_video_packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_VP_REMAP_YCC422_16BIT = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_PP = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD_COLOR_DEPTH_MASK = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD = common dso_local global i32 0, align 4
@HDMI_VP_STUFF = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PR_STUFFING_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE = common dso_local global i32 0, align 4
@HDMI_VP_CONF = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PR_EN_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_SELECT_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PR_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_IDEFAULT_PHASE_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET = common dso_local global i32 0, align 4
@HDMI_VP_REMAP = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PP_EN_ENMASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_YCC422_EN_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PP_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_YCC422_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422 = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PP_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_YCC422_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PP_STUFFING_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_YCC422_STUFFING_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_video_packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_video_packetize(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @HDMI_VP_REMAP_YCC422_16BIT, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_PP, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS, align 4
  store i32 %9, i32* %5, align 4
  store i32 4, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @HDMI_VP_PR_CD_COLOR_DEPTH_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %16 = load i32, i32* @HDMI_VP_PR_CD, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @WR1(%struct.dwc_hdmi_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %20 = load i32, i32* @HDMI_VP_STUFF, align 4
  %21 = call i32 @RD1(%struct.dwc_hdmi_softc* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @HDMI_VP_STUFF_PR_STUFFING_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %30 = load i32, i32* @HDMI_VP_STUFF, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @WR1(%struct.dwc_hdmi_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %34 = load i32, i32* @HDMI_VP_CONF, align 4
  %35 = call i32 @RD1(%struct.dwc_hdmi_softc* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @HDMI_VP_CONF_PR_EN_MASK, align 4
  %37 = load i32, i32* @HDMI_VP_CONF_BYPASS_SELECT_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @HDMI_VP_CONF_PR_EN_DISABLE, align 4
  %43 = load i32, i32* @HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %48 = load i32, i32* @HDMI_VP_CONF, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @WR1(%struct.dwc_hdmi_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %52 = load i32, i32* @HDMI_VP_STUFF, align 4
  %53 = call i32 @RD1(%struct.dwc_hdmi_softc* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @HDMI_VP_STUFF_IDEFAULT_PHASE_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %63 = load i32, i32* @HDMI_VP_STUFF, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @WR1(%struct.dwc_hdmi_softc* %62, i32 %63, i32 %64)
  %66 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %67 = load i32, i32* @HDMI_VP_REMAP, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @WR1(%struct.dwc_hdmi_softc* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_PP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %1
  %74 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %75 = load i32, i32* @HDMI_VP_CONF, align 4
  %76 = call i32 @RD1(%struct.dwc_hdmi_softc* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_MASK, align 4
  %78 = load i32, i32* @HDMI_VP_CONF_PP_EN_ENMASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_MASK, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_DISABLE, align 4
  %86 = load i32, i32* @HDMI_VP_CONF_PP_EN_ENABLE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_DISABLE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %93 = load i32, i32* @HDMI_VP_CONF, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @WR1(%struct.dwc_hdmi_softc* %92, i32 %93, i32 %94)
  br label %153

96:                                               ; preds = %1
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %102 = load i32, i32* @HDMI_VP_CONF, align 4
  %103 = call i32 @RD1(%struct.dwc_hdmi_softc* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_MASK, align 4
  %105 = load i32, i32* @HDMI_VP_CONF_PP_EN_ENMASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_MASK, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_DISABLE, align 4
  %113 = load i32, i32* @HDMI_VP_CONF_PP_EN_DISABLE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_ENABLE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %120 = load i32, i32* @HDMI_VP_CONF, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @WR1(%struct.dwc_hdmi_softc* %119, i32 %120, i32 %121)
  br label %152

123:                                              ; preds = %96
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %129 = load i32, i32* @HDMI_VP_CONF, align 4
  %130 = call i32 @RD1(%struct.dwc_hdmi_softc* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_MASK, align 4
  %132 = load i32, i32* @HDMI_VP_CONF_PP_EN_ENMASK, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_MASK, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_ENABLE, align 4
  %140 = load i32, i32* @HDMI_VP_CONF_PP_EN_DISABLE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_DISABLE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %147 = load i32, i32* @HDMI_VP_CONF, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @WR1(%struct.dwc_hdmi_softc* %146, i32 %147, i32 %148)
  br label %151

150:                                              ; preds = %123
  br label %186

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151, %100
  br label %153

153:                                              ; preds = %152, %73
  %154 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %155 = load i32, i32* @HDMI_VP_STUFF, align 4
  %156 = call i32 @RD1(%struct.dwc_hdmi_softc* %154, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* @HDMI_VP_STUFF_PP_STUFFING_MASK, align 4
  %158 = load i32, i32* @HDMI_VP_STUFF_YCC422_STUFFING_MASK, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* @HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE, align 4
  %164 = load i32, i32* @HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %6, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %6, align 4
  %168 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %169 = load i32, i32* @HDMI_VP_STUFF, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @WR1(%struct.dwc_hdmi_softc* %168, i32 %169, i32 %170)
  %172 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %173 = load i32, i32* @HDMI_VP_CONF, align 4
  %174 = call i32 @RD1(%struct.dwc_hdmi_softc* %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_MASK, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %6, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %183 = load i32, i32* @HDMI_VP_CONF, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @WR1(%struct.dwc_hdmi_softc* %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %153, %150
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
