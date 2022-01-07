; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_dbdma.c_dbdma_wake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_dbdma.c_dbdma_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBDMA_STATUS_WAKE = common dso_local global i32 0, align 4
@DBDMA_STATUS_PAUSE = common dso_local global i32 0, align 4
@DBDMA_STATUS_RUN = common dso_local global i32 0, align 4
@DBDMA_STATUS_DEAD = common dso_local global i32 0, align 4
@DBDMA_REG_MASK_SHIFT = common dso_local global i32 0, align 4
@CHAN_CONTROL_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbdma_wake(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @DBDMA_STATUS_WAKE, align 4
  %5 = load i32, i32* @DBDMA_STATUS_PAUSE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DBDMA_STATUS_RUN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DBDMA_STATUS_DEAD, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @DBDMA_REG_MASK_SHIFT, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @DBDMA_STATUS_WAKE, align 4
  %15 = load i32, i32* @DBDMA_STATUS_RUN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CHAN_CONTROL_REG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dbdma_write_reg(i32* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @dbdma_write_reg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
