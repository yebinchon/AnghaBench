; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, %struct.ib_wc* }
%struct.ib_wc = type { i32 }

@IPOIB_NUM_WC = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ipoib_poll: Bad wr_id 0x%jX\0A\00", align 1
@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*)* @ipoib_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_poll(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_wc*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  br label %6

6:                                                ; preds = %78, %1
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  br label %10

10:                                               ; preds = %65, %6
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IPOIB_NUM_WC, align 4
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 2
  %17 = load %struct.ib_wc*, %struct.ib_wc** %16, align 8
  %18 = call i32 @ib_poll_cq(i32 %13, i32 %14, %struct.ib_wc* %17)
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %57, %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 2
  %26 = load %struct.ib_wc*, %struct.ib_wc** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %26, i64 %28
  store %struct.ib_wc* %29, %struct.ib_wc** %5, align 8
  %30 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IPOIB_OP_RECV, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %38 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %23
  %42 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IPOIB_OP_CM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %50 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %51 = call i32 @ipoib_cm_handle_rx_wc(%struct.ipoib_dev_priv* %49, %struct.ib_wc* %50)
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %54 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %55 = call i32 @ipoib_ib_handle_rx_wc(%struct.ipoib_dev_priv* %53, %struct.ib_wc* %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @IPOIB_NUM_WC, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %66

65:                                               ; preds = %60
  br label %10

66:                                               ; preds = %64
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %74 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %75 = or i32 %73, %74
  %76 = call i64 @ib_req_notify_cq(i32 %72, i32 %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %6

79:                                               ; preds = %66
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ipoib_cm_handle_rx_wc(%struct.ipoib_dev_priv*, %struct.ib_wc*) #1

declare dso_local i32 @ipoib_ib_handle_rx_wc(%struct.ipoib_dev_priv*, %struct.ib_wc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ib_req_notify_cq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
