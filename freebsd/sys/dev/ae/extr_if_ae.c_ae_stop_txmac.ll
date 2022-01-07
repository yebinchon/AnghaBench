; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_stop_txmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_stop_txmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@AE_MAC_REG = common dso_local global i32 0, align 4
@AE_MAC_TX_EN = common dso_local global i32 0, align 4
@AE_DMAREAD_REG = common dso_local global i32 0, align 4
@AE_DMAREAD_EN = common dso_local global i64 0, align 8
@AE_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@AE_IDLE_REG = common dso_local global i32 0, align 4
@AE_IDLE_TXMAC = common dso_local global i32 0, align 4
@AE_IDLE_DMAREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timed out while stopping Tx MAC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ae_stop_txmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae_stop_txmac(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @AE_LOCK_ASSERT(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = load i32, i32* @AE_MAC_REG, align 4
  %9 = call i32 @AE_READ_4(%struct.TYPE_8__* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AE_MAC_TX_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @AE_MAC_TX_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32, i32* @AE_MAC_REG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @AE_WRITE_4(%struct.TYPE_8__* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = load i32, i32* @AE_DMAREAD_REG, align 4
  %26 = call i64 @AE_READ_1(%struct.TYPE_8__* %24, i32 %25)
  %27 = load i64, i64* @AE_DMAREAD_EN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* @AE_DMAREAD_REG, align 4
  %32 = call i32 @AE_WRITE_1(%struct.TYPE_8__* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %29, %23
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @AE_IDLE_TIMEOUT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load i32, i32* @AE_IDLE_REG, align 4
  %41 = call i32 @AE_READ_4(%struct.TYPE_8__* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @AE_IDLE_TXMAC, align 4
  %44 = load i32, i32* @AE_IDLE_DMAREAD, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %54

49:                                               ; preds = %38
  %50 = call i32 @DELAY(i32 100)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %34

54:                                               ; preds = %48, %34
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @AE_IDLE_TIMEOUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32 @AE_LOCK_ASSERT(%struct.TYPE_8__*) #1

declare dso_local i32 @AE_READ_4(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @AE_WRITE_4(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @AE_READ_1(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @AE_WRITE_1(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
