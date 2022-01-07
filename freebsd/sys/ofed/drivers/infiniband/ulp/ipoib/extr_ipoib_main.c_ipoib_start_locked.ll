; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_start_locked(%struct.ifnet* %0, %struct.ipoib_dev_priv* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ipoib_dev_priv* %1, %struct.ipoib_dev_priv** %4, align 8
  %6 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %7 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %6, i32 0, i32 0
  %8 = call i32 @assert_spin_locked(i32* %7)
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 1
  %12 = call i32 @IFQ_DRV_IS_EMPTY(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ]
  br i1 %22, label %23, label %38

23:                                               ; preds = %21
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = call i32 @IFQ_DRV_DEQUEUE(i32* %25, %struct.mbuf* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %38

31:                                               ; preds = %23
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %34 = call i32 @IPOIB_MTAP(%struct.ifnet* %32, %struct.mbuf* %33)
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = call i32 @ipoib_send_one(%struct.ipoib_dev_priv* %35, %struct.mbuf* %36)
  br label %9

38:                                               ; preds = %30, %21
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @IPOIB_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @ipoib_send_one(%struct.ipoib_dev_priv*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
