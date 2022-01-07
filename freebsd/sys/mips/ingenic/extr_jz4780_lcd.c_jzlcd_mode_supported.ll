; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_mode_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_mode_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i64, i64, i32 }

@FB_MAX_W = common dso_local global i64 0, align 8
@FB_MAX_H = common dso_local global i64 0, align 8
@FB_MAX_BW = common dso_local global i64 0, align 8
@VID_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videomode*)* @jzlcd_mode_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzlcd_mode_supported(%struct.videomode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.videomode*, align 8
  store %struct.videomode* %0, %struct.videomode** %3, align 8
  %4 = load %struct.videomode*, %struct.videomode** %3, align 8
  %5 = getelementptr inbounds %struct.videomode, %struct.videomode* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FB_MAX_W, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.videomode*, %struct.videomode** %3, align 8
  %11 = getelementptr inbounds %struct.videomode, %struct.videomode* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FB_MAX_H, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.videomode*, %struct.videomode** %3, align 8
  %18 = call i64 @jzlcd_get_bandwidth(%struct.videomode* %17)
  %19 = load i64, i64* @FB_MAX_BW, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %31

22:                                               ; preds = %16
  %23 = load %struct.videomode*, %struct.videomode** %3, align 8
  %24 = getelementptr inbounds %struct.videomode, %struct.videomode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VID_INTERLACE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %21, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @jzlcd_get_bandwidth(%struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
