; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_drain_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_drain_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@IPOIB_NUM_WC = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ipoib_drain_cq:  Bad wrid 0x%jX\0A\00", align 1
@IPOIB_OP_CM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_drain_cq(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %5 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  br label %8

8:                                                ; preds = %98, %1
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IPOIB_NUM_WC, align 4
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @ib_poll_cq(i32 %11, i32 %12, %struct.TYPE_4__* %15)
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %94, %8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_WC_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %33, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %21
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IPOIB_OP_RECV, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %53, %41
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IPOIB_OP_CM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %63
  %76 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = call i32 @ipoib_cm_handle_rx_wc(%struct.ipoib_dev_priv* %76, %struct.TYPE_4__* %82)
  br label %93

84:                                               ; preds = %63
  %85 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %86 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %87 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = call i32 @ipoib_ib_handle_rx_wc(%struct.ipoib_dev_priv* %85, %struct.TYPE_4__* %91)
  br label %93

93:                                               ; preds = %84, %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %17

97:                                               ; preds = %17
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @IPOIB_NUM_WC, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %8, label %102

102:                                              ; preds = %98
  %103 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %104 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %107 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %106, i32 0, i32 0
  %108 = call i32 @spin_lock(i32* %107)
  br label %109

109:                                              ; preds = %113, %102
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %111 = call i64 @ipoib_poll_tx(%struct.ipoib_dev_priv* %110, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %109

114:                                              ; preds = %109
  %115 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %116 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ipoib_cm_handle_rx_wc(%struct.ipoib_dev_priv*, %struct.TYPE_4__*) #1

declare dso_local i32 @ipoib_ib_handle_rx_wc(%struct.ipoib_dev_priv*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ipoib_poll_tx(%struct.ipoib_dev_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
