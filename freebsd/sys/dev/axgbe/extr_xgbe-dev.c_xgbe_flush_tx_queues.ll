; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_flush_tx_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_flush_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAC_VR = common dso_local global i32 0, align 4
@SNPSVER = common dso_local global i32 0, align 4
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@FTQ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_flush_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_flush_tx_queues(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAC_VR, align 4
  %11 = load i32, i32* @SNPSVER, align 4
  %12 = call i32 @XGMAC_GET_BITS(i32 %9, i32 %10, i32 %11)
  %13 = icmp slt i32 %12, 33
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MTL_Q_TQOMR, align 4
  %26 = load i32, i32* @FTQ, align 4
  %27 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %23, i32 %24, i32 %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %16

31:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  store i32 2000, i32* %5, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MTL_Q_TQOMR, align 4
  %47 = load i32, i32* @FTQ, align 4
  %48 = call i64 @XGMAC_MTL_IOREAD_BITS(%struct.xgbe_prv_data* %44, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi i1 [ false, %39 ], [ %49, %43 ]
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = call i32 @DELAY(i32 500)
  br label %39

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %32

64:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %57, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i64 @XGMAC_MTL_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
