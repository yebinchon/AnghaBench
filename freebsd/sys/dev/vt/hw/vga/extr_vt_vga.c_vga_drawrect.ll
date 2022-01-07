; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_drawrect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_drawrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }

@VDF_TEXTMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i32, i32, i32, i32, i32, i32)* @vga_drawrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_drawrect(%struct.vt_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %17 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %18 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VDF_TEXTMODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %72

24:                                               ; preds = %7
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %69, %24
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37, %33, %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %53, %41
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @vga_setpixel(%struct.vt_device* %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %43

56:                                               ; preds = %43
  br label %68

57:                                               ; preds = %37
  %58 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @vga_setpixel(%struct.vt_device* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.vt_device*, %struct.vt_device** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @vga_setpixel(%struct.vt_device* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %26

72:                                               ; preds = %23, %26
  ret void
}

declare dso_local i32 @vga_setpixel(%struct.vt_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
