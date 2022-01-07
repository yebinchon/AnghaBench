; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_gen_sc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CLK_MASK_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @jz4780_clk_gen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_gen_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4780_clk_gen_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clknode*, %struct.clknode** %3, align 8
  %10 = call %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.jz4780_clk_gen_sc* %10, %struct.jz4780_clk_gen_sc** %5, align 8
  %11 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %12 = call i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc* %11)
  %13 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %14 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CLK_MASK_MUX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %23 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = sub i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %31 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %32 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc* %30, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %40 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %38, %44
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %50 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @reg_to_mux(i32 %48, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %21
  %58 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %59 = call i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc* %58)
  %60 = load %struct.clknode*, %struct.clknode** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @clknode_init_parent_idx(%struct.clknode* %60, i32 %61)
  ret i32 0
}

declare dso_local %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc*, i32) #1

declare dso_local i32 @reg_to_mux(i32, i32) #1

declare dso_local i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc*) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
