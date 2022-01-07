; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AE_FLAG_LINK = common dso_local global i32 0, align 4
@AE_IMR_REG = common dso_local global i32 0, align 4
@AE_ISR_REG = common dso_local global i32 0, align 4
@AE_DMAREAD_REG = common dso_local global i32 0, align 4
@AE_DMAREAD_EN = common dso_local global i32 0, align 4
@AE_DMAWRITE_REG = common dso_local global i32 0, align 4
@AE_DMAWRITE_EN = common dso_local global i32 0, align 4
@AE_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@AE_IDLE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not enter idle state in stop.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ae_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae_stop(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @AE_LOCK_ASSERT(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @AE_FLAG_LINK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = call i32 @callout_stop(i32* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = load i32, i32* @AE_IMR_REG, align 4
  %31 = call i32 @AE_WRITE_4(%struct.TYPE_9__* %29, i32 %30, i32 0)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = load i32, i32* @AE_ISR_REG, align 4
  %34 = call i32 @AE_WRITE_4(%struct.TYPE_9__* %32, i32 %33, i32 -1)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = call i32 @ae_stop_txmac(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = call i32 @ae_stop_rxmac(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = load i32, i32* @AE_DMAREAD_REG, align 4
  %41 = load i32, i32* @AE_DMAREAD_EN, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @AE_WRITE_1(%struct.TYPE_9__* %39, i32 %40, i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = load i32, i32* @AE_DMAWRITE_REG, align 4
  %46 = load i32, i32* @AE_DMAWRITE_EN, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @AE_WRITE_1(%struct.TYPE_9__* %44, i32 %45, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %61, %1
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @AE_IDLE_TIMEOUT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = load i32, i32* @AE_IDLE_REG, align 4
  %56 = call i64 @AE_READ_4(%struct.TYPE_9__* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %64

59:                                               ; preds = %53
  %60 = call i32 @DELAY(i32 100)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %49

64:                                               ; preds = %58, %49
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @AE_IDLE_TIMEOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @AE_LOCK_ASSERT(%struct.TYPE_9__*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @AE_WRITE_4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ae_stop_txmac(%struct.TYPE_9__*) #1

declare dso_local i32 @ae_stop_rxmac(%struct.TYPE_9__*) #1

declare dso_local i32 @AE_WRITE_1(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @AE_READ_4(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
