; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_fixed.c_clknode_fixed_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_fixed.c_clknode_fixed_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.clknode_fixed_sc = type { i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32, i32*, i32, i32*)* @clknode_fixed_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_fixed_set_freq(%struct.clknode* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.clknode_fixed_sc*, align 8
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.clknode*, %struct.clknode** %7, align 8
  %14 = call %struct.clknode_fixed_sc* @clknode_get_softc(%struct.clknode* %13)
  store %struct.clknode_fixed_sc* %14, %struct.clknode_fixed_sc** %12, align 8
  %15 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %12, align 8
  %16 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %12, align 8
  %21 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19, %5
  %25 = load i32*, i32** %11, align 8
  store i32 1, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %12, align 8
  %29 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ERANGE, align 4
  store i32 %33, i32* %6, align 4
  br label %48

34:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %48

35:                                               ; preds = %19
  %36 = load i32*, i32** %11, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %12, align 8
  %40 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  %43 = load %struct.clknode_fixed_sc*, %struct.clknode_fixed_sc** %12, align 8
  %44 = getelementptr inbounds %struct.clknode_fixed_sc, %struct.clknode_fixed_sc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %35, %34, %32
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.clknode_fixed_sc* @clknode_get_softc(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
