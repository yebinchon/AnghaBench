; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.port_info* }
%struct.port_info = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@TXQ_ETH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sge_qset*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 1
  %12 = load %struct.port_info*, %struct.port_info** %11, align 8
  store %struct.port_info* %12, %struct.port_info** %7, align 8
  %13 = load %struct.port_info*, %struct.port_info** %7, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.port_info*, %struct.port_info** %7, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = call i32 @m_freem(%struct.mbuf* %29)
  store i32 0, i32* %3, align 4
  br label %82

31:                                               ; preds = %22
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %32)
  %34 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.port_info*, %struct.port_info** %7, align 8
  %42 = getelementptr inbounds %struct.port_info, %struct.port_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %40, %43
  %45 = load %struct.port_info*, %struct.port_info** %7, align 8
  %46 = getelementptr inbounds %struct.port_info, %struct.port_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %36, %31
  %50 = load %struct.port_info*, %struct.port_info** %7, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.sge_qset*, %struct.sge_qset** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %55, i64 %57
  store %struct.sge_qset* %58, %struct.sge_qset** %6, align 8
  %59 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %60 = call i64 @TXQ_TRYLOCK(%struct.sge_qset* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %49
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = call i32 @cxgb_transmit_locked(%struct.ifnet* %63, %struct.sge_qset* %64, %struct.mbuf* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %68 = call i32 @TXQ_UNLOCK(%struct.sge_qset* %67)
  br label %80

69:                                               ; preds = %49
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %72 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i64, i64* @TXQ_ETH, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = call i32 @drbr_enqueue(%struct.ifnet* %70, i32 %77, %struct.mbuf* %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %69, %62
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %28
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i64 @TXQ_TRYLOCK(%struct.sge_qset*) #1

declare dso_local i32 @cxgb_transmit_locked(%struct.ifnet*, %struct.sge_qset*, %struct.mbuf*) #1

declare dso_local i32 @TXQ_UNLOCK(%struct.sge_qset*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
