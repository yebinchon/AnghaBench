; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_audio_hw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_audio_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_softc = type { i32 }

@gpio_ctrls = common dso_local global i64* null, align 8
@AUDIO_HW_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"resetting codec\0A\00", align 1
@reset_active = common dso_local global i32 0, align 4
@RESET_SETUP_TIME = common dso_local global i32 0, align 4
@RESET_HOLD_TIME = common dso_local global i32 0, align 4
@RESET_RELEASE_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no audio_hw_reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2s_softc*)* @i2s_audio_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_audio_hw_reset(%struct.i2s_softc* %0) #0 {
  %2 = alloca %struct.i2s_softc*, align 8
  store %struct.i2s_softc* %0, %struct.i2s_softc** %2, align 8
  %3 = load i64*, i64** @gpio_ctrls, align 8
  %4 = load i64, i64* @AUDIO_HW_RESET, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @AUDIO_HW_RESET, align 8
  %11 = load i32, i32* @reset_active, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @gpio_write(i64 %10, i32 %14)
  %16 = load i32, i32* @RESET_SETUP_TIME, align 4
  %17 = call i32 @DELAY(i32 %16)
  %18 = load i64, i64* @AUDIO_HW_RESET, align 8
  %19 = load i32, i32* @reset_active, align 4
  %20 = call i32 @gpio_write(i64 %18, i32 %19)
  %21 = load i32, i32* @RESET_HOLD_TIME, align 4
  %22 = call i32 @DELAY(i32 %21)
  %23 = load i64, i64* @AUDIO_HW_RESET, align 8
  %24 = load i32, i32* @reset_active, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @gpio_write(i64 %23, i32 %27)
  %29 = load i32, i32* @RESET_RELEASE_TIME, align 4
  %30 = call i32 @DELAY(i32 %29)
  br label %33

31:                                               ; preds = %1
  %32 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %8
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @gpio_write(i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
