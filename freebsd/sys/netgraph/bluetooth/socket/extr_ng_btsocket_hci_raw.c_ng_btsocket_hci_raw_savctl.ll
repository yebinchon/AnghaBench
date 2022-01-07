; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_savctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_savctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.timeval = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NG_BTSOCKET_HCI_RAW_DIRECTION = common dso_local global i32 0, align 4
@M_PROTO1 = common dso_local global i32 0, align 4
@SCM_HCI_RAW_DIRECTION = common dso_local global i32 0, align 4
@SOL_HCI_RAW = common dso_local global i32 0, align 4
@SO_TIMESTAMP = common dso_local global i32 0, align 4
@SCM_TIMESTAMP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.mbuf**, %struct.mbuf*)* @ng_btsocket_hci_raw_savctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_btsocket_hci_raw_savctl(%struct.TYPE_5__* %0, %struct.mbuf** %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NG_BTSOCKET_HCI_RAW_DIRECTION, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @M_PROTO1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %7, align 4
  %28 = ptrtoint i32* %7 to i32
  %29 = load i32, i32* @SCM_HCI_RAW_DIRECTION, align 4
  %30 = load i32, i32* @SOL_HCI_RAW, align 4
  %31 = call %struct.mbuf* @sbcreatecontrol(i32 %28, i32 4, i32 %29, i32 %30)
  %32 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %31, %struct.mbuf** %32, align 8
  %33 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  %35 = icmp ne %struct.mbuf* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  store %struct.mbuf** %39, %struct.mbuf*** %5, align 8
  br label %40

40:                                               ; preds = %36, %19
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SO_TIMESTAMP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %41
  %51 = call i32 @microtime(%struct.timeval* %8)
  %52 = ptrtoint %struct.timeval* %8 to i32
  %53 = load i32, i32* @SCM_TIMESTAMP, align 4
  %54 = load i32, i32* @SOL_SOCKET, align 4
  %55 = call %struct.mbuf* @sbcreatecontrol(i32 %52, i32 4, i32 %53, i32 %54)
  %56 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %55, %struct.mbuf** %56, align 8
  %57 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  %59 = icmp ne %struct.mbuf* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %61, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 1
  store %struct.mbuf** %63, %struct.mbuf*** %5, align 8
  br label %64

64:                                               ; preds = %60, %50
  br label %65

65:                                               ; preds = %64, %41
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mbuf* @sbcreatecontrol(i32, i32, i32, i32) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
