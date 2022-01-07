; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_gate.c_clknode_gate_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_gate.c_clknode_gate_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.clknode_gate_sc = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @clknode_gate_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_gate_set_gate(%struct.clknode* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %13 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.clknode*, %struct.clknode** %4, align 8
  %15 = call i32 @DEVICE_LOCK(%struct.clknode* %14)
  %16 = load %struct.clknode*, %struct.clknode** %4, align 8
  %17 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %18 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %21 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %24 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %28 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %33 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %37 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  %41 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %42 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %40, %43
  %45 = call i32 @MD4(%struct.clknode* %16, i32 %19, i32 %26, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.clknode*, %struct.clknode** %4, align 8
  %50 = call i32 @DEVICE_UNLOCK(%struct.clknode* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %60

52:                                               ; preds = %39
  %53 = load %struct.clknode*, %struct.clknode** %4, align 8
  %54 = load %struct.clknode_gate_sc*, %struct.clknode_gate_sc** %7, align 8
  %55 = getelementptr inbounds %struct.clknode_gate_sc, %struct.clknode_gate_sc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RD4(%struct.clknode* %53, i32 %56, i32* %6)
  %58 = load %struct.clknode*, %struct.clknode** %4, align 8
  %59 = call i32 @DEVICE_UNLOCK(%struct.clknode* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %52, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.clknode_gate_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @MD4(%struct.clknode*, i32, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @RD4(%struct.clknode*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
