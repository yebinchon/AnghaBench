; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_table_get_divider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_table_get_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode_div_sc = type { i32, i64, %struct.clk_div_table* }
%struct.clk_div_table = type { i64, i64 }

@CLK_DIV_WITH_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clknode_div_sc*, i64)* @clknode_div_table_get_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clknode_div_table_get_divider(%struct.clknode_div_sc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clknode_div_sc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_div_table*, align 8
  store %struct.clknode_div_sc* %0, %struct.clknode_div_sc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %4, align 8
  %8 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CLK_DIV_WITH_TABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %4, align 8
  %17 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %16, i32 0, i32 2
  %18 = load %struct.clk_div_table*, %struct.clk_div_table** %17, align 8
  store %struct.clk_div_table* %18, %struct.clk_div_table** %6, align 8
  br label %19

19:                                               ; preds = %37, %15
  %20 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %21 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %26 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %4, align 8
  %29 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %34 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %41

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %39 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %38, i32 1
  store %struct.clk_div_table* %39, %struct.clk_div_table** %6, align 8
  br label %19

40:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %32, %13
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
