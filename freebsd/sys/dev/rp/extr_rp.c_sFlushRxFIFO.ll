; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sFlushRxFIFO.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sFlushRxFIFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@_INT_CHAN = common dso_local global i32 0, align 4
@_CMD_REG = common dso_local global i32 0, align 4
@RESRXFCNT = common dso_local global i32 0, align 4
@_INDX_ADDR = common dso_local global i32 0, align 4
@_INDX_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sFlushRxFIFO(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i64 @sGetRxCnt(%struct.TYPE_11__* %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %73

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 50
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = call i32 @sDisRxFIFO(%struct.TYPE_11__* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %29, %18
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = load i32, i32* @_INT_CHAN, align 4
  %28 = call i32 @rp_readch1(%struct.TYPE_11__* %26, i32 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %22

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 @sGetChanStatus(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = call i64 @sGetChanNum(%struct.TYPE_11__* %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = load i32, i32* @_CMD_REG, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RESRXFCNT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @rp_writech1(%struct.TYPE_11__* %39, i32 %40, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = load i32, i32* @_CMD_REG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @rp_writech1(%struct.TYPE_11__* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load i32, i32* @_INDX_ADDR, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @rp_writech2(%struct.TYPE_11__* %49, i32 %50, i64 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = load i32, i32* @_INDX_DATA, align 4
  %57 = call i32 @rp_writech2(%struct.TYPE_11__* %55, i32 %56, i64 0)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = load i32, i32* @_INDX_ADDR, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 2
  %64 = call i32 @rp_writech2(%struct.TYPE_11__* %58, i32 %59, i64 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = load i32, i32* @_INDX_DATA, align 4
  %67 = call i32 @rp_writech2(%struct.TYPE_11__* %65, i32 %66, i64 0)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %33
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = call i32 @sEnRxFIFO(%struct.TYPE_11__* %71)
  br label %73

73:                                               ; preds = %9, %70, %33
  ret void
}

declare dso_local i64 @sGetRxCnt(%struct.TYPE_11__*) #1

declare dso_local i32 @sDisRxFIFO(%struct.TYPE_11__*) #1

declare dso_local i32 @rp_readch1(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sGetChanStatus(%struct.TYPE_11__*) #1

declare dso_local i64 @sGetChanNum(%struct.TYPE_11__*) #1

declare dso_local i32 @rp_writech1(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rp_writech2(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @sEnRxFIFO(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
