; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PKEY is not assigned.\0A\00", align 1
@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_up(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  %4 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %5 = call i32 @ipoib_pkey_dev_check_presence(%struct.ipoib_dev_priv* %4)
  %6 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %13 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %20 = call i32 @ipoib_mcast_start_thread(%struct.ipoib_dev_priv* %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ipoib_pkey_dev_check_presence(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_mcast_start_thread(%struct.ipoib_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
