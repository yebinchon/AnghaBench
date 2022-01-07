; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_otg.c_jz4780_clk_otg_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_otg.c_jz4780_clk_otg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clknode_init_def = type { i32 }
%struct.mtx = type { i32 }
%struct.resource = type { i32 }
%struct.clknode = type { i32 }
%struct.jz4780_clk_otg_sc = type { %struct.resource*, %struct.mtx* }

@jz4780_clk_otg_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jz4780_clk_otg_register(%struct.clkdom* %0, %struct.clknode_init_def* %1, %struct.mtx* %2, %struct.resource* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clkdom*, align 8
  %7 = alloca %struct.clknode_init_def*, align 8
  %8 = alloca %struct.mtx*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.clknode*, align 8
  %11 = alloca %struct.jz4780_clk_otg_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %6, align 8
  store %struct.clknode_init_def* %1, %struct.clknode_init_def** %7, align 8
  store %struct.mtx* %2, %struct.mtx** %8, align 8
  store %struct.resource* %3, %struct.resource** %9, align 8
  %12 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %13 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %14 = call %struct.clknode* @clknode_create(%struct.clkdom* %12, i32* @jz4780_clk_otg_class, %struct.clknode_init_def* %13)
  store %struct.clknode* %14, %struct.clknode** %10, align 8
  %15 = load %struct.clknode*, %struct.clknode** %10, align 8
  %16 = icmp eq %struct.clknode* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %30

18:                                               ; preds = %4
  %19 = load %struct.clknode*, %struct.clknode** %10, align 8
  %20 = call %struct.jz4780_clk_otg_sc* @clknode_get_softc(%struct.clknode* %19)
  store %struct.jz4780_clk_otg_sc* %20, %struct.jz4780_clk_otg_sc** %11, align 8
  %21 = load %struct.mtx*, %struct.mtx** %8, align 8
  %22 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %11, align 8
  %23 = getelementptr inbounds %struct.jz4780_clk_otg_sc, %struct.jz4780_clk_otg_sc* %22, i32 0, i32 1
  store %struct.mtx* %21, %struct.mtx** %23, align 8
  %24 = load %struct.resource*, %struct.resource** %9, align 8
  %25 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %11, align 8
  %26 = getelementptr inbounds %struct.jz4780_clk_otg_sc, %struct.jz4780_clk_otg_sc* %25, i32 0, i32 0
  store %struct.resource* %24, %struct.resource** %26, align 8
  %27 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %28 = load %struct.clknode*, %struct.clknode** %10, align 8
  %29 = call i32 @clknode_register(%struct.clkdom* %27, %struct.clknode* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %17
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, %struct.clknode_init_def*) #1

declare dso_local %struct.jz4780_clk_otg_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
