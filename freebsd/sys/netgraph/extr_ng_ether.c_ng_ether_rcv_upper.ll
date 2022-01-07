; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_rcv_upper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_rcv_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoch_tracker = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i64 }
%struct.TYPE_5__ = type { %struct.ifnet* }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_ether_rcv_upper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ether_rcv_upper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.epoch_tracker, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @NG_HOOK_NODE(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = call i32 @NGI_GET_M(i32 %18, %struct.mbuf* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @NG_FREE_ITEM(i32 %21)
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = call i32 @NG_FREE_M(%struct.mbuf* %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %2
  %34 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = call %struct.mbuf* @m_pullup(%struct.mbuf* %40, i32 4)
  store %struct.mbuf* %41, %struct.mbuf** %7, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOBUFS, align 4
  store i32 %44, i32* %3, align 4
  br label %72

45:                                               ; preds = %39, %33
  %46 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.ifnet* %46, %struct.ifnet** %49, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %57 = call i32 @BRIDGE_INPUT(%struct.ifnet* %55, %struct.mbuf* %56)
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = icmp eq %struct.mbuf* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %72

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %45
  %63 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NET_EPOCH_ENTER(i32 %64)
  %66 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %68 = call i32 @ether_demux(%struct.ifnet* %66, %struct.mbuf* %67)
  %69 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @NET_EPOCH_EXIT(i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %62, %60, %43, %29
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i32 @BRIDGE_INPUT(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @ether_demux(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
