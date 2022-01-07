; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_nexus.c_nexus_ofw_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_nexus.c_nexus_ofw_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data_fdt = type { i32, i32, i32 }
%struct.intr_map_data = type { i32 }

@INTR_MAP_DATA_FDT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @nexus_ofw_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_ofw_map_intr(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.intr_map_data_fdt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 12, %16
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* @INTR_MAP_DATA_FDT, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @intr_alloc_map_data(i32 %18, i64 %19, i32 %22)
  %24 = inttoptr i64 %23 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %24, %struct.intr_map_data_fdt** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %11, align 8
  %27 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %11, align 8
  %30 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %11, align 8
  %32 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i32 %33, i32* %34, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %11, align 8
  %42 = bitcast %struct.intr_map_data_fdt* %41 to %struct.intr_map_data*
  %43 = call i32 @intr_map_irq(i32* null, i32 %40, %struct.intr_map_data* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local i64 @intr_alloc_map_data(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @intr_map_irq(i32*, i32, %struct.intr_map_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
