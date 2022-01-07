; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_inline.h_ahc_sg_bus_to_virt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_inline.h_ahc_sg_bus_to_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_dma_seg = type { i32 }
%struct.scb = type { i32, %struct.ahc_dma_seg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahc_dma_seg* (%struct.scb*, i32)* @ahc_sg_bus_to_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb* %0, i32 %1) #0 {
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scb* %0, %struct.scb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.scb*, %struct.scb** %3, align 8
  %8 = getelementptr inbounds %struct.scb, %struct.scb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %6, %9
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.scb*, %struct.scb** %3, align 8
  %17 = getelementptr inbounds %struct.scb, %struct.scb* %16, i32 0, i32 1
  %18 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %18, i64 %20
  ret %struct.ahc_dma_seg* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
