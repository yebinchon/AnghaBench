; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_get_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_get_by_name(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.clknode*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32 (...) @CLK_TOPO_SLOCK()
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.clknode* @clknode_find_by_name(i8* %10)
  store %struct.clknode* %11, %struct.clknode** %8, align 8
  %12 = load %struct.clknode*, %struct.clknode** %8, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 (...) @CLK_TOPO_UNLOCK()
  %16 = load i32, i32* @ENODEV, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.clknode*, %struct.clknode** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @clk_create(%struct.clknode* %18, i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = call i32 (...) @CLK_TOPO_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @CLK_TOPO_SLOCK(...) #1

declare dso_local %struct.clknode* @clknode_find_by_name(i8*) #1

declare dso_local i32 @CLK_TOPO_UNLOCK(...) #1

declare dso_local i32 @clk_create(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
