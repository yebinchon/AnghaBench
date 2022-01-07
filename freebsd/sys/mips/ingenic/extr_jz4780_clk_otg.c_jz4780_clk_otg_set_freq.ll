; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_otg.c_jz4780_clk_otg_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_otg.c_jz4780_clk_otg_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.clknode = type { i32 }
%struct.jz4780_clk_otg_sc = type { i32 }

@otg_div_table = common dso_local global %struct.TYPE_3__* null, align 8
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@JZ_USBPCR1 = common dso_local global i32 0, align 4
@PCR_CLK_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32, i32*, i32, i32*)* @jz4780_clk_otg_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_otg_set_freq(%struct.clknode* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.jz4780_clk_otg_sc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.clknode*, %struct.clknode** %7, align 8
  %16 = call %struct.jz4780_clk_otg_sc* @clknode_get_softc(%struct.clknode* %15)
  store %struct.jz4780_clk_otg_sc* %16, %struct.jz4780_clk_otg_sc** %12, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %44, %5
  %18 = load i32, i32* %14, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %20 = call i32 @nitems(%struct.TYPE_3__* %19)
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %31, %38
  %40 = sdiv i32 %39, 2
  %41 = icmp slt i32 %25, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %47

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %17

47:                                               ; preds = %42, %17
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %85

61:                                               ; preds = %47
  %62 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %12, align 8
  %63 = call i32 @CLK_LOCK(%struct.jz4780_clk_otg_sc* %62)
  %64 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %12, align 8
  %65 = load i32, i32* @JZ_USBPCR1, align 4
  %66 = call i32 @CLK_RD_4(%struct.jz4780_clk_otg_sc* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @PCR_CLK_M, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @otg_div_table, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  %79 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %12, align 8
  %80 = load i32, i32* @JZ_USBPCR1, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @CLK_WR_4(%struct.jz4780_clk_otg_sc* %79, i32 %80, i32 %81)
  %83 = load %struct.jz4780_clk_otg_sc*, %struct.jz4780_clk_otg_sc** %12, align 8
  %84 = call i32 @CLK_UNLOCK(%struct.jz4780_clk_otg_sc* %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %61, %60
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.jz4780_clk_otg_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @CLK_LOCK(%struct.jz4780_clk_otg_sc*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_otg_sc*, i32) #1

declare dso_local i32 @CLK_WR_4(%struct.jz4780_clk_otg_sc*, i32, i32) #1

declare dso_local i32 @CLK_UNLOCK(%struct.jz4780_clk_otg_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
