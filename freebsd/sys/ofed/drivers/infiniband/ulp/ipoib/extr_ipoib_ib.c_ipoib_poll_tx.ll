; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_poll_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, %struct.ib_wc*, i32 }
%struct.ib_wc = type { i32 }

@MAX_SEND_CQE = common dso_local global i32 0, align 4
@IPOIB_OP_CM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_poll_tx(%struct.ipoib_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MAX_SEND_CQE, align 4
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 1
  %14 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %15 = call i32 @ib_poll_cq(i32 %10, i32 %11, %struct.ib_wc* %14)
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 1
  %23 = load %struct.ib_wc*, %struct.ib_wc** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i64 %25
  store %struct.ib_wc* %26, %struct.ib_wc** %7, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IPOIB_OP_CM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %35 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %36 = call i32 @ipoib_cm_handle_tx_wc(%struct.ipoib_dev_priv* %34, %struct.ib_wc* %35)
  br label %41

37:                                               ; preds = %20
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %39 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %40 = call i32 @ipoib_ib_handle_tx_wc(%struct.ipoib_dev_priv* %38, %struct.ib_wc* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %56 = call i32 @ipoib_start_locked(i32 %54, %struct.ipoib_dev_priv* %55)
  br label %57

57:                                               ; preds = %51, %48, %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MAX_SEND_CQE, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #1

declare dso_local i32 @ipoib_cm_handle_tx_wc(%struct.ipoib_dev_priv*, %struct.ib_wc*) #1

declare dso_local i32 @ipoib_ib_handle_tx_wc(%struct.ipoib_dev_priv*, %struct.ib_wc*) #1

declare dso_local i32 @ipoib_start_locked(i32, %struct.ipoib_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
