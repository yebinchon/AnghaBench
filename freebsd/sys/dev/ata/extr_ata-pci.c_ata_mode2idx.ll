; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_mode2idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_mode2idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_DMA_MASK = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_PIO0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_mode2idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ATA_DMA_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @ATA_UDMA0, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ATA_MODE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = add nsw i32 %12, 8
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ATA_DMA_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @ATA_WDMA0, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ATA_MODE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = add nsw i32 %23, 5
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ATA_MODE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @ATA_PIO0, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %20, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
