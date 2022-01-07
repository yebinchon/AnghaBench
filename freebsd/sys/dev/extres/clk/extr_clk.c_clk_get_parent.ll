; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.clknode* }
%struct.clknode = type { i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Attempt to access unreferenced clock: %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_get_parent(%struct.TYPE_5__* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.clknode*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.clknode*, %struct.clknode** %9, align 8
  store %struct.clknode* %10, %struct.clknode** %6, align 8
  %11 = load %struct.clknode*, %struct.clknode** %6, align 8
  %12 = getelementptr inbounds %struct.clknode, %struct.clknode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = getelementptr inbounds %struct.clknode, %struct.clknode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %15, i8* %20)
  %22 = call i32 (...) @CLK_TOPO_SLOCK()
  %23 = load %struct.clknode*, %struct.clknode** %6, align 8
  %24 = call %struct.clknode* @clknode_get_parent(%struct.clknode* %23)
  store %struct.clknode* %24, %struct.clknode** %7, align 8
  %25 = load %struct.clknode*, %struct.clknode** %7, align 8
  %26 = icmp eq %struct.clknode* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 (...) @CLK_TOPO_UNLOCK()
  %29 = load i32, i32* @ENODEV, align 4
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.clknode*, %struct.clknode** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_5__* @clk_create(%struct.clknode* %31, i32 %34)
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %36, align 8
  %37 = call i32 (...) @CLK_TOPO_UNLOCK()
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CLK_TOPO_SLOCK(...) #1

declare dso_local %struct.clknode* @clknode_get_parent(%struct.clknode*) #1

declare dso_local i32 @CLK_TOPO_UNLOCK(...) #1

declare dso_local %struct.TYPE_5__* @clk_create(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
