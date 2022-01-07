; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbmix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbmix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @sbmix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbmix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %14 = call %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer* %13)
  store %struct.sb_info* %14, %struct.sb_info** %10, align 8
  store i32 7, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
    i32 129, label %17
    i32 131, label %18
    i32 130, label %19
  ]

16:                                               ; preds = %4
  store i32 2, i32* %11, align 4
  br label %21

17:                                               ; preds = %4
  store i32 6, i32* %11, align 4
  br label %21

18:                                               ; preds = %4
  store i32 8, i32* %11, align 4
  br label %21

19:                                               ; preds = %4
  store i32 10, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %39

21:                                               ; preds = %19, %18, %17, %16
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = mul i32 %22, %23
  %25 = udiv i32 %24, 100
  store i32 %25, i32* %8, align 4
  %26 = load %struct.sb_info*, %struct.sb_info** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 1
  %30 = call i32 @sb_setmixer(%struct.sb_info* %26, i32 %27, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = mul i32 %31, 100
  %33 = load i32, i32* %12, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %21, %20
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @sb_setmixer(%struct.sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
