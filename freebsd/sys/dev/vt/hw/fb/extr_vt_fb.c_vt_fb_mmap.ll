; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.fb_info* }
%struct.fb_info = type { i32, i64, i64, i32, i64 }

@FB_FLAG_NOMMAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FB_FLAG_MEMATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vt_fb_mmap(%struct.vt_device* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vt_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fb_info*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.vt_device*, %struct.vt_device** %7, align 8
  %14 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %13, i32 0, i32 0
  %15 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  store %struct.fb_info* %15, %struct.fb_info** %12, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FB_FLAG_NOMMAP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ENODEV, align 4
  store i32 %23, i32* %6, align 4
  br label %69

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i64 @vtophys(i32* %44)
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  br label %66

47:                                               ; preds = %33
  %48 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FB_FLAG_MEMATTR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %47
  br label %66

66:                                               ; preds = %65, %38
  store i32 0, i32* %6, align 4
  br label %69

67:                                               ; preds = %27, %24
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %66, %22
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @vtophys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
