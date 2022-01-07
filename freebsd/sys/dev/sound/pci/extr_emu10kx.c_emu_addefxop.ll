; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_addefxop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_addefxop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"DSP CODE OVERRUN: attept to write past code_size (pc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emu_sc_info*, i32, i32, i32, i32, i32, i32*)* @emu_addefxop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_addefxop(%struct.emu_sc_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.emu_sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %19 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %64

29:                                               ; preds = %7
  %30 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %36 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @emu_wrefx(%struct.emu_sc_info* %30, i32 %33, i32 %40)
  %42 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %49 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.emu_sc_info*, %struct.emu_sc_info** %8, align 8
  %54 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = or i32 %51, %56
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @emu_wrefx(%struct.emu_sc_info* %42, i32 %46, i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @emu_wrefx(%struct.emu_sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
