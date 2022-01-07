; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emumix_set_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emumix_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32*, i32* }

@NUM_MIXERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emumix_set_volume(%struct.emu_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.emu_sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @RANGE(i32 %7, i32 0, i32 100)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NUM_MIXERS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %15 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  %20 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %21 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %22 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @emumix_set_fxvol(%struct.emu_sc_info* %20, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @emumix_set_fxvol(%struct.emu_sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
