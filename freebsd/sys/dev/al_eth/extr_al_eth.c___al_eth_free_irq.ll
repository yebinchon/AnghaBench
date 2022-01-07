; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c___al_eth_free_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c___al_eth_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, %struct.al_eth_irq* }
%struct.al_eth_irq = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"tear down irq: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to tear down irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @__al_eth_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__al_eth_free_irq(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.al_eth_irq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %6
  %13 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %13, i32 0, i32 2
  %15 = load %struct.al_eth_irq*, %struct.al_eth_irq** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %15, i64 %17
  store %struct.al_eth_irq* %18, %struct.al_eth_irq** %3, align 8
  %19 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %20 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %12
  %24 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %28 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf_dbg(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %35 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %38 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bus_teardown_intr(i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %23
  %44 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %48 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %43, %23
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %54 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %6

58:                                               ; preds = %6
  ret void
}

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
