; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_mux.c_clknode_mux_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk_mux.c_clknode_mux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.clknode_mux_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @clknode_mux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clknode_mux_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode_mux_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clknode*, %struct.clknode** %4, align 8
  %10 = call %struct.clknode_mux_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.clknode_mux_sc* %10, %struct.clknode_mux_sc** %7, align 8
  %11 = load %struct.clknode*, %struct.clknode** %4, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.clknode* %11)
  %13 = load %struct.clknode*, %struct.clknode** %4, align 8
  %14 = load %struct.clknode_mux_sc*, %struct.clknode_mux_sc** %7, align 8
  %15 = getelementptr inbounds %struct.clknode_mux_sc, %struct.clknode_mux_sc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clknode_mux_sc*, %struct.clknode_mux_sc** %7, align 8
  %18 = getelementptr inbounds %struct.clknode_mux_sc, %struct.clknode_mux_sc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clknode_mux_sc*, %struct.clknode_mux_sc** %7, align 8
  %21 = getelementptr inbounds %struct.clknode_mux_sc, %struct.clknode_mux_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.clknode_mux_sc*, %struct.clknode_mux_sc** %7, align 8
  %26 = getelementptr inbounds %struct.clknode_mux_sc, %struct.clknode_mux_sc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load %struct.clknode_mux_sc*, %struct.clknode_mux_sc** %7, align 8
  %30 = getelementptr inbounds %struct.clknode_mux_sc, %struct.clknode_mux_sc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  %33 = call i32 @MD4(%struct.clknode* %13, i32 %16, i32 %23, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.clknode*, %struct.clknode** %4, align 8
  %38 = call i32 @DEVICE_UNLOCK(%struct.clknode* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.clknode*, %struct.clknode** %4, align 8
  %42 = load %struct.clknode_mux_sc*, %struct.clknode_mux_sc** %7, align 8
  %43 = getelementptr inbounds %struct.clknode_mux_sc, %struct.clknode_mux_sc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @RD4(%struct.clknode* %41, i32 %44, i32* %6)
  %46 = load %struct.clknode*, %struct.clknode** %4, align 8
  %47 = call i32 @DEVICE_UNLOCK(%struct.clknode* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %36
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.clknode_mux_sc* @clknode_get_softc(%struct.clknode*) #1

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
