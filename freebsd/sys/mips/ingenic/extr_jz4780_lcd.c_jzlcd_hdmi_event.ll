; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_hdmi_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_hdmi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32, i32 }
%struct.jzlcd_softc = type { i32 }
%struct.edid_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to get EDID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to parse EDID: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@FB_DEFAULT_W = common dso_local global i32 0, align 4
@FB_DEFAULT_H = common dso_local global i32 0, align 4
@FB_DEFAULT_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to find usable video mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"using %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to configure FB: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @jzlcd_hdmi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jzlcd_hdmi_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca %struct.videomode, align 4
  %7 = alloca %struct.jzlcd_softc*, align 8
  %8 = alloca %struct.edid_info, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.jzlcd_softc*
  store %struct.jzlcd_softc* %13, %struct.jzlcd_softc** %7, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.videomode* null, %struct.videomode** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @HDMI_GET_EDID(i32 %14, i32** %9, i64* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %20 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %43

24:                                               ; preds = %2
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @edid_parse(i32* %25, %struct.edid_info* %8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %31 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %42

35:                                               ; preds = %24
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @edid_print(%struct.edid_info* %8)
  br label %40

40:                                               ; preds = %38, %35
  %41 = call %struct.videomode* @jzlcd_find_mode(%struct.edid_info* %8)
  store %struct.videomode* %41, %struct.videomode** %5, align 8
  br label %42

42:                                               ; preds = %40, %29
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.videomode*, %struct.videomode** %5, align 8
  %45 = icmp eq %struct.videomode* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @FB_DEFAULT_W, align 4
  %48 = load i32, i32* @FB_DEFAULT_H, align 4
  %49 = load i32, i32* @FB_DEFAULT_REF, align 4
  %50 = call %struct.videomode* @pick_mode_by_ref(i32 %47, i32 %48, i32 %49)
  store %struct.videomode* %50, %struct.videomode** %5, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.videomode*, %struct.videomode** %5, align 8
  %53 = icmp eq %struct.videomode* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %56 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %95

59:                                               ; preds = %51
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %64 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.videomode*, %struct.videomode** %5, align 8
  %67 = getelementptr inbounds %struct.videomode, %struct.videomode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.videomode*, %struct.videomode** %5, align 8
  %70 = getelementptr inbounds %struct.videomode, %struct.videomode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %62, %59
  %74 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %75 = call i32 @jzlcd_stop(%struct.jzlcd_softc* %74)
  %76 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %77 = load %struct.videomode*, %struct.videomode** %5, align 8
  %78 = call i32 @jzlcd_configure(%struct.jzlcd_softc* %76, %struct.videomode* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %83 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %95

87:                                               ; preds = %73
  %88 = load %struct.videomode*, %struct.videomode** %5, align 8
  %89 = bitcast %struct.videomode* %6 to i8*
  %90 = bitcast %struct.videomode* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 8, i1 false)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @HDMI_SET_VIDEOMODE(i32 %91, %struct.videomode* %6)
  %93 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %7, align 8
  %94 = call i32 @jzlcd_start(%struct.jzlcd_softc* %93)
  br label %95

95:                                               ; preds = %87, %81, %54
  ret void
}

declare dso_local i32 @HDMI_GET_EDID(i32, i32**, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @edid_parse(i32*, %struct.edid_info*) #1

declare dso_local i32 @edid_print(%struct.edid_info*) #1

declare dso_local %struct.videomode* @jzlcd_find_mode(%struct.edid_info*) #1

declare dso_local %struct.videomode* @pick_mode_by_ref(i32, i32, i32) #1

declare dso_local i32 @jzlcd_stop(%struct.jzlcd_softc*) #1

declare dso_local i32 @jzlcd_configure(%struct.jzlcd_softc*, %struct.videomode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HDMI_SET_VIDEOMODE(i32, %struct.videomode*) #1

declare dso_local i32 @jzlcd_start(%struct.jzlcd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
