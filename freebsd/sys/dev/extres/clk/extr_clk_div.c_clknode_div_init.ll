; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.clknode_div_sc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CLK_DIV_ZERO_BASED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: divider is zero!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @clknode_div_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_div_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode_div_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.clknode*, %struct.clknode** %4, align 8
  %12 = call %struct.clknode_div_sc* @clknode_get_softc(%struct.clknode* %11)
  store %struct.clknode_div_sc* %12, %struct.clknode_div_sc** %7, align 8
  %13 = load %struct.clknode*, %struct.clknode** %4, align 8
  %14 = call i32 @DEVICE_LOCK(%struct.clknode* %13)
  %15 = load %struct.clknode*, %struct.clknode** %4, align 8
  %16 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %17 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RD4(%struct.clknode* %15, i32 %18, i32* %6)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.clknode*, %struct.clknode** %4, align 8
  %21 = call i32 @DEVICE_UNLOCK(%struct.clknode* %20)
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %82

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %29 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %27, %30
  %32 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %33 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %37 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CLK_DIV_ZERO_BASED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %26
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %48 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  %51 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %52 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %57 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %55, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %63 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %65 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %66 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clknode_div_table_get_divider(%struct.clknode_div_sc* %64, i32 %67)
  %69 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %70 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %72 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %45
  %76 = load %struct.clknode*, %struct.clknode** %4, align 8
  %77 = call i32 @clknode_get_name(%struct.clknode* %76)
  %78 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %45
  %80 = load %struct.clknode*, %struct.clknode** %4, align 8
  %81 = call i32 @clknode_init_parent_idx(%struct.clknode* %80, i32 0)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %24
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.clknode_div_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @RD4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @clknode_div_table_get_divider(%struct.clknode_div_sc*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @clknode_get_name(%struct.clknode*) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
