; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_packet_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_packet_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.xgbe_packet_data = type { i32, i64, i32, %struct.mbuf* }

@XGBE_TX_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_ring*, %struct.mbuf*, %struct.xgbe_packet_data*)* @xgbe_packet_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_packet_info(%struct.xgbe_prv_data* %0, %struct.xgbe_ring* %1, %struct.mbuf* %2, %struct.xgbe_packet_data* %3) #0 {
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_ring*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.xgbe_packet_data*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store %struct.xgbe_packet_data* %3, %struct.xgbe_packet_data** %8, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %12 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %13 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %12, i32 0, i32 3
  store %struct.mbuf* %11, %struct.mbuf** %13, align 8
  %14 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %15 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %17 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = call i32 @m_length(%struct.mbuf* %18, i32* null)
  %20 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %21 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %22, %struct.mbuf** %9, align 8
  br label %23

23:                                               ; preds = %46, %4
  %24 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %33, %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %35 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @XGBE_TX_MAX_BUF_SIZE, align 4
  %40 = call i64 @MIN(i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  br label %30

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 1
  %49 = load %struct.mbuf*, %struct.mbuf** %48, align 8
  store %struct.mbuf* %49, %struct.mbuf** %9, align 8
  br label %23

50:                                               ; preds = %23
  ret void
}

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
