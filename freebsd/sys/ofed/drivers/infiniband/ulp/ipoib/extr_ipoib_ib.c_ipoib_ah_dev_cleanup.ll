; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ah_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ah_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"timing out; will leak address handles\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*)* @ipoib_ah_dev_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ah_dev_cleanup(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %6, i32 0, i32 0
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %13 = call i32 @__ipoib_reap_ah(%struct.ipoib_dev_priv* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add i64 %15, %16
  %18 = call i64 @time_after(i64 %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %22 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %11
  %24 = call i32 @msleep(i32 1)
  br label %5

25:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__ipoib_reap_ah(%struct.ipoib_dev_priv*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
