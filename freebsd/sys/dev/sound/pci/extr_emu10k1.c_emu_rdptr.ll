; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_rdptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_rdptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@EMU_PTR_CHNO_MASK = common dso_local global i32 0, align 4
@EMU_PTR = common dso_local global i32 0, align 4
@EMU_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32, i32)* @emu_rdptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_rdptr(%struct.sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 16
  %14 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EMU_PTR_CHNO_MASK, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %23 = load i32, i32* @EMU_PTR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @emu_wr(%struct.sc_info* %22, i32 %23, i32 %24, i32 4)
  %26 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %27 = load i32, i32* @EMU_DATA, align 4
  %28 = call i32 @emu_rd(%struct.sc_info* %26, i32 %27, i32 4)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -16777216
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 24
  %35 = and i32 %34, 63
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 31
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %32, %3
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_rd(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
