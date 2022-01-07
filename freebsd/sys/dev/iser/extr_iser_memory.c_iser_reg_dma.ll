; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_reg_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_reg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iser_data_buf = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.iser_mem_reg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_device*, %struct.iser_data_buf*, %struct.iser_mem_reg*)* @iser_reg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_reg_dma(%struct.iser_device* %0, %struct.iser_data_buf* %1, %struct.iser_mem_reg* %2) #0 {
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca %struct.iser_data_buf*, align 8
  %6 = alloca %struct.iser_mem_reg*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  store %struct.iser_device* %0, %struct.iser_device** %4, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %5, align 8
  store %struct.iser_mem_reg* %2, %struct.iser_mem_reg** %6, align 8
  %8 = load %struct.iser_data_buf*, %struct.iser_data_buf** %5, align 8
  %9 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %8, i32 0, i32 0
  %10 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %10, %struct.scatterlist** %7, align 8
  %11 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %12 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %17 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %20 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %25 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %27 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i64 0
  %31 = call i32 @ib_sg_dma_len(i32 %28, %struct.scatterlist* %30)
  %32 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %33 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %36 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i64 0
  %40 = call i32 @ib_sg_dma_address(i32 %37, %struct.scatterlist* %39)
  %41 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %42 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  ret i32 0
}

declare dso_local i32 @ib_sg_dma_len(i32, %struct.scatterlist*) #1

declare dso_local i32 @ib_sg_dma_address(i32, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
