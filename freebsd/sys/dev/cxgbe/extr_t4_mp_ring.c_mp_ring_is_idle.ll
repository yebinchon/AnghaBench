; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_is_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i32 }
%union.ring_state = type { i64 }

@IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_ring_is_idle(%struct.mp_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_ring*, align 8
  %4 = alloca %union.ring_state, align 8
  store %struct.mp_ring* %0, %struct.mp_ring** %3, align 8
  %5 = load %struct.mp_ring*, %struct.mp_ring** %3, align 8
  %6 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = bitcast %union.ring_state* %4 to i32*
  store i32 %7, i32* %8, align 8
  %9 = bitcast %union.ring_state* %4 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = bitcast %union.ring_state* %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = bitcast %union.ring_state* %4 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %union.ring_state* %4 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = bitcast %union.ring_state* %4 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IDLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %20, %14, %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
