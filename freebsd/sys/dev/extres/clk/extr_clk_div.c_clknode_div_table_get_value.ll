; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_table_get_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_table_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode_div_sc = type { i32, %struct.clk_div_table* }
%struct.clk_div_table = type { i64, i64 }

@CLK_DIV_WITH_TABLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode_div_sc*, i64*)* @clknode_div_table_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_div_table_get_value(%struct.clknode_div_sc* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode_div_sc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.clk_div_table*, align 8
  store %struct.clknode_div_sc* %0, %struct.clknode_div_sc** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %4, align 8
  %8 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CLK_DIV_WITH_TABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %4, align 8
  %16 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %15, i32 0, i32 1
  %17 = load %struct.clk_div_table*, %struct.clk_div_table** %16, align 8
  store %struct.clk_div_table* %17, %struct.clk_div_table** %6, align 8
  br label %18

18:                                               ; preds = %36, %14
  %19 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %20 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %25 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %32 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %41

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %38 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %37, i32 1
  store %struct.clk_div_table* %38, %struct.clk_div_table** %6, align 8
  br label %18

39:                                               ; preds = %18
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %30, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
