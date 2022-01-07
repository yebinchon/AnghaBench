; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_pcm_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_pcm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { i32, %struct.sc_chinfo*, %struct.sc_info* }
%struct.sc_chinfo = type { i32 }
%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_pcminfo*)* @hdspe_pcm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_pcm_intr(%struct.sc_pcminfo* %0) #0 {
  %2 = alloca %struct.sc_pcminfo*, align 8
  %3 = alloca %struct.sc_chinfo*, align 8
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  store %struct.sc_pcminfo* %0, %struct.sc_pcminfo** %2, align 8
  %6 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %7 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %6, i32 0, i32 2
  %8 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  store %struct.sc_info* %8, %struct.sc_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %12 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %17 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %16, i32 0, i32 1
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i64 %20
  store %struct.sc_chinfo* %21, %struct.sc_chinfo** %3, align 8
  %22 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_mtxunlock(i32 %24)
  %26 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %27 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @chn_intr(i32 %28)
  %30 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_mtxlock(i32 %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
