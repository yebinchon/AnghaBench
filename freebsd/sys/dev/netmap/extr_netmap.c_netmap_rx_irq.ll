; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_rx_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.netmap_adapter = type { i32 }

@NM_IRQ_PASS = common dso_local global i32 0, align 4
@NAF_SKIP_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"use regular interrupt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_rx_irq(%struct.ifnet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.netmap_adapter*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %10 = call %struct.netmap_adapter* @NA(%struct.ifnet* %9)
  store %struct.netmap_adapter* %10, %struct.netmap_adapter** %8, align 8
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %12 = call i32 @nm_netmap_on(%struct.netmap_adapter* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @NM_IRQ_PASS, align 4
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAF_SKIP_INTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @nm_prdis(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @NM_IRQ_PASS, align 4
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @netmap_common_irq(%struct.netmap_adapter* %27, i32 %28, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %23, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.netmap_adapter* @NA(%struct.ifnet*) #1

declare dso_local i32 @nm_netmap_on(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prdis(i8*) #1

declare dso_local i32 @netmap_common_irq(%struct.netmap_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
