; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsmix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsmix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.snd_mixer = type { i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i64 0, align 8
@amt = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @alsmix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsmix_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SOUND_MIXER_NRDEVICES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %4, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %16, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @mix_setdevs(%struct.snd_mixer* %28, i64 %29)
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %50, %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @SOUND_MIXER_NRDEVICES, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i64, i64* %3, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %4, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @mix_setrecdevs(%struct.snd_mixer* %54, i64 %55)
  ret i32 0
}

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i64) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
