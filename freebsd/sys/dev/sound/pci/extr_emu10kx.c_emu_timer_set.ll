; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32*, i64, i32 }

@EMU_MAX_IRQ_CONSUMERS = common dso_local global i32 0, align 4
@EMU_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_timer_set(%struct.emu_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %74

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @RANGE(i32 %13, i32 16, i32 1024)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @RANGE(i32 %15, i32 0, i32 %17)
  %19 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %20 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %19, i32 0, i32 2
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %58, %12
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %35 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %38 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp sgt i64 %36, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %33
  %47 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %48 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %56 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %29

61:                                               ; preds = %29
  %62 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %63 = load i32, i32* @EMU_TIMER, align 4
  %64 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %65 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, 1023
  %68 = trunc i64 %67 to i32
  %69 = call i32 @emu_wr(%struct.emu_sc_info* %62, i32 %63, i32 %68, i32 2)
  %70 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %71 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %70, i32 0, i32 2
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %61, %11
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @emu_wr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
