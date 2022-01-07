; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_recalc_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_recalc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_gen_sc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CLK_MASK_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @jz4780_clk_gen_recalc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_gen_recalc_freq(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.jz4780_clk_gen_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.clknode*, %struct.clknode** %3, align 8
  %9 = call %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.jz4780_clk_gen_sc* %9, %struct.jz4780_clk_gen_sc** %5, align 8
  %10 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %11 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLK_MASK_DIV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  %19 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %20 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = sub i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %28 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %29 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc* %27, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %37 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %35, %41
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %5, align 8
  %48 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %46, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %18, %2
  ret i32 0
}

declare dso_local %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
