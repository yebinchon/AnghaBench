; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymmix_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymmix_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.mss_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @ymmix_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ymmix_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %7 = call %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer* %6)
  store %struct.mss_info* %7, %struct.mss_info** %5, align 8
  %8 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %9 = call i32 @mss_lock(%struct.mss_info* %8)
  %10 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @mss_set_recsrc(%struct.mss_info* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %14 = call i32 @mss_unlock(%struct.mss_info* %13)
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

declare dso_local %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @mss_set_recsrc(%struct.mss_info*, i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
