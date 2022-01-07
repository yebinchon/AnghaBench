; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32*, i32 }

@EMU_MAX_IRQ_CONSUMERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_timer_create(%struct.emu_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %3, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %7 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %15 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %31 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %30, i32 0, i32 1
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %40 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %39, i32 0, i32 1
  %41 = call i32 @mtx_unlock(i32* %40)
  store i32 -1, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
