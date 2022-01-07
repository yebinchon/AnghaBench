; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu401 = type { i32 }

@MPU_RESET = common dso_local global i32 0, align 4
@M_MIDI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpu401_uninit(%struct.mpu401* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpu401*, align 8
  %4 = alloca i32, align 4
  store %struct.mpu401* %0, %struct.mpu401** %3, align 8
  %5 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %6 = load i32, i32* @MPU_RESET, align 4
  %7 = call i32 @CMD(%struct.mpu401* %5, i32 %6)
  %8 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %9 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @midi_uninit(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %18 = load i32, i32* @M_MIDI, align 4
  %19 = call i32 @free(%struct.mpu401* %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @CMD(%struct.mpu401*, i32) #1

declare dso_local i32 @midi_uninit(i32) #1

declare dso_local i32 @free(%struct.mpu401*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
