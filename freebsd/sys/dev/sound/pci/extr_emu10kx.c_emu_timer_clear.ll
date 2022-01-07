; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i64*, i32 }

@EMU_MAX_IRQ_CONSUMERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_timer_clear(%struct.emu_sc_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emu_sc_info*, align 8
  %5 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* @EMU_MAX_IRQ_CONSUMERS, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @RANGE(i32 %10, i32 0, i64 %12)
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @emu_timer_enable(%struct.emu_sc_info* %14, i32 %15, i32 0)
  %17 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %18 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %21 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %9
  %29 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %30 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %9
  %36 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %37 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %36, i32 0, i32 1
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %8
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @RANGE(i32, i32, i64) #1

declare dso_local i32 @emu_timer_enable(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
