; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_pcm_info = type { i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_pcm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pcm_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_pcm_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.emu_pcm_info* @pcm_getdevinfo(i32 %6)
  store %struct.emu_pcm_info* %7, %struct.emu_pcm_info** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pcm_unregister(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %16 = call i32 @emu_pcm_uninit(%struct.emu_pcm_info* %15)
  %17 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %18 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %23 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @snd_mtxfree(i64 %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = call i32 @free(%struct.emu_pcm_info* %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.emu_pcm_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @emu_pcm_uninit(%struct.emu_pcm_info*) #1

declare dso_local i32 @snd_mtxfree(i64) #1

declare dso_local i32 @free(%struct.emu_pcm_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
