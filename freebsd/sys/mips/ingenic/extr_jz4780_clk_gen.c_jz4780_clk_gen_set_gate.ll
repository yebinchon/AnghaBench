; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clk_gen.c_jz4780_clk_gen_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.jz4780_clk_gen_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@JZ_CLKGR0 = common dso_local global i32 0, align 4
@JZ_CLKGR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @jz4780_clk_gen_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clk_gen_set_gate(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4780_clk_gen_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.clknode*, %struct.clknode** %4, align 8
  %11 = call %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode* %10)
  store %struct.jz4780_clk_gen_sc* %11, %struct.jz4780_clk_gen_sc** %6, align 8
  %12 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %13 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %21 = getelementptr inbounds %struct.jz4780_clk_gen_sc, %struct.jz4780_clk_gen_sc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @JZ_CLKGR0, align 4
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @JZ_CLKGR1, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %36 = call i32 @CLK_LOCK(%struct.jz4780_clk_gen_sc* %35)
  %37 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @CLK_RD_4(%struct.jz4780_clk_gen_sc* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %53

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @CLK_WR_4(%struct.jz4780_clk_gen_sc* %54, i32 %55, i32 %56)
  %58 = load %struct.jz4780_clk_gen_sc*, %struct.jz4780_clk_gen_sc** %6, align 8
  %59 = call i32 @CLK_UNLOCK(%struct.jz4780_clk_gen_sc* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.jz4780_clk_gen_sc* @clknode_get_softc(%struct.clknode*) #1

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
