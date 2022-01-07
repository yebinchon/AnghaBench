; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_fixed.c_clknode_fixed_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_fixed.c_clknode_fixed_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.clknode_fixed_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @clknode_fixed_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_fixed_recalc(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.clknode_fixed_sc*, align 8
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.clknode*, %struct.clknode** %3, align 8
  %7 = call %struct.clknode_fixed_sc* @clknode_get_softc(%struct.clknode* %6)
  store %struct.clknode_fixed_sc* %7, %struct.clknode_fixed_sc** %5, align 8
  %8 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %5, align 8
  %9 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %5, align 8
  %14 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %5, align 8
  %21 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  %24 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %5, align 8
  %25 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %34

29:                                               ; preds = %12, %2
  %30 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %5, align 8
  %31 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %17
  ret i32 0
}

declare dso_local %struct.clknode_fixed_sc* @clknode_get_softc(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
