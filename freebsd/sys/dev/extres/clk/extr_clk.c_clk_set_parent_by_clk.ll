; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_set_parent_by_clk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_set_parent_by_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.clknode* }
%struct.clknode = type { i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Attempt to access unreferenced clock: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent_by_clk(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.clknode*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.clknode*, %struct.clknode** %9, align 8
  store %struct.clknode* %10, %struct.clknode** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.clknode*, %struct.clknode** %12, align 8
  store %struct.clknode* %13, %struct.clknode** %7, align 8
  %14 = load %struct.clknode*, %struct.clknode** %6, align 8
  %15 = getelementptr inbounds %struct.clknode, %struct.clknode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.clknode*, %struct.clknode** %6, align 8
  %20 = getelementptr inbounds %struct.clknode, %struct.clknode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %18, i8* %23)
  %25 = load %struct.clknode*, %struct.clknode** %7, align 8
  %26 = getelementptr inbounds %struct.clknode, %struct.clknode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.clknode*, %struct.clknode** %6, align 8
  %31 = getelementptr inbounds %struct.clknode, %struct.clknode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %29, i8* %34)
  %36 = call i32 (...) @CLK_TOPO_XLOCK()
  %37 = load %struct.clknode*, %struct.clknode** %6, align 8
  %38 = load %struct.clknode*, %struct.clknode** %7, align 8
  %39 = getelementptr inbounds %struct.clknode, %struct.clknode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clknode_set_parent_by_name(%struct.clknode* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = call i32 (...) @CLK_TOPO_UNLOCK()
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CLK_TOPO_XLOCK(...) #1

declare dso_local i32 @clknode_set_parent_by_name(%struct.clknode*, i32) #1

declare dso_local i32 @CLK_TOPO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
