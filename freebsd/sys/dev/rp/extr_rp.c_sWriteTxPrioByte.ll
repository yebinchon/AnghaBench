; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sWriteTxPrioByte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sWriteTxPrioByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@_INDX_ADDR = common dso_local global i32 0, align 4
@_INDX_DATA = common dso_local global i32 0, align 4
@PRI_PEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sWriteTxPrioByte(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = call i32 @sGetTxCnt(%struct.TYPE_9__* %7)
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %52

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load i32, i32* @_INDX_ADDR, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rp_writech2(%struct.TYPE_9__* %11, i32 %12, i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i32, i32* @_INDX_DATA, align 4
  %19 = call i32 @rp_readch1(%struct.TYPE_9__* %17, i32 %18)
  %20 = load i32, i32* @PRI_PEND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %59

24:                                               ; preds = %10
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16enc(i32* %25, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load i32, i32* @_INDX_ADDR, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %36 = call i32 @le32dec(i32* %35)
  %37 = call i32 @rp_writech4(%struct.TYPE_9__* %33, i32 %34, i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16enc(i32* %38, i32 %41)
  %43 = load i32, i32* @PRI_PEND, align 4
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i32, i32* @_INDX_ADDR, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %50 = call i32 @le32dec(i32* %49)
  %51 = call i32 @rp_writech4(%struct.TYPE_9__* %47, i32 %48, i32 %50)
  br label %58

52:                                               ; preds = %2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = call i32 @sGetTxRxDataIO(%struct.TYPE_9__* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @sWriteTxByte(%struct.TYPE_9__* %53, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %24
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @sGetTxCnt(%struct.TYPE_9__*) #1

declare dso_local i32 @rp_writech2(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rp_readch1(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @rp_writech4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @sWriteTxByte(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sGetTxRxDataIO(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
