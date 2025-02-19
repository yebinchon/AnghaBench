; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816mix_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816mix_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.ad1816_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @ad1816mix_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1816mix_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad1816_info*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.ad1816_info* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.ad1816_info* %8, %struct.ad1816_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %13 [
    i32 131, label %10
    i32 129, label %10
    i32 132, label %11
    i32 130, label %11
    i32 128, label %12
  ]

10:                                               ; preds = %2, %2
  store i32 0, i32* %6, align 4
  br label %14

11:                                               ; preds = %2, %2
  store i32 32, i32* %6, align 4
  br label %14

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12
  store i32 80, i32* %6, align 4
  store i32 128, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %11, %10
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ad1816_info*, %struct.ad1816_info** %5, align 8
  %20 = call i32 @ad1816_lock(%struct.ad1816_info* %19)
  %21 = load %struct.ad1816_info*, %struct.ad1816_info** %5, align 8
  %22 = load %struct.ad1816_info*, %struct.ad1816_info** %5, align 8
  %23 = call i32 @ad1816_read(%struct.ad1816_info* %22, i32 20)
  %24 = and i32 %23, -28785
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ad1816_write(%struct.ad1816_info* %21, i32 20, i32 %26)
  %28 = load %struct.ad1816_info*, %struct.ad1816_info** %5, align 8
  %29 = call i32 @ad1816_unlock(%struct.ad1816_info* %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.ad1816_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @ad1816_lock(%struct.ad1816_info*) #1

declare dso_local i32 @ad1816_write(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @ad1816_read(%struct.ad1816_info*, i32) #1

declare dso_local i32 @ad1816_unlock(%struct.ad1816_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
