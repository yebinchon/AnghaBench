; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vt_draw_1_logo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_cpulogos.c_vt_draw_1_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }

@vt_splash_cpu_style = common dso_local global i32 0, align 4
@vt_beastie2_vga16 = common dso_local global i8* null, align 8
@vt_orb_vga16 = common dso_local global i8* null, align 8
@vt_beastie_vga16 = common dso_local global i8* null, align 8
@vt_logo_sprite_height = common dso_local global i32 0, align 4
@vt_logo_sprite_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i64, i64)* @vt_draw_1_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_draw_1_logo(%struct.vt_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 22, i8* %7, align 1
  %13 = load i32, i32* @vt_splash_cpu_style, align 4
  switch i32 %13, label %19 [
    i32 130, label %14
    i32 128, label %16
    i32 129, label %18
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** @vt_beastie2_vga16, align 8
  store i8* %15, i8** %8, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** @vt_orb_vga16, align 8
  store i8* %17, i8** %8, align 8
  br label %21

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %3, %18
  %20 = load i8*, i8** @vt_beastie_vga16, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %19, %16, %14
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %103, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @vt_logo_sprite_height, align 4
  %25 = load i32, i32* @vt_logo_sprite_width, align 4
  %26 = mul i32 %24, %25
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 22
  br i1 %35, label %36, label %79

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 2
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %71, %36
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @vt_logo_sprite_width, align 4
  %59 = urem i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @vt_logo_sprite_width, align 4
  %65 = udiv i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = load i32, i32* %11, align 4
  %69 = trunc i32 %68 to i8
  %70 = call i32 @vt_draw_2_vga16_px(%struct.vt_device* %55, i64 %61, i64 %67, i8 zeroext %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, 2
  store i32 %75, i32* %9, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %77, 3
  store i32 %78, i32* %12, align 4
  br label %103

79:                                               ; preds = %28
  %80 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @vt_logo_sprite_width, align 4
  %84 = urem i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @vt_logo_sprite_width, align 4
  %90 = udiv i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @vt_draw_2_vga16_px(%struct.vt_device* %80, i64 %86, i64 %92, i8 zeroext %97)
  %99 = load i32, i32* %12, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 2
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %79, %76
  br label %22

104:                                              ; preds = %22
  ret void
}

declare dso_local i32 @vt_draw_2_vga16_px(%struct.vt_device*, i64, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
