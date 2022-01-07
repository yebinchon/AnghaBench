; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_pernet_idr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_pernet_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.vnet = type { i32 }
%struct.cma_pernet = type { %struct.idr, %struct.idr, %struct.idr, %struct.idr, %struct.idr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idr* (%struct.vnet*, i32)* @cma_pernet_idr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idr* @cma_pernet_idr(%struct.vnet* %0, i32 %1) #0 {
  %3 = alloca %struct.idr*, align 8
  %4 = alloca %struct.vnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_pernet*, align 8
  store %struct.vnet* %0, %struct.vnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vnet*, %struct.vnet** %4, align 8
  %8 = call %struct.cma_pernet* @cma_pernet_ptr(%struct.vnet* %7)
  store %struct.cma_pernet* %8, %struct.cma_pernet** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %25 [
    i32 129, label %10
    i32 128, label %13
    i32 131, label %16
    i32 132, label %19
    i32 130, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %12 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %11, i32 0, i32 4
  store %struct.idr* %12, %struct.idr** %3, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %15 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %14, i32 0, i32 3
  store %struct.idr* %15, %struct.idr** %3, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %18 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %17, i32 0, i32 2
  store %struct.idr* %18, %struct.idr** %3, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %21 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %20, i32 0, i32 1
  store %struct.idr* %21, %struct.idr** %3, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %24 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %23, i32 0, i32 0
  store %struct.idr* %24, %struct.idr** %3, align 8
  br label %26

25:                                               ; preds = %2
  store %struct.idr* null, %struct.idr** %3, align 8
  br label %26

26:                                               ; preds = %25, %22, %19, %16, %13, %10
  %27 = load %struct.idr*, %struct.idr** %3, align 8
  ret %struct.idr* %27
}

declare dso_local %struct.cma_pernet* @cma_pernet_ptr(%struct.vnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
