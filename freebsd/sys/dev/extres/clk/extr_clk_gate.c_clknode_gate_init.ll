; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_gate.c_clknode_gate_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_gate.c_clknode_gate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.clknode_gate_sc = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @clknode_gate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_gate_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode_gate_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clknode*, %struct.clknode** %4, align 8
  %10 = call %struct.clknode_gate_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.clknode_gate_sc* %10, %struct.clknode_gate_sc** %7, align 8
  %11 = load %struct.clknode*, %struct.clknode** %4, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.clknode* %11)
  %13 = load %struct.clknode*, %struct.clknode** %4, align 8
  %14 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %15 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RD4(%struct.clknode* %13, i32 %16, i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.clknode*, %struct.clknode** %4, align 8
  %19 = call i32 @DEVICE_UNLOCK(%struct.clknode* %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %27 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %25, %28
  %30 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %31 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %36 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %42 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.clknode*, %struct.clknode** %4, align 8
  %44 = call i32 @clknode_init_parent_idx(%struct.clknode* %43, i32 0)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %24, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.clknode_gate_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @RD4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
