; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_process_tx_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_process_tx_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_wq = type { i64, %struct.TYPE_5__*, i32, %struct.oce_packet_desc*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.oce_packet_desc = type { %struct.mbuf*, i32, i64 }
%struct.mbuf = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@OCE_WQ_PACKET_ARRAY_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_wq*)* @oce_process_tx_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_process_tx_completion(%struct.oce_wq* %0) #0 {
  %2 = alloca %struct.oce_wq*, align 8
  %3 = alloca %struct.oce_packet_desc*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.oce_wq* %0, %struct.oce_wq** %2, align 8
  %6 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %7 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %12 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %11, i32 0, i32 3
  %13 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %12, align 8
  %14 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %15 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %13, i64 %16
  store %struct.oce_packet_desc* %17, %struct.oce_packet_desc** %3, align 8
  %18 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %19 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %18, i32 0, i32 0
  %20 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %21 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  %24 = load i32, i32* @OCE_WQ_PACKET_ARRAY_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = urem i64 %23, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @atomic_store_rel_int(i64* %19, i32 %27)
  %29 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %30 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %34 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @atomic_subtract_int(i32* %32, i64 %36)
  %38 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %39 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %42 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %45 = call i32 @bus_dmamap_sync(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %47 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %50 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bus_dmamap_unload(i32 %48, i32 %51)
  %53 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %54 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %53, i32 0, i32 0
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  store %struct.mbuf* %55, %struct.mbuf** %5, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  %58 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %59 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %58, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %1
  %69 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %70 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %75 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 2
  %80 = icmp slt i32 %73, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %68
  %82 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %83
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %92 = call i32 @oce_tx_restart(%struct.TYPE_7__* %90, %struct.oce_wq* %91)
  br label %93

93:                                               ; preds = %81, %68
  br label %94

94:                                               ; preds = %93, %1
  ret void
}

declare dso_local i32 @atomic_store_rel_int(i64*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @oce_tx_restart(%struct.TYPE_7__*, %struct.oce_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
