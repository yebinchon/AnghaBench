; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_diag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i8* }

@vga_init_done = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VGA_DRIVER_NAME = common dso_local global i32 0, align 4
@KD_EGA = common dso_local global i64 0, align 8
@KD_VGA = common dso_local global i64 0, align 8
@video_mode_ptr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [81 x i8] c"vga%d: %s: WARNING: video mode switching is not fully supported on this adapter\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"VGA parameters upon power-up\0A\00", align 1
@adpstate = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"VGA parameters in BIOS for mode %d\0A\00", align 1
@adpstate2 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"EGA/VGA parameters to be used for mode %d\0A\00", align 1
@V_MODE_PARAM_SIZE = common dso_local global i32 0, align 4
@EOT = common dso_local global i64 0, align 8
@NA = common dso_local global i64 0, align 8
@RTC_EQUIPMENT = common dso_local global i32 0, align 4
@V_ADP_MODECHANGE = common dso_local global i32 0, align 4
@bios_vmode = common dso_local global %struct.TYPE_14__* null, align 8
@rows_offset = common dso_local global i32 0, align 4
@video_mode_ptr2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @vga_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_diag(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @vga_init_done, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %3, align 4
  br label %76

11:                                               ; preds = %2
  %12 = load i32, i32* @VGA_DRIVER_NAME, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fb_dump_adp_info(i32 %12, %struct.TYPE_15__* %13, i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KD_EGA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KD_VGA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %76

28:                                               ; preds = %21, %11
  %29 = load i32*, i32** @video_mode_ptr, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %5, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %76

43:                                               ; preds = %39
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KD_VGA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @adpstate, i32 0, i32 0), align 8
  %52 = call i32 @dump_buffer(i32* %51, i32 8)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @adpstate2, i32 0, i32 0), align 8
  %58 = call i32 @dump_buffer(i32* %57, i32 8)
  br label %59

59:                                               ; preds = %49, %43
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32* @get_mode_param(i64 %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %76

68:                                               ; preds = %59
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @V_MODE_PARAM_SIZE, align 4
  %75 = call i32 @dump_buffer(i32* %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %67, %42, %27, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @fb_dump_adp_info(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_buffer(i32*, i32) #1

declare dso_local i32* @get_mode_param(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
