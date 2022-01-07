; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @als_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_pci_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.sc_info* @pcm_getdevinfo(i32 %4)
  store %struct.sc_info* %5, %struct.sc_info** %3, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %7 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_mtxlock(i32 %8)
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 2
  %12 = call i32 @als_playback_stop(%struct.TYPE_3__* %11)
  %13 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 1
  %18 = call i32 @als_capture_stop(%struct.TYPE_4__* %17)
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = call i32 @als_uninit(%struct.sc_info* %22)
  %24 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_mtxunlock(i32 %26)
  ret i32 0
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @als_playback_stop(%struct.TYPE_3__*) #1

declare dso_local i32 @als_capture_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @als_uninit(%struct.sc_info*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
