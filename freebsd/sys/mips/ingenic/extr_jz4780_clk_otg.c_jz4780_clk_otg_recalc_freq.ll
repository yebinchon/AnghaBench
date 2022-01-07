; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_otg.c_jz4780_clk_otg_recalc_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_otg.c_jz4780_clk_otg_recalc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.clknode = type { i32 }
%struct.jz4780_clk_otg_sc = type { i32 }

@JZ_USBPCR1 = common dso_local global i32 0, align 4
@PCR_CLK_M = common dso_local global i32 0, align 4
@otg_div_table = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @jz4780_clk_otg_recalc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_otg_recalc_freq(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.jz4780_clk_otg_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.clknode*, %struct.clknode** %3, align 8
  %9 = call %struct.jz4780_clk_otg_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.jz4780_clk_otg_sc* %9, %struct.jz4780_clk_otg_sc** %5, align 8
  %10 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %5, align 8
  %11 = load i32, i32* @JZ_USBPCR1, align 4
  %12 = call i32 @CLK_RD_4(%struct.jz4780_clk_otg_sc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @PCR_CLK_M, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %19 = call i32 @nitems(%struct.TYPE_3__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16

42:                                               ; preds = %16
  ret i32 0
}

declare dso_local %struct.jz4780_clk_otg_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_otg_sc*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
