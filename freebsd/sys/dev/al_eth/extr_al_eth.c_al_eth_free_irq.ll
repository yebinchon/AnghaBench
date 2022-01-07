; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_free_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, i32*, i32, i32, %struct.al_eth_irq*, %struct.TYPE_2__* }
%struct.al_eth_irq = type { i32, i32* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"release resource irq: %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"dev has no parent while releasing res for irq: %d\0A\00", align 1
@AL_ETH_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@M_IFAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_free_irq(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.al_eth_irq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %6 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %7 = call i32 @__al_eth_free_irq(%struct.al_eth_adapter* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %58, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %8
  %15 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %15, i32 0, i32 5
  %17 = load %struct.al_eth_irq*, %struct.al_eth_irq** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %17, i64 %19
  store %struct.al_eth_irq* %20, %struct.al_eth_irq** %3, align 8
  %21 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %22 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %58

26:                                               ; preds = %14
  %27 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %31 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf_dbg(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %39 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %42 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 %40, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %46 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %26
  %50 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.al_eth_irq*, %struct.al_eth_irq** %3, align 8
  %54 = getelementptr inbounds %struct.al_eth_irq, %struct.al_eth_irq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %49, %26
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pci_release_msi(i32 %64)
  %66 = load i32, i32* @AL_ETH_FLAG_MSIX_ENABLED, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @M_IFAL, align 4
  %78 = call i32 @free(i32* %76, i32 %77)
  %79 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  ret void
}

declare dso_local i32 @__al_eth_free_irq(%struct.al_eth_adapter*) #1

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
