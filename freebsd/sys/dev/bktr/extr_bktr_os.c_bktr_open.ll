; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.bktr_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@bktr_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@METEOR_INITALIZED = common dso_local global i32 0, align 4
@bt848_card = common dso_local global i32 0, align 4
@Bt848_MAX_CARD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bt848_tuner = common dso_local global i32 0, align 4
@Bt848_MAX_TUNER = common dso_local global i32 0, align 4
@bt848_reverse_mute = common dso_local global i32 0, align 4
@bt848_slow_msp_audio = common dso_local global i32 0, align 4
@bt848_amsound = common dso_local global i32 0, align 4
@bt848_dolby = common dso_local global i32 0, align 4
@bt848_stereo_once = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @bktr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.bktr_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = call i32 @dev2unit(%struct.cdev* %13)
  %15 = call i32 @UNIT(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @bktr_devclass, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @devclass_get_softc(i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.bktr_softc*
  store %struct.bktr_softc* %19, %struct.bktr_softc** %10, align 8
  %20 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %21 = icmp eq %struct.bktr_softc* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %5, align 4
  br label %152

24:                                               ; preds = %4
  %25 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %26 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @METEOR_INITALIZED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %5, align 4
  br label %152

33:                                               ; preds = %24
  %34 = load i32, i32* @bktr_devclass, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @devclass_get_device(i32 %34, i32 %35)
  %37 = call i32 @device_busy(i32 %36)
  %38 = load i32, i32* @bt848_card, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %68

40:                                               ; preds = %33
  %41 = load i32, i32* @bt848_card, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load i32, i32* @bt848_card, align 4
  %47 = and i32 %46, 255
  %48 = load i32, i32* @Bt848_MAX_CARD, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %52 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @bt848_card, align 4
  %55 = and i32 %54, 255
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* @bt848_card, align 4
  %59 = and i32 %58, 255
  %60 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %61 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @probeCard(%struct.bktr_softc* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %50
  br label %67

67:                                               ; preds = %66, %45, %40
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* @bt848_tuner, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load i32, i32* @bt848_tuner, align 4
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load i32, i32* @bt848_tuner, align 4
  %78 = and i32 %77, 255
  %79 = load i32, i32* @Bt848_MAX_TUNER, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %83 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @bt848_tuner, align 4
  %86 = and i32 %85, 255
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i32, i32* @bt848_tuner, align 4
  %90 = and i32 %89, 255
  %91 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %92 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @probeCard(%struct.bktr_softc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %88, %81
  br label %98

98:                                               ; preds = %97, %76, %71
  br label %99

99:                                               ; preds = %98, %68
  %100 = load i32, i32* @bt848_reverse_mute, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* @bt848_reverse_mute, align 4
  %104 = ashr i32 %103, 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @bt848_reverse_mute, align 4
  %109 = and i32 %108, 255
  %110 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %111 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i32, i32* @bt848_slow_msp_audio, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* @bt848_slow_msp_audio, align 4
  %118 = ashr i32 %117, 8
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32, i32* @bt848_slow_msp_audio, align 4
  %123 = and i32 %122, 255
  %124 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %125 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.cdev*, %struct.cdev** %6, align 8
  %129 = call i32 @dev2unit(%struct.cdev* %128)
  %130 = call i32 @FUNCTION(i32 %129)
  switch i32 %130, label %140 [
    i32 128, label %131
    i32 130, label %134
    i32 129, label %137
  ]

131:                                              ; preds = %127
  %132 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %133 = call i32 @video_open(%struct.bktr_softc* %132)
  store i32 %133, i32* %12, align 4
  br label %142

134:                                              ; preds = %127
  %135 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %136 = call i32 @tuner_open(%struct.bktr_softc* %135)
  store i32 %136, i32* %12, align 4
  br label %142

137:                                              ; preds = %127
  %138 = load %struct.bktr_softc*, %struct.bktr_softc** %10, align 8
  %139 = call i32 @vbi_open(%struct.bktr_softc* %138)
  store i32 %139, i32* %12, align 4
  br label %142

140:                                              ; preds = %127
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %140, %137, %134, %131
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* @bktr_devclass, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @devclass_get_device(i32 %146, i32 %147)
  %149 = call i32 @device_unbusy(i32 %148)
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %31, %22
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @device_busy(i32) #1

declare dso_local i32 @devclass_get_device(i32, i32) #1

declare dso_local i32 @probeCard(%struct.bktr_softc*, i32, i32) #1

declare dso_local i32 @FUNCTION(i32) #1

declare dso_local i32 @video_open(%struct.bktr_softc*) #1

declare dso_local i32 @tuner_open(%struct.bktr_softc*) #1

declare dso_local i32 @vbi_open(%struct.bktr_softc*) #1

declare dso_local i32 @device_unbusy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
