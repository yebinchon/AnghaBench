; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_enatimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_enatimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64 }

@EMU_INTE = common dso_local global i32 0, align 4
@EMU_INTE_INTERTIMERENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32)* @emu_enatimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_enatimer(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load i32, i32* @EMU_INTE, align 4
  %17 = call i32 @emu_rd(%struct.sc_info* %15, i32 %16, i32 4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @EMU_INTE_INTERTIMERENB, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %22 = load i32, i32* @EMU_INTE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @emu_wr(%struct.sc_info* %21, i32 %22, i32 %23, i32 4)
  br label %25

25:                                               ; preds = %14, %8
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = load i32, i32* @EMU_INTE, align 4
  %31 = call i32 @emu_rd(%struct.sc_info* %29, i32 %30, i32 4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @EMU_INTE_INTERTIMERENB, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = load i32, i32* @EMU_INTE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @emu_wr(%struct.sc_info* %36, i32 %37, i32 %38, i32 4)
  br label %40

40:                                               ; preds = %26, %25
  ret i32 0
}

declare dso_local i32 @emu_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
