; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_wrptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_wrptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@EMU_PTR_CHNO_MASK = common dso_local global i32 0, align 4
@EMU_PTR = common dso_local global i32 0, align 4
@EMU_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32, i32, i32)* @emu_wrptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_wrptr(%struct.sc_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EMU_PTR_CHNO_MASK, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %24 = load i32, i32* @EMU_PTR, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @emu_wr(%struct.sc_info* %23, i32 %24, i32 %25, i32 4)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -16777216
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 63
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 31
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %49 = load i32, i32* @EMU_DATA, align 4
  %50 = call i32 @emu_rd(%struct.sc_info* %48, i32 %49, i32 4)
  %51 = load i32, i32* %10, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %30, %4
  %57 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %58 = load i32, i32* @EMU_DATA, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @emu_wr(%struct.sc_info* %57, i32 %58, i32 %59, i32 4)
  ret void
}

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_rd(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
