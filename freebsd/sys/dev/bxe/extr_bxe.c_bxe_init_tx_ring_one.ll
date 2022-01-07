; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_tx_ring_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_tx_ring_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { %struct.TYPE_5__, i64, i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DOORBELL_HDR_T_DB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_fastpath*)* @bxe_init_tx_ring_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_tx_ring_one(%struct.bxe_fastpath* %0) #0 {
  %2 = alloca %struct.bxe_fastpath*, align 8
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %2, align 8
  %3 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %4 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DOORBELL_HDR_T_DB_TYPE, align 4
  %10 = call i32 @SET_FLAG(i32 %8, i32 %9, i32 1)
  %11 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %16 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %22 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %26 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %28 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @SET_FLAG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
