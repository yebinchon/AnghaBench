; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_av_composer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_av_composer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VID_PVSYNC = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_LOW = common dso_local global i32 0, align 4
@VID_PHSYNC = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_LOW = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_HIGH = common dso_local global i32 0, align 4
@VID_INTERLACE = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_LOW = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_IN_I_P_INTERLACED = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF = common dso_local global i32 0, align 4
@HDMI_FC_INHACTV1 = common dso_local global i32 0, align 4
@HDMI_FC_INHACTV0 = common dso_local global i32 0, align 4
@HDMI_FC_INVACTV1 = common dso_local global i32 0, align 4
@HDMI_FC_INVACTV0 = common dso_local global i32 0, align 4
@HDMI_FC_INHBLANK1 = common dso_local global i32 0, align 4
@HDMI_FC_INHBLANK0 = common dso_local global i32 0, align 4
@HDMI_FC_INVBLANK = common dso_local global i32 0, align 4
@HDMI_FC_HSYNCINDELAY1 = common dso_local global i32 0, align 4
@HDMI_FC_HSYNCINDELAY0 = common dso_local global i32 0, align 4
@HDMI_FC_VSYNCINDELAY = common dso_local global i32 0, align 4
@HDMI_FC_HSYNCINWIDTH1 = common dso_local global i32 0, align 4
@HDMI_FC_HSYNCINWIDTH0 = common dso_local global i32 0, align 4
@HDMI_FC_VSYNCINWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_av_composer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_av_composer(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  %10 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VID_PVSYNC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_HIGH, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_LOW, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %3, align 4
  %23 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VID_PHSYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_HIGH, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_LOW, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_HIGH, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %42 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VID_INTERLACE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH, align 4
  br label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_LOW, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %57 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VID_INTERLACE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @HDMI_FC_INVIDCONF_IN_I_P_INTERLACED, align 4
  br label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %72 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE, align 4
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %87 = load i32, i32* @HDMI_FC_INVIDCONF, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @WR1(%struct.dwc_hdmi_softc* %86, i32 %87, i32 %88)
  %90 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %91 = load i32, i32* @HDMI_FC_INHACTV1, align 4
  %92 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %93 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 8
  %97 = call i32 @WR1(%struct.dwc_hdmi_softc* %90, i32 %91, i32 %96)
  %98 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %99 = load i32, i32* @HDMI_FC_INHACTV0, align 4
  %100 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %101 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @WR1(%struct.dwc_hdmi_softc* %98, i32 %99, i32 %103)
  %105 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %106 = load i32, i32* @HDMI_FC_INVACTV1, align 4
  %107 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %108 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 8
  %112 = call i32 @WR1(%struct.dwc_hdmi_softc* %105, i32 %106, i32 %111)
  %113 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %114 = load i32, i32* @HDMI_FC_INVACTV0, align 4
  %115 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %116 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @WR1(%struct.dwc_hdmi_softc* %113, i32 %114, i32 %118)
  %120 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %121 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %125 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %123, %127
  store i32 %128, i32* %5, align 4
  %129 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %130 = load i32, i32* @HDMI_FC_INHBLANK1, align 4
  %131 = load i32, i32* %5, align 4
  %132 = ashr i32 %131, 8
  %133 = call i32 @WR1(%struct.dwc_hdmi_softc* %129, i32 %130, i32 %132)
  %134 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %135 = load i32, i32* @HDMI_FC_INHBLANK0, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @WR1(%struct.dwc_hdmi_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %139 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %143 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %141, %145
  store i32 %146, i32* %6, align 4
  %147 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %148 = load i32, i32* @HDMI_FC_INVBLANK, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @WR1(%struct.dwc_hdmi_softc* %147, i32 %148, i32 %149)
  %151 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %152 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %156 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %154, %158
  store i32 %159, i32* %8, align 4
  %160 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %161 = load i32, i32* @HDMI_FC_HSYNCINDELAY1, align 4
  %162 = load i32, i32* %8, align 4
  %163 = ashr i32 %162, 8
  %164 = call i32 @WR1(%struct.dwc_hdmi_softc* %160, i32 %161, i32 %163)
  %165 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %166 = load i32, i32* @HDMI_FC_HSYNCINDELAY0, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @WR1(%struct.dwc_hdmi_softc* %165, i32 %166, i32 %167)
  %169 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %170 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %174 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %172, %176
  store i32 %177, i32* %9, align 4
  %178 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %179 = load i32, i32* @HDMI_FC_VSYNCINDELAY, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @WR1(%struct.dwc_hdmi_softc* %178, i32 %179, i32 %180)
  %182 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %183 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %187 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %185, %189
  store i32 %190, i32* %7, align 4
  %191 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %192 = load i32, i32* @HDMI_FC_HSYNCINWIDTH1, align 4
  %193 = load i32, i32* %7, align 4
  %194 = ashr i32 %193, 8
  %195 = call i32 @WR1(%struct.dwc_hdmi_softc* %191, i32 %192, i32 %194)
  %196 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %197 = load i32, i32* @HDMI_FC_HSYNCINWIDTH0, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @WR1(%struct.dwc_hdmi_softc* %196, i32 %197, i32 %198)
  %200 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %201 = load i32, i32* @HDMI_FC_VSYNCINWIDTH, align 4
  %202 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %203 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %207 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %205, %209
  %211 = call i32 @WR1(%struct.dwc_hdmi_softc* %200, i32 %201, i32 %210)
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
