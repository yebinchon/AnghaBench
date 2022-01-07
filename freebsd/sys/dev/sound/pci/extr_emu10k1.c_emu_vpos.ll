; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }
%struct.emu_voice = type { i32, i32, i64, i64 }

@EMU_CHAN_CCCA_CURRADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, %struct.emu_voice*)* @emu_vpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_vpos(%struct.sc_info* %0, %struct.emu_voice* %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.emu_voice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store %struct.emu_voice* %1, %struct.emu_voice** %4, align 8
  %7 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %8 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %14 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = add nsw i32 %12, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %22 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EMU_CHAN_CCCA_CURRADDR, align 4
  %25 = call i32 @emu_rdptr(%struct.sc_info* %20, i32 %23, i32 %24)
  %26 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %27 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %28, %29
  %31 = sub nsw i32 %25, %30
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, -32
  ret i32 %35
}

declare dso_local i32 @emu_rdptr(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
