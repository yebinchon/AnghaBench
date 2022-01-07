; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_mq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_mq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.netfront_info* }
%struct.netfront_info = type { i32, %struct.netfront_txq* }
%struct.netfront_txq = type { i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"called with 0 available queues\00", align 1
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@curcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @xn_txq_mq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xn_txq_mq_start(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.netfront_info*, align 8
  %7 = alloca %struct.netfront_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load %struct.netfront_info*, %struct.netfront_info** %12, align 8
  store %struct.netfront_info* %13, %struct.netfront_info** %6, align 8
  %14 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %15 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %18 = call i32 @netfront_carrier_ok(%struct.netfront_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOBUFS, align 4
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %27)
  %29 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %22
  %39 = load i32, i32* @curcpu, align 4
  %40 = load i32, i32* %9, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %44 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %43, i32 0, i32 1
  %45 = load %struct.netfront_txq*, %struct.netfront_txq** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %45, i64 %47
  store %struct.netfront_txq* %48, %struct.netfront_txq** %7, align 8
  %49 = load %struct.netfront_txq*, %struct.netfront_txq** %7, align 8
  %50 = call i64 @XN_TX_TRYLOCK(%struct.netfront_txq* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.netfront_txq*, %struct.netfront_txq** %7, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = call i32 @xn_txq_mq_start_locked(%struct.netfront_txq* %53, %struct.mbuf* %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.netfront_txq*, %struct.netfront_txq** %7, align 8
  %57 = call i32 @XN_TX_UNLOCK(%struct.netfront_txq* %56)
  br label %71

58:                                               ; preds = %42
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load %struct.netfront_txq*, %struct.netfront_txq** %7, align 8
  %61 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = call i32 @drbr_enqueue(%struct.ifnet* %59, i32 %62, %struct.mbuf* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.netfront_txq*, %struct.netfront_txq** %7, align 8
  %66 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.netfront_txq*, %struct.netfront_txq** %7, align 8
  %69 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %68, i32 0, i32 0
  %70 = call i32 @taskqueue_enqueue(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %58, %52
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @netfront_carrier_ok(%struct.netfront_info*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i64 @XN_TX_TRYLOCK(%struct.netfront_txq*) #1

declare dso_local i32 @xn_txq_mq_start_locked(%struct.netfront_txq*, %struct.mbuf*) #1

declare dso_local i32 @XN_TX_UNLOCK(%struct.netfront_txq*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
