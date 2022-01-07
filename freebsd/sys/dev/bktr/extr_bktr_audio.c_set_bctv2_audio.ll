; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_set_bctv2_audio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_set_bctv2_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@BCTV2_GPIO_REG1 = common dso_local global i32 0, align 4
@BCTV2_GR0_AUDIO_BOTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BCTV2_GR0_AUDIO_MUTE = common dso_local global i32 0, align 4
@BCTV2_GPIO_REG0 = common dso_local global i32 0, align 4
@BCTV2_GR0_AUDIO_MAIN = common dso_local global i32 0, align 4
@BCTV2_GR0_AUDIO_SUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bctv2_audio(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %11 [
    i32 1, label %7
    i32 2, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = load i32, i32* @BCTV2_GPIO_REG1, align 4
  %10 = call i32 @bctv2_gpio_write(%struct.TYPE_4__* %8, i32 %9, i32 0)
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = load i32, i32* @BCTV2_GPIO_REG1, align 4
  %14 = call i32 @bctv2_gpio_write(%struct.TYPE_4__* %12, i32 %13, i32 1)
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i32, i32* @BCTV2_GR0_AUDIO_BOTH, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @BCTV2_GR0_AUDIO_MUTE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = load i32, i32* @BCTV2_GPIO_REG0, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @bctv2_gpio_write(%struct.TYPE_4__* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @bctv2_gpio_write(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
