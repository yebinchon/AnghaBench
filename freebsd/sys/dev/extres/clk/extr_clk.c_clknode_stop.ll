; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i64, i32, i64, %struct.clknode* }

@EBUSY = common dso_local global i32 0, align 4
@CLK_NODE_CANNOT_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_stop(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @CLK_TOPO_ASSERT()
  store i32 0, i32* %6, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call i32 @CLKNODE_XLOCK(%struct.clknode* %8)
  %10 = load %struct.clknode*, %struct.clknode** %4, align 8
  %11 = getelementptr inbounds %struct.clknode, %struct.clknode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.clknode*, %struct.clknode** %4, align 8
  %19 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %18)
  %20 = load i32, i32* @EBUSY, align 4
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %14, %2
  %22 = load %struct.clknode*, %struct.clknode** %4, align 8
  %23 = getelementptr inbounds %struct.clknode, %struct.clknode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.clknode*, %struct.clknode** %4, align 8
  %28 = getelementptr inbounds %struct.clknode, %struct.clknode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CLK_NODE_CANNOT_STOP, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.clknode*, %struct.clknode** %4, align 8
  %35 = call i32 @CLKNODE_SET_GATE(%struct.clknode* %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.clknode*, %struct.clknode** %4, align 8
  %40 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %26, %21
  %44 = load %struct.clknode*, %struct.clknode** %4, align 8
  %45 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %44)
  %46 = load %struct.clknode*, %struct.clknode** %4, align 8
  %47 = getelementptr inbounds %struct.clknode, %struct.clknode* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.clknode*, %struct.clknode** %4, align 8
  %52 = getelementptr inbounds %struct.clknode, %struct.clknode* %51, i32 0, i32 3
  %53 = load %struct.clknode*, %struct.clknode** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @clknode_stop(%struct.clknode* %53, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %38, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @CLK_TOPO_ASSERT(...) #1

declare dso_local i32 @CLKNODE_XLOCK(%struct.clknode*) #1

declare dso_local i32 @CLKNODE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @CLKNODE_SET_GATE(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
