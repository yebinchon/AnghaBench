; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.qlnx_rx_queue = type { i32, %struct.sw_rx_data* }
%struct.sw_rx_data = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.qlnx_rx_queue*)* @qlnx_free_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_free_rx_buffers(%struct.TYPE_3__* %0, %struct.qlnx_rx_queue* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.qlnx_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw_rx_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.qlnx_rx_queue* %1, %struct.qlnx_rx_queue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %7
  %14 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %15 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %14, i32 0, i32 1
  %16 = load %struct.sw_rx_data*, %struct.sw_rx_data** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %16, i64 %18
  store %struct.sw_rx_data* %19, %struct.sw_rx_data** %6, align 8
  %20 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %21 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %13
  %25 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %26 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %34 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamap_unload(i32 %32, i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %41 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_dmamap_destroy(i32 %39, i32* %42)
  %44 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %45 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %29, %24
  %47 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %48 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @m_freem(i32* %49)
  %51 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %52 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %13
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %7

57:                                               ; preds = %7
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
