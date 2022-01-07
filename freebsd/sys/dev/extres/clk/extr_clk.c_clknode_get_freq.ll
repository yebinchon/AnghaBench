; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_get_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i64, i8*, i32, %struct.clknode* }

@.str = private unnamed_addr constant [45 x i8] c"Cannot get frequency for clk: %s, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_get_freq(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 (...) @CLK_TOPO_ASSERT()
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = getelementptr inbounds %struct.clknode, %struct.clknode* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.clknode*, %struct.clknode** %4, align 8
  %18 = getelementptr inbounds %struct.clknode, %struct.clknode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.clknode*, %struct.clknode** %4, align 8
  %23 = getelementptr inbounds %struct.clknode, %struct.clknode* %22, i32 0, i32 3
  %24 = load %struct.clknode*, %struct.clknode** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @clknode_get_freq(%struct.clknode* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.clknode*, %struct.clknode** %4, align 8
  %34 = call i32 @CLKNODE_XLOCK(%struct.clknode* %33)
  %35 = load %struct.clknode*, %struct.clknode** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @CLKNODE_RECALC_FREQ(%struct.clknode* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.clknode*, %struct.clknode** %4, align 8
  %42 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %41)
  %43 = load %struct.clknode*, %struct.clknode** %4, align 8
  %44 = getelementptr inbounds %struct.clknode, %struct.clknode* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %32
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.clknode*, %struct.clknode** %4, align 8
  %53 = getelementptr inbounds %struct.clknode, %struct.clknode* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.clknode*, %struct.clknode** %4, align 8
  %55 = call i32 @CLKNODE_UNLOCK(%struct.clknode* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %40, %29, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @CLK_TOPO_ASSERT(...) #1

declare dso_local i32 @CLKNODE_XLOCK(%struct.clknode*) #1

declare dso_local i32 @CLKNODE_RECALC_FREQ(%struct.clknode*, i32*) #1

declare dso_local i32 @CLKNODE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
