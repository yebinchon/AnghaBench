; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_get_by_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_get_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clknode = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_get_by_id(i32 %0, %struct.clkdom* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clkdom*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.clknode*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.clkdom* %1, %struct.clkdom** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i32 (...) @CLK_TOPO_SLOCK()
  %12 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call %struct.clknode* @clknode_find_by_id(%struct.clkdom* %12, i64 %13)
  store %struct.clknode* %14, %struct.clknode** %10, align 8
  %15 = load %struct.clknode*, %struct.clknode** %10, align 8
  %16 = icmp eq %struct.clknode* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = call i32 (...) @CLK_TOPO_UNLOCK()
  %19 = load i32, i32* @ENODEV, align 4
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %4
  %21 = load %struct.clknode*, %struct.clknode** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @clk_create(%struct.clknode* %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = call i32 (...) @CLK_TOPO_UNLOCK()
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @CLK_TOPO_SLOCK(...) #1

declare dso_local %struct.clknode* @clknode_find_by_id(%struct.clkdom*, i64) #1

declare dso_local i32 @CLK_TOPO_UNLOCK(...) #1

declare dso_local i32 @clk_create(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
