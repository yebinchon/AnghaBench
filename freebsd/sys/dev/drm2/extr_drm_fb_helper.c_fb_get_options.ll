; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_fb_get_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_fb_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"kern.vt.fb.modes.%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Connector %s: get mode from tunables:\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  - kern.vt.fb.default_mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"kern.vt.fb.default_mode\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @fb_get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_get_options(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @snprintf(i8* %6, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %12 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %13 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %15 = call i8* @kern_getenv(i8* %14)
  %16 = load i8**, i8*** %4, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i8* @kern_getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i8**, i8*** %4, align 8
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  ret i32 %32
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i8* @kern_getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
