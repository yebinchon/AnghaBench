; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_mcallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_mcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32 }
%struct.mpu401 = type { i32, i32, i64 }

@M_TXEN = common dso_local global i32 0, align 4
@mpu401_timeout = common dso_local global i32 0, align 4
@M_RX = common dso_local global i32 0, align 4
@M_RXEN = common dso_local global i32 0, align 4
@M_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi*, i8*, i32)* @mpu401_mcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_mcallback(%struct.snd_midi* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_midi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpu401*, align 8
  store %struct.snd_midi* %0, %struct.snd_midi** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mpu401*
  store %struct.mpu401* %9, %struct.mpu401** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @M_TXEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.mpu401*, %struct.mpu401** %7, align 8
  %16 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.mpu401*, %struct.mpu401** %7, align 8
  %21 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %20, i32 0, i32 1
  %22 = load i32, i32* @mpu401_timeout, align 4
  %23 = load %struct.mpu401*, %struct.mpu401** %7, align 8
  %24 = call i32 @callout_reset(i32* %21, i32 1, i32 %22, %struct.mpu401* %23)
  br label %25

25:                                               ; preds = %19, %14, %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mpu401*, %struct.mpu401** %7, align 8
  %28 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mpu401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
