; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_chinfo = type { %struct.mss_info* }
%struct.mss_info = type { i64 }

@MD_AD1845 = common dso_local global i64 0, align 8
@mss_speed.speeds = internal global [16 x i32] [i32 8000, i32 5512, i32 16000, i32 11025, i32 27429, i32 18900, i32 32000, i32 22050, i32 -1, i32 37800, i32 -1, i32 44100, i32 48000, i32 33075, i32 9600, i32 6615], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mss_chinfo*, i32)* @mss_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_speed(%struct.mss_chinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.mss_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mss_chinfo* %0, %struct.mss_chinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mss_chinfo*, %struct.mss_chinfo** %3, align 8
  %9 = getelementptr inbounds %struct.mss_chinfo, %struct.mss_chinfo* %8, i32 0, i32 0
  %10 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  store %struct.mss_info* %10, %struct.mss_info** %5, align 8
  %11 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %12 = call i32 @ad_enter_MCE(%struct.mss_info* %11)
  %13 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %14 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MD_AD1845, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = call i32 @ad_write(%struct.mss_info* %19, i32 22, i32 %22)
  %24 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 255
  %27 = call i32 @ad_write(%struct.mss_info* %24, i32 23, i32 %26)
  br label %74

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* @mss_speed.speeds, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* @mss_speed.speeds, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %39, %43
  %45 = call i64 @abs(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* @mss_speed.speeds, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %46, %50
  %52 = call i64 @abs(i32 %51)
  %53 = icmp slt i64 %45, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %38, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* @mss_speed.speeds, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  %65 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %66 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %67 = call i32 @ad_read(%struct.mss_info* %66, i32 8)
  %68 = and i32 %67, 240
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ad_write(%struct.mss_info* %65, i32 8, i32 %70)
  %72 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %73 = call i32 @ad_wait_init(%struct.mss_info* %72, i32 10000)
  br label %74

74:                                               ; preds = %60, %18
  %75 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %76 = call i32 @ad_leave_MCE(%struct.mss_info* %75)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @ad_enter_MCE(%struct.mss_info*) #1

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

declare dso_local i32 @ad_wait_init(%struct.mss_info*, i32) #1

declare dso_local i32 @ad_leave_MCE(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
