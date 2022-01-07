; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_tpa_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_tpa_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.qlnx_agg_info = type { %struct.sw_rx_data }
%struct.sw_rx_data = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.qlnx_agg_info*)* @qlnx_free_tpa_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_free_tpa_mbuf(%struct.TYPE_3__* %0, %struct.qlnx_agg_info* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.qlnx_agg_info*, align 8
  %5 = alloca %struct.sw_rx_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.qlnx_agg_info* %1, %struct.qlnx_agg_info** %4, align 8
  %6 = load %struct.qlnx_agg_info*, %struct.qlnx_agg_info** %4, align 8
  %7 = getelementptr inbounds %struct.qlnx_agg_info, %struct.qlnx_agg_info* %6, i32 0, i32 0
  store %struct.sw_rx_data* %7, %struct.sw_rx_data** %5, align 8
  %8 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %9 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %14 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %22 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @bus_dmamap_unload(i32 %20, i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %29 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bus_dmamap_destroy(i32 %27, i32* %30)
  %32 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %33 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %17, %12
  %35 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %36 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @m_freem(i32* %37)
  %39 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %40 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
