; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ifnet* }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_eiface_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_eiface_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @NG_HOOK_NODE(i32 %9)
  %11 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %17 = call i32 @NGI_GET_M(i32 %15, %struct.mbuf* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @NG_FREE_ITEM(i32 %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = call i32 @NG_FREE_M(%struct.mbuf* %34)
  %36 = load i32, i32* @ENETDOWN, align 4
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %26
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ETHER_HDR_LEN, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = load i64, i64* @ETHER_HDR_LEN, align 8
  %46 = call %struct.mbuf* @m_pullup(%struct.mbuf* %44, i64 %45)
  store %struct.mbuf* %46, %struct.mbuf** %8, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = icmp eq %struct.mbuf* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.ifnet* %53, %struct.ifnet** %56, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %58 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %59 = call i32 @if_inc_counter(%struct.ifnet* %57, i32 %58, i32 1)
  %60 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 2
  %62 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %61, align 8
  %63 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %65 = call i32 %62(%struct.ifnet* %63, %struct.mbuf* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %52, %49, %33
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
