; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_chip_pre_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_chip_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i64 }

@ATI_REG_CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_IN_DMA_EN = common dso_local global i32 0, align 4
@ATI_REG_CMD_OUT_DMA_EN = common dso_local global i32 0, align 4
@ATI_REG_CMD_SPDF_OUT_EN = common dso_local global i32 0, align 4
@ATI_REG_IER = common dso_local global i32 0, align 4
@CODEC_CHECK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_info*)* @atiixp_chip_pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_chip_pre_init(%struct.atiixp_info* %0) #0 {
  %2 = alloca %struct.atiixp_info*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp_info* %0, %struct.atiixp_info** %2, align 8
  %4 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %5 = call i32 @atiixp_lock(%struct.atiixp_info* %4)
  %6 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %7 = call i32 @atiixp_disable_interrupts(%struct.atiixp_info* %6)
  %8 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %9 = load i32, i32* @ATI_REG_CMD, align 4
  %10 = call i32 @atiixp_rd(%struct.atiixp_info* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @ATI_REG_CMD_IN_DMA_EN, align 4
  %12 = load i32, i32* @ATI_REG_CMD_OUT_DMA_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ATI_REG_CMD_SPDF_OUT_EN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %20 = load i32, i32* @ATI_REG_CMD, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @atiixp_wr(%struct.atiixp_info* %19, i32 %20, i32 %21)
  %23 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %24 = call i32 @atiixp_reset_aclink(%struct.atiixp_info* %23)
  %25 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %26 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %28 = load i32, i32* @ATI_REG_IER, align 4
  %29 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %30 = call i32 @atiixp_wr(%struct.atiixp_info* %27, i32 %28, i32 %29)
  %31 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %32 = call i32 @atiixp_unlock(%struct.atiixp_info* %31)
  ret void
}

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_disable_interrupts(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

declare dso_local i32 @atiixp_reset_aclink(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
