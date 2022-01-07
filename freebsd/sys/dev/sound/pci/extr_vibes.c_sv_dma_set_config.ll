; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_dma_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_dma_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SV_DMA_ADDR = common dso_local global i32 0, align 4
@SV_DMA_COUNT = common dso_local global i32 0, align 4
@SV_DMA_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"base 0x%08x count %5d mode 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @sv_dma_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sv_dma_set_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SV_DMA_ADDR, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @bus_space_write_4(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SV_DMA_COUNT, align 4
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 16777215
  %21 = call i32 @bus_space_write_4(i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SV_DMA_MODE, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @bus_space_write_1(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = call i32 @DEB(i32 %30)
  ret void
}

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
