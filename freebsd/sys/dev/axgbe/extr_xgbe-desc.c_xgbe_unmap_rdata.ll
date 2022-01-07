; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_unmap_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_unmap_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring_data = type { i32, i32, i64, i64, i64, i64, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_ring_data*)* @xgbe_unmap_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_unmap_rdata(%struct.xgbe_prv_data* %0, %struct.xgbe_ring_data* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_ring_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_ring_data* %1, %struct.xgbe_ring_data** %4, align 8
  %5 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %6 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %11 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %14 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_dmamap_destroy(i32 %12, i32* %15)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %24 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @m_freem(i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %28, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %31 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %33 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %35 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %37 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %39 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %38, i32 0, i32 1
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %42 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %41, i32 0, i32 0
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
