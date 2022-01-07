; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fbd.c_fb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fbd.c_fb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.fb_info* }
%struct.fb_info = type { i32 (i32, i32)*, i32, i32 }
%struct.thread = type { i32 }
%struct.fbtype = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @fb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  store %struct.fb_info* %15, %struct.fb_info** %11, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %55 [
    i32 132, label %17
    i32 128, label %22
    i32 130, label %25
    i32 129, label %32
    i32 131, label %38
  ]

17:                                               ; preds = %5
  %18 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to %struct.fbtype*
  %21 = call i32 @bcopy(%struct.fb_info* %18, %struct.fbtype* %20, i32 4)
  br label %57

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32 0, i32* %24, align 4
  br label %57

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %57

32:                                               ; preds = %5
  %33 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %57

38:                                               ; preds = %5
  %39 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = icmp ne i32 (i32, i32)* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %46(i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %43, %38
  br label %57

55:                                               ; preds = %5
  %56 = load i32, i32* @ENOIOCTL, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %54, %32, %25, %22, %17
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32 @bcopy(%struct.fb_info*, %struct.fbtype*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
