; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_drawrect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_drawrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_fb_drawrect(%struct.vt_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vt_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %16, align 4
  br label %18

18:                                               ; preds = %61, %7
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29, %25, %22
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %45, %33
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @vt_fb_setpixel(%struct.vt_device* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %35

48:                                               ; preds = %35
  br label %60

49:                                               ; preds = %29
  %50 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @vt_fb_setpixel(%struct.vt_device* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @vt_fb_setpixel(%struct.vt_device* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %18

64:                                               ; preds = %18
  ret void
}

declare dso_local i32 @vt_fb_setpixel(%struct.vt_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
