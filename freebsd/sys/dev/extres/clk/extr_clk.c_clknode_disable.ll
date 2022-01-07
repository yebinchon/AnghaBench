; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32, i32, i64, %struct.clknode* }

@CLK_NODE_CANNOT_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_disable(%struct.clknode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  %5 = call i32 (...) @CLK_TOPO_ASSERT()
  store i32 0, i32* %4, align 4
  %6 = load %struct.clknode*, %struct.clknode** %3, align 8
  %7 = call i32 @CLKNODE_XLOCK(%struct.clknode* %6)
  %8 = load %struct.clknode*, %struct.clknode** %3, align 8
  %9 = getelementptr inbounds %struct.clknode, %struct.clknode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.clknode*, %struct.clknode** %3, align 8
  %14 = getelementptr inbounds %struct.clknode, %struct.clknode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CLK_NODE_CANNOT_STOP, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.clknode*, %struct.clknode** %3, align 8
  %21 = call i32 @CLKNODE_SET_GATE(%struct.clknode* %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.clknode*, %struct.clknode** %3, align 8
  %26 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %12, %1
  %30 = load %struct.clknode*, %struct.clknode** %3, align 8
  %31 = getelementptr inbounds %struct.clknode, %struct.clknode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.clknode*, %struct.clknode** %3, align 8
  %35 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %34)
  %36 = load %struct.clknode*, %struct.clknode** %3, align 8
  %37 = getelementptr inbounds %struct.clknode, %struct.clknode* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.clknode*, %struct.clknode** %3, align 8
  %42 = getelementptr inbounds %struct.clknode, %struct.clknode* %41, i32 0, i32 3
  %43 = load %struct.clknode*, %struct.clknode** %42, align 8
  %44 = call i32 @clknode_disable(%struct.clknode* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %24
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @CLK_TOPO_ASSERT(...) #1

declare dso_local i32 @CLKNODE_XLOCK(%struct.clknode*) #1

declare dso_local i32 @CLKNODE_SET_GATE(%struct.clknode*, i32) #1

declare dso_local i32 @CLKNODE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
