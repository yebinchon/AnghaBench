; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_int_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_int_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@AE_ISR_REG = common dso_local global i32 0, align 4
@AE_ISR_DISABLE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AE_ISR_DMAR_TIMEOUT = common dso_local global i32 0, align 4
@AE_ISR_DMAW_TIMEOUT = common dso_local global i32 0, align 4
@AE_ISR_PHY_LINKDOWN = common dso_local global i32 0, align 4
@AE_ISR_TX_EVENT = common dso_local global i32 0, align 4
@AE_ISR_RX_EVENT = common dso_local global i32 0, align 4
@AE_FLAG_TXAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ae_int_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae_int_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call i32 @AE_LOCK(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load i32, i32* @AE_ISR_REG, align 4
  %17 = call i32 @AE_READ_4(%struct.TYPE_9__* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = call i32 @AE_UNLOCK(%struct.TYPE_9__* %21)
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i32, i32* @AE_ISR_REG, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AE_ISR_DISABLE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @AE_WRITE_4(%struct.TYPE_9__* %24, i32 %25, i32 %28)
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %92

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AE_ISR_DMAR_TIMEOUT, align 4
  %39 = load i32, i32* @AE_ISR_DMAW_TIMEOUT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AE_ISR_PHY_LINKDOWN, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = call i32 @ae_init_locked(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = call i32 @AE_UNLOCK(%struct.TYPE_9__* %54)
  br label %95

56:                                               ; preds = %36
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @AE_ISR_TX_EVENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = call i32 @ae_tx_intr(%struct.TYPE_9__* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @AE_ISR_RX_EVENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = call i32 @ae_rx_intr(%struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = load i32, i32* @AE_ISR_REG, align 4
  %75 = call i32 @AE_WRITE_4(%struct.TYPE_9__* %73, i32 %74, i32 0)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AE_FLAG_TXAVAIL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 1
  %85 = call i32 @IFQ_DRV_IS_EMPTY(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %89 = call i32 @ae_start_locked(%struct.ifnet* %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %23
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = call i32 @AE_UNLOCK(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %92, %45, %20
  ret void
}

declare dso_local i32 @AE_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @AE_READ_4(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AE_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @AE_WRITE_4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ae_init_locked(%struct.TYPE_9__*) #1

declare dso_local i32 @ae_tx_intr(%struct.TYPE_9__*) #1

declare dso_local i32 @ae_rx_intr(%struct.TYPE_9__*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @ae_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
