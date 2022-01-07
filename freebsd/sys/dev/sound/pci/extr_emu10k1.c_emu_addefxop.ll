; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_addefxop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_addefxop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32, i32, i32, i32, i32, i32*)* @emu_addefxop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_addefxop(%struct.sc_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 %19, 10
  %21 = load i32, i32* %13, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @emu_wrefx(%struct.sc_info* %15, i32 %18, i32 %22)
  %24 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 20
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 10
  %33 = or i32 %30, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @emu_wrefx(%struct.sc_info* %24, i32 %28, i32 %35)
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  ret void
}

declare dso_local i32 @emu_wrefx(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
