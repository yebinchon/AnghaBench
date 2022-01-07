; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_sendonly_join_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_sendonly_join_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { i32, %struct.ipoib_mcast* }
%struct.ipoib_mcast = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.ipoib_dev_priv* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@ENETRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"multicast join failed for %16D, status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @ipoib_mcast_sendonly_join_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_sendonly_join_complete(i32 %0, %struct.ib_sa_multicast* %1) #0 {
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
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENETRESET, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %24 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %25 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %24, i32 0, i32 0
  %26 = call i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast* %23, i32* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %32 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = icmp slt i32 %33, 20
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %38 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %39 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %50 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %51 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @if_inc_counter(i32 %48, i32 %49, i32 %53)
  %55 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %56 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %55, i32 0, i32 1
  %57 = call i32 @_IF_DRAIN(%struct.TYPE_6__* %56)
  %58 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %59 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %60 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %59, i32 0, i32 0
  %61 = call i32 @test_and_clear_bit(i32 %58, i32* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %45, %27
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast*, i32*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32, i8*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @_IF_DRAIN(%struct.TYPE_6__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
