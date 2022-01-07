; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_wrptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_wrptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32 }

@EMU_PTR_CHNO_MASK = common dso_local global i32 0, align 4
@EMU_PTR = common dso_local global i32 0, align 4
@EMU_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_wrptr(%struct.emu_sc_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %16 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EMU_PTR_CHNO_MASK, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = call i32 (...) @EMU_RWLOCK()
  %24 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %25 = load i32, i32* @EMU_PTR, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %24, i32 %25, i32 %26, i32 4)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, -16777216
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = lshr i32 %32, 24
  %34 = and i32 %33, 63
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 31
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %50 = load i32, i32* @EMU_DATA, align 4
  %51 = call i32 @emu_rd_nolock(%struct.emu_sc_info* %49, i32 %50, i32 4)
  %52 = load i32, i32* %10, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %31, %4
  %58 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %59 = load i32, i32* @EMU_DATA, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @emu_wr_nolock(%struct.emu_sc_info* %58, i32 %59, i32 %60, i32 4)
  %62 = call i32 (...) @EMU_RWUNLOCK()
  ret void
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
