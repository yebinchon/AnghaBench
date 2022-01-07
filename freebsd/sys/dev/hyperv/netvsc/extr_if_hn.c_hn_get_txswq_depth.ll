; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_get_txswq_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_get_txswq_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"tx ring is not setup yet\00", align 1
@hn_tx_swq_depth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_tx_ring*)* @hn_get_txswq_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_get_txswq_depth(%struct.hn_tx_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_tx_ring*, align 8
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %3, align 8
  %4 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %5 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @hn_tx_swq_depth, align 8
  %11 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %17 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i64, i64* @hn_tx_swq_depth, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
