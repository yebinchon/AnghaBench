; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sFlushTxFIFO.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sFlushTxFIFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TX_ENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@_INT_CHAN = common dso_local global i32 0, align 4
@_CMD_REG = common dso_local global i32 0, align 4
@RESTXFCNT = common dso_local global i32 0, align 4
@_INDX_ADDR = common dso_local global i32 0, align 4
@_INDX_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sFlushTxFIFO(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call i64 @sGetTxCnt(%struct.TYPE_12__* %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TX_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = call i32 @sDisTransmit(%struct.TYPE_12__* %22)
  br label %24

24:                                               ; preds = %20, %10
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = call i32 @sStopRxProcessor(%struct.TYPE_12__* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %34, %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 20
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = load i32, i32* @_INT_CHAN, align 4
  %33 = call i32 @rp_readch1(%struct.TYPE_12__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %27

37:                                               ; preds = %27
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = call i64 @sGetChanNum(%struct.TYPE_12__* %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = load i32, i32* @_CMD_REG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RESTXFCNT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @rp_writech1(%struct.TYPE_12__* %41, i32 %42, i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = load i32, i32* @_CMD_REG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rp_writech1(%struct.TYPE_12__* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = load i32, i32* @_INDX_ADDR, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rp_writech2(%struct.TYPE_12__* %51, i32 %52, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = load i32, i32* @_INDX_DATA, align 4
  %59 = call i32 @rp_writech2(%struct.TYPE_12__* %57, i32 %58, i32 0)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %37
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = call i32 @sEnTransmit(%struct.TYPE_12__* %63)
  br label %65

65:                                               ; preds = %62, %37
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = call i32 @sStartRxProcessor(%struct.TYPE_12__* %66)
  br label %68

68:                                               ; preds = %65, %9
  ret void
}

declare dso_local i64 @sGetTxCnt(%struct.TYPE_12__*) #1

declare dso_local i32 @sDisTransmit(%struct.TYPE_12__*) #1

declare dso_local i32 @sStopRxProcessor(%struct.TYPE_12__*) #1

declare dso_local i32 @rp_readch1(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @sGetChanNum(%struct.TYPE_12__*) #1

declare dso_local i32 @rp_writech1(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @rp_writech2(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @sEnTransmit(%struct.TYPE_12__*) #1

declare dso_local i32 @sStartRxProcessor(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
