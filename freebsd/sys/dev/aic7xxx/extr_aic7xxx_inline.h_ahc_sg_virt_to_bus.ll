; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_inline.h_ahc_sg_virt_to_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_inline.h_ahc_sg_virt_to_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { i64, %struct.ahc_dma_seg* }
%struct.ahc_dma_seg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scb*, %struct.ahc_dma_seg*)* @ahc_sg_virt_to_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ahc_sg_virt_to_bus(%struct.scb* %0, %struct.ahc_dma_seg* %1) #0 {
  %3 = alloca %struct.scb*, align 8
  %4 = alloca %struct.ahc_dma_seg*, align 8
  %5 = alloca i32, align 4
  store %struct.scb* %0, %struct.scb** %3, align 8
  store %struct.ahc_dma_seg* %1, %struct.ahc_dma_seg** %4, align 8
  %6 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %4, align 8
  %7 = load %struct.scb*, %struct.scb** %3, align 8
  %8 = getelementptr inbounds %struct.scb, %struct.scb* %7, i32 0, i32 1
  %9 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %10 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %9, i64 1
  %11 = ptrtoint %struct.ahc_dma_seg* %6 to i64
  %12 = ptrtoint %struct.ahc_dma_seg* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.scb*, %struct.scb** %3, align 8
  %17 = getelementptr inbounds %struct.scb, %struct.scb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %18, %21
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
