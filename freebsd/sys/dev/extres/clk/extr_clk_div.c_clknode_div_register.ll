; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_div.c_clknode_div_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clk_div_def = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.clknode_div_sc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@clknode_div_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clknode_div_register(%struct.clkdom* %0, %struct.clk_div_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.clk_div_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.clknode_div_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.clk_div_def* %1, %struct.clk_div_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %10 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %9, i32 0, i32 7
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @clknode_div_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.clknode_div_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.clknode_div_sc* %17, %struct.clknode_div_sc** %7, align 8
  %18 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %19 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %22 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %24 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %27 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %29 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %32 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %34 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %39 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %41 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %44 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %46 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %49 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %51 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %56 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %58 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %61 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.clk_div_def*, %struct.clk_div_def** %5, align 8
  %63 = getelementptr inbounds %struct.clk_div_def, %struct.clk_div_def* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.clknode_div_sc*, %struct.clknode_div_sc** %7, align 8
  %66 = getelementptr inbounds %struct.clknode_div_sc, %struct.clknode_div_sc* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %68 = load %struct.clknode*, %struct.clknode** %6, align 8
  %69 = call i32 @clknode_register(%struct.clkdom* %67, %struct.clknode* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %15, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.clknode_div_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
