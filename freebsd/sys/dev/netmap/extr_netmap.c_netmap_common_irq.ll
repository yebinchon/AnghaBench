; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_common_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_common_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32 }
%struct.netmap_kring = type { i64, i32 (%struct.netmap_kring*, i32)*, i32 }

@NR_RX = common dso_local global i32 0, align 4
@NR_TX = common dso_local global i32 0, align 4
@NETMAP_RING_MASK = common dso_local global i64 0, align 8
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_RXINTR = common dso_local global i32 0, align 4
@NM_DEBUG_TXINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"received %s queue %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@NM_IRQ_PASS = common dso_local global i32 0, align 4
@NKR_NETMAP_OFF = common dso_local global i64 0, align 8
@NKR_PENDINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_common_irq(%struct.netmap_adapter* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.netmap_kring*, align 8
  %9 = alloca i32, align 4
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @NR_RX, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @NR_TX, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @NETMAP_RING_MASK, align 8
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* @netmap_debug, align 4
  %22 = load i32, i32* @NM_DEBUG_RXINTR, align 4
  %23 = load i32, i32* @NM_DEBUG_TXINTR, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @nm_prlim(i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %31, i64 %32)
  br label %34

34:                                               ; preds = %27, %16
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @nma_get_nrings(%struct.netmap_adapter* %36, i32 %37)
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @NM_IRQ_PASS, align 4
  store i32 %41, i32* %4, align 4
  br label %73

42:                                               ; preds = %34
  %43 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.netmap_kring** @NMR(%struct.netmap_adapter* %43, i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %45, i64 %46
  %48 = load %struct.netmap_kring*, %struct.netmap_kring** %47, align 8
  store %struct.netmap_kring* %48, %struct.netmap_kring** %8, align 8
  %49 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %50 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @NM_IRQ_PASS, align 4
  store i32 %55, i32* %4, align 4
  br label %73

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NR_RX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* @NKR_PENDINTR, align 4
  %62 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %63 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64*, i64** %7, align 8
  store i64 1, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %56
  %68 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %69 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %68, i32 0, i32 1
  %70 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %69, align 8
  %71 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %72 = call i32 %70(%struct.netmap_kring* %71, i32 0)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %54, %40
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @nm_prlim(i32, i8*, i8*, i64) #1

declare dso_local i64 @nma_get_nrings(%struct.netmap_adapter*, i32) #1

declare dso_local %struct.netmap_kring** @NMR(%struct.netmap_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
