; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_revert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@VT_ACTIVATE = common dso_local global i32 0, align 4
@cur_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@KDSBORDER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\1B[=%dH\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\1B[=%dI\00", align 1
@vt4_mode = common dso_local global i64 0, align 8
@PIO_SCRNMAP = common dso_local global i32 0, align 4
@video_mode_changed = common dso_local global i64 0, align 8
@M_VESA_BASE = common dso_local global i64 0, align 8
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@KDRASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\1B[=%dF\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\1B[=%dG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @revert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revert() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = load i32, i32* @errno, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @VT_ACTIVATE, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 0), align 8
  %6 = call i32 @ioctl(i32 0, i32 %4, i32* %5)
  %7 = load i32, i32* @KDSBORDER, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 0), align 8
  %9 = call i32 @ioctl(i32 0, i32 %7, i32* %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 5, i32 0), align 4
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 5, i32 1), align 4
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* @vt4_mode, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @PIO_SCRNMAP, align 4
  %20 = call i32 @ioctl(i32 0, i32 %19, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 1))
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i64, i64* @video_mode_changed, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 2), align 8
  %26 = load i64, i64* @M_VESA_BASE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 2), align 8
  %30 = load i64, i64* @M_VESA_BASE, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @_IO(i8 signext 86, i64 %31)
  %33 = call i32 @ioctl(i32 0, i32 %32, i32* null)
  br label %38

34:                                               ; preds = %24
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 2), align 8
  %36 = call i32 @_IO(i8 signext 83, i64 %35)
  %37 = call i32 @ioctl(i32 0, i32 %36, i32* null)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 4, i32 0), align 8
  %40 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 1), align 8
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 2), align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 3), align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 2
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @KDRASTER, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %52 = call i32 @ioctl(i32 0, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %43, %38
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 4, i32 0), align 4
  %57 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_info, i32 0, i32 3, i32 4, i32 1), align 4
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %1, align 4
  store i32 %61, i32* @errno, align 4
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @_IO(i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
