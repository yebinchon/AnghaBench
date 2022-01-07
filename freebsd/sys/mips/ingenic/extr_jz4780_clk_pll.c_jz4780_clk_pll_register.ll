; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_pll.c_jz4780_clk_pll_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_pll.c_jz4780_clk_pll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clknode_init_def = type { i32 }
%struct.mtx = type { i32 }
%struct.resource = type { i32 }
%struct.clknode = type { i32 }
%struct.jz4780_clk_pll_sc = type { i32, %struct.resource*, %struct.mtx* }

@jz4780_clk_pll_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jz4780_clk_pll_register(%struct.clkdom* %0, %struct.clknode_init_def* %1, %struct.mtx* %2, %struct.resource* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clkdom*, align 8
  %8 = alloca %struct.clknode_init_def*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clknode*, align 8
  %13 = alloca %struct.jz4780_clk_pll_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %7, align 8
  store %struct.clknode_init_def* %1, %struct.clknode_init_def** %8, align 8
  store %struct.mtx* %2, %struct.mtx** %9, align 8
  store %struct.resource* %3, %struct.resource** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %15 = load %struct.clknode_init_def*, %struct.clknode_init_def** %8, align 8
  %16 = call %struct.clknode* @clknode_create(%struct.clkdom* %14, i32* @jz4780_clk_pll_class, %struct.clknode_init_def* %15)
  store %struct.clknode* %16, %struct.clknode** %12, align 8
  %17 = load %struct.clknode*, %struct.clknode** %12, align 8
  %18 = icmp eq %struct.clknode* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %35

20:                                               ; preds = %5
  %21 = load %struct.clknode*, %struct.clknode** %12, align 8
  %22 = call %struct.jz4780_clk_pll_sc* @clknode_get_softc(%struct.clknode* %21)
  store %struct.jz4780_clk_pll_sc* %22, %struct.jz4780_clk_pll_sc** %13, align 8
  %23 = load %struct.mtx*, %struct.mtx** %9, align 8
  %24 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %13, align 8
  %25 = getelementptr inbounds %struct.jz4780_clk_pll_sc, %struct.jz4780_clk_pll_sc* %24, i32 0, i32 2
  store %struct.mtx* %23, %struct.mtx** %25, align 8
  %26 = load %struct.resource*, %struct.resource** %10, align 8
  %27 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %13, align 8
  %28 = getelementptr inbounds %struct.jz4780_clk_pll_sc, %struct.jz4780_clk_pll_sc* %27, i32 0, i32 1
  store %struct.resource* %26, %struct.resource** %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.jz4780_clk_pll_sc*, %struct.jz4780_clk_pll_sc** %13, align 8
  %31 = getelementptr inbounds %struct.jz4780_clk_pll_sc, %struct.jz4780_clk_pll_sc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %33 = load %struct.clknode*, %struct.clknode** %12, align 8
  %34 = call i32 @clknode_register(%struct.clkdom* %32, %struct.clknode* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %20, %19
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, %struct.clknode_init_def*) #1

declare dso_local %struct.jz4780_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
