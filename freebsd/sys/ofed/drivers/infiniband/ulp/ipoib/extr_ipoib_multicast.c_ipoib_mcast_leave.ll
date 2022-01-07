; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_mcast = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"leaving MGID %16D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ib_detach_mcast failed (result = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, %struct.ipoib_mcast*)* @ipoib_mcast_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_leave(%struct.ipoib_dev_priv* %0, %struct.ipoib_mcast* %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_mcast*, align 8
  %5 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %7 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %8 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %7, i32 0, i32 1
  %9 = call i64 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %13 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ib_sa_free_multicast(i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @IPOIB_MCAST_FLAG_ATTACHED, align 4
  %18 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %19 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %18, i32 0, i32 1
  %20 = call i64 @test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %24 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %25 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %34 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %37 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be16_to_cpu(i32 %39)
  %41 = call i32 @ib_detach_mcast(i32 %32, %struct.TYPE_4__* %35, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %22
  br label %49

49:                                               ; preds = %48, %16
  ret i32 0
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ib_sa_free_multicast(i32) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32, i8*) #1

declare dso_local i32 @ib_detach_mcast(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
