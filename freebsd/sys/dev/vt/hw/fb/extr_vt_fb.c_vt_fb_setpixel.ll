; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_setpixel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_setpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.fb_info* }
%struct.fb_info = type { i32*, i32, i32, i64 }

@FB_FLAG_NOWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unmapped framebuffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_fb_setpixel(%struct.vt_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vt_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %13 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %12, i32 0, i32 0
  %14 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  store %struct.fb_info* %14, %struct.fb_info** %9, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %28 = call i32 @FBTYPE_GET_BYTESPP(%struct.fb_info* %27)
  %29 = mul nsw i32 %26, %28
  %30 = add nsw i32 %25, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FB_FLAG_NOWRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %83

38:                                               ; preds = %4
  %39 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %46 = call i32 @FBTYPE_GET_BYTESPP(%struct.fb_info* %45)
  switch i32 %46, label %82 [
    i32 1, label %47
    i32 2, label %52
    i32 3, label %57
    i32 4, label %77
  ]

47:                                               ; preds = %38
  %48 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %48, i32 %49, i32 %50)
  br label %83

52:                                               ; preds = %38
  %53 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @vt_fb_mem_wr2(%struct.fb_info* %53, i32 %54, i32 %55)
  br label %83

57:                                               ; preds = %38
  %58 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %58, i32 %59, i32 %62)
  %64 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %64, i32 %66, i32 %69)
  %71 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 2
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 255
  %76 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %71, i32 %73, i32 %75)
  br label %83

77:                                               ; preds = %38
  %78 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @vt_fb_mem_wr4(%struct.fb_info* %78, i32 %79, i32 %80)
  br label %83

82:                                               ; preds = %38
  br label %83

83:                                               ; preds = %37, %82, %77, %57, %52, %47
  ret void
}

declare dso_local i32 @FBTYPE_GET_BYTESPP(%struct.fb_info*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vt_fb_mem_wr1(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @vt_fb_mem_wr2(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @vt_fb_mem_wr4(%struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
