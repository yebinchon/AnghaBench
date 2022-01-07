; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32 }

@ATI_REG_ISR = common dso_local global i32 0, align 4
@ATI_REG_IER = common dso_local global i32 0, align 4
@ATI_REG_IER_IO_STATUS_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_IN_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_OUT_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_SPDF_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_SPDF_STATUS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_info*)* @atiixp_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_enable_interrupts(%struct.atiixp_info* %0) #0 {
  %2 = alloca %struct.atiixp_info*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp_info* %0, %struct.atiixp_info** %2, align 8
  %4 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %5 = load i32, i32* @ATI_REG_ISR, align 4
  %6 = call i32 @atiixp_wr(%struct.atiixp_info* %4, i32 %5, i32 -1)
  %7 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %8 = load i32, i32* @ATI_REG_IER, align 4
  %9 = call i32 @atiixp_rd(%struct.atiixp_info* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @ATI_REG_IER_IO_STATUS_EN, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @ATI_REG_IER_IN_XRUN_EN, align 4
  %14 = load i32, i32* @ATI_REG_IER_OUT_XRUN_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ATI_REG_IER_SPDF_XRUN_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ATI_REG_IER_SPDF_STATUS_EN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %24 = load i32, i32* @ATI_REG_IER, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @atiixp_wr(%struct.atiixp_info* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
