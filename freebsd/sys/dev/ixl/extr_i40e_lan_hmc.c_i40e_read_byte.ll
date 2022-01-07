; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_read_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_context_ele = type { i32, i32, i32 }

@I40E_DMA_TO_NONDMA = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.i40e_context_ele*, i32*)* @i40e_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_read_byte(i32* %0, %struct.i40e_context_ele* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_context_ele*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.i40e_context_ele* %1, %struct.i40e_context_ele** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %14, 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %26 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @I40E_DMA_TO_NONDMA, align 4
  %33 = call i32 @i40e_memcpy(i32* %7, i32* %31, i32 4, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %43 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @I40E_NONDMA_TO_DMA, align 4
  %49 = call i32 @i40e_memcpy(i32* %47, i32* %7, i32 4, i32 %48)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i40e_memcpy(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
