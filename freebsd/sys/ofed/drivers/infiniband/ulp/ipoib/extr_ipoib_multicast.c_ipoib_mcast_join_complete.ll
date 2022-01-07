; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { i32, %struct.ipoib_mcast* }
%struct.ipoib_mcast = type { i32, i32, %struct.TYPE_4__, i32, %struct.ipoib_dev_priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ipoib_mcast* }

@.str = private unnamed_addr constant [38 x i8] c"join completion for %16D (status %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@ENETRESET = common dso_local global i32 0, align 4
@mcast_mutex = common dso_local global i32 0, align 4
@IPOIB_MCAST_RUN = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"multicast join failed for %16D, status %d\0A\00", align 1
@IPOIB_MAX_BACKOFF_SECONDS = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @ipoib_mcast_join_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_join_complete(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_multicast*, align 8
  %6 = alloca %struct.ipoib_mcast*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %5, align 8
  %8 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %9 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %8, i32 0, i32 1
  %10 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  store %struct.ipoib_mcast* %10, %struct.ipoib_mcast** %6, align 8
  %11 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %12 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %11, i32 0, i32 4
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %12, align 8
  store %struct.ipoib_dev_priv* %13, %struct.ipoib_dev_priv** %7, align 8
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %15 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %16 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENETRESET, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %32 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %33 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %32, i32 0, i32 0
  %34 = call i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast* %31, i32* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %35
  %39 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %40 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = call i32 @mutex_lock(i32* @mcast_mutex)
  %42 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 2
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* @ipoib_workqueue, align 4
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 1
  %51 = call i32 @queue_delayed_work(i32 %48, i32* %50, i32 0)
  br label %52

52:                                               ; preds = %47, %38
  %53 = call i32 @mutex_unlock(i32* @mcast_mutex)
  %54 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 4
  %57 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %56, align 8
  %58 = icmp eq %struct.ipoib_mcast* %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @ipoib_workqueue, align 4
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 3
  %63 = call i32 @queue_work(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %144

65:                                               ; preds = %35
  %66 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %67 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = icmp slt i32 %68, 20
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %71
  %82 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %83 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %84 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %99

90:                                               ; preds = %76
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %92 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %93 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %90, %81
  br label %100

100:                                              ; preds = %99, %65
  %101 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %102 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %103, 2
  store i32 %104, i32* %102, align 8
  %105 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %106 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %112 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %113 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %100
  %115 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %116 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %117 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %116, i32 0, i32 1
  %118 = call i32 @test_and_clear_bit(i32 %115, i32* %117)
  store i32 %118, i32* %4, align 4
  %119 = call i32 @mutex_lock(i32* @mcast_mutex)
  %120 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %121 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %120, i32 0, i32 0
  %122 = call i32 @spin_lock_irq(i32* %121)
  %123 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %124 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %125 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %124, i32 0, i32 2
  %126 = call i64 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %114
  %129 = load i32, i32* @ipoib_workqueue, align 4
  %130 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %131 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %130, i32 0, i32 1
  %132 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %133 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @HZ, align 4
  %136 = mul nsw i32 %134, %135
  %137 = call i32 @queue_delayed_work(i32 %129, i32* %131, i32 %136)
  br label %138

138:                                              ; preds = %128, %114
  %139 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %140 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock_irq(i32* %140)
  %142 = call i32 @mutex_unlock(i32* @mcast_mutex)
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %64, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i8*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
