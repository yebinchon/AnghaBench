; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_gen_sc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CLK_MASK_MUX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @jz4780_clk_gen_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_gen_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4780_clk_gen_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clknode*, %struct.clknode** %4, align 8
  %10 = call %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.jz4780_clk_gen_sc* %10, %struct.jz4780_clk_gen_sc** %6, align 8
  %11 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %12 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CLK_MASK_MUX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %29 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = sub i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %40 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mux_to_reg(i32 %38, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %47 = call i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc* %46)
  %48 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %49 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %50 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc* %48, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %58 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %56, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %69 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %67, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %78 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %79 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @CLK_WR_4(%struct.jz4780_clk_gen_sc* %77, i32 %83, i32 %84)
  %86 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %87 = call i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %27, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @mux_to_reg(i32, i32) #1

declare dso_local i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc*) #1

declare dso_local i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc*, i32) #1

declare dso_local i32 @CLK_WR_4(%struct.jz4780_clk_gen_sc*, i32, i32) #1

declare dso_local i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
