; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"downing ib_dev\0A\00", align 1
@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@pkey_mutex = common dso_local global i32 0, align 4
@IPOIB_PKEY_STOP = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_down(%struct.ipoib_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %6 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LINK_STATE_DOWN, align 4
  %15 = call i32 @if_link_state_change(i32 %13, i32 %14)
  %16 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %2
  %22 = call i32 @mutex_lock(i32* @pkey_mutex)
  %23 = load i32, i32* @IPOIB_PKEY_STOP, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 0
  %29 = call i32 @cancel_delayed_work(i32* %28)
  %30 = call i32 @mutex_unlock(i32* @pkey_mutex)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @ipoib_workqueue, align 4
  %35 = call i32 @flush_workqueue(i32 %34)
  br label %36

36:                                               ; preds = %33, %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ipoib_mcast_stop_thread(%struct.ipoib_dev_priv* %38, i32 %39)
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %42 = call i32 @ipoib_mcast_dev_flush(%struct.ipoib_dev_priv* %41)
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %44 = call i32 @ipoib_flush_paths(%struct.ipoib_dev_priv* %43)
  ret i32 0
}

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ipoib_mcast_stop_thread(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @ipoib_mcast_dev_flush(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ipoib_flush_paths(%struct.ipoib_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
