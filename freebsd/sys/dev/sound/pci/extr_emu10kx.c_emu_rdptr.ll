; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rdptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rdptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32 }

@EMU_PTR_CHNO_MASK = common dso_local global i32 0, align 4
@EMU_PTR = common dso_local global i32 0, align 4
@EMU_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_rdptr(%struct.emu_sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.emu_sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 16
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %15 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EMU_PTR_CHNO_MASK, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = call i32 (...) @EMU_RWLOCK()
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %24 = load i32, i32* @EMU_PTR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %23, i32 %24, i32 %25, i32 4)
  %27 = load %struct.emu_sc_info*, %struct.emu_sc_info** %4, align 8
  %28 = load i32, i32* @EMU_DATA, align 4
  %29 = call i32 @emu_rd_nolock(%struct.emu_sc_info* %27, i32 %28, i32 4)
  store i32 %29, i32* %8, align 4
  %30 = call i32 (...) @EMU_RWUNLOCK()
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, -16777216
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 24
  %37 = and i32 %36, 63
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 31
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %34, %3
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @EMU_RWLOCK(...) #1

declare dso_local i32 @emu_wr_nolock(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_rd_nolock(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @EMU_RWUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
