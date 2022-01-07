; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.TYPE_3__*, %struct.fb_info* }
%struct.TYPE_3__ = type { i32 (%struct.vt_device*, i32)* }
%struct.fb_info = type { i32 }
%struct.thread = type { i32 }
%struct.fbtype = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@TC_BLACK = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vt_fb_ioctl(%struct.vt_device* %0, i32 %1, i64 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vt_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %13 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %12, i32 0, i32 1
  %14 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  store %struct.fb_info* %14, %struct.fb_info** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %55 [
    i32 132, label %16
    i32 128, label %21
    i32 130, label %24
    i32 129, label %31
    i32 131, label %37
  ]

16:                                               ; preds = %4
  %17 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to %struct.fbtype*
  %20 = call i32 @bcopy(%struct.fb_info* %17, %struct.fbtype* %19, i32 4)
  br label %57

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32 0, i32* %23, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %8, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %57

31:                                               ; preds = %4
  %32 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %8, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %57

37:                                               ; preds = %4
  %38 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %39 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.vt_device*, i32)*, i32 (%struct.vt_device*, i32)** %41, align 8
  %43 = icmp eq i32 (%struct.vt_device*, i32)* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @ENODEV, align 4
  store i32 %45, i32* %5, align 4
  br label %59

46:                                               ; preds = %37
  %47 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %48 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.vt_device*, i32)*, i32 (%struct.vt_device*, i32)** %50, align 8
  %52 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %53 = load i32, i32* @TC_BLACK, align 4
  %54 = call i32 %51(%struct.vt_device* %52, i32 %53)
  br label %57

55:                                               ; preds = %4
  %56 = load i32, i32* @ENOIOCTL, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %46, %31, %24, %21, %16
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %44
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @bcopy(%struct.fb_info*, %struct.fbtype*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
