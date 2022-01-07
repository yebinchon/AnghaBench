; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_check_drainage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_check_drainage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i64 (%struct.mp_ring*)*, i32 }
%union.ring_state = type { i64 }

@STALLED = common dso_local global i64 0, align 8
@BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_ring_check_drainage(%struct.mp_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ring_state, align 8
  %6 = alloca %union.ring_state, align 8
  store %struct.mp_ring* %0, %struct.mp_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mp_ring*, %struct.mp_ring** %3, align 8
  %8 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = bitcast %union.ring_state* %5 to i32*
  store i32 %9, i32* %10, align 8
  %11 = bitcast %union.ring_state* %5 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STALLED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = bitcast %union.ring_state* %5 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = bitcast %union.ring_state* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.mp_ring*, %struct.mp_ring** %3, align 8
  %23 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %22, i32 0, i32 0
  %24 = load i64 (%struct.mp_ring*)*, i64 (%struct.mp_ring*)** %23, align 8
  %25 = load %struct.mp_ring*, %struct.mp_ring** %3, align 8
  %26 = call i64 %24(%struct.mp_ring* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %15, %2
  br label %59

29:                                               ; preds = %21
  %30 = bitcast %union.ring_state* %5 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = bitcast %union.ring_state* %5 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @MPASS(i32 %35)
  %37 = bitcast %union.ring_state* %5 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = bitcast %union.ring_state* %6 to i32*
  store i32 %38, i32* %39, align 8
  %40 = load i64, i64* @BUSY, align 8
  %41 = bitcast %union.ring_state* %6 to i64*
  store i64 %40, i64* %41, align 8
  %42 = load %struct.mp_ring*, %struct.mp_ring** %3, align 8
  %43 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %42, i32 0, i32 1
  %44 = bitcast %union.ring_state* %5 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %union.ring_state* %6 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @atomic_cmpset_acq_64(i32* %43, i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %29
  br label %59

51:                                               ; preds = %29
  %52 = load %struct.mp_ring*, %struct.mp_ring** %3, align 8
  %53 = bitcast %union.ring_state* %5 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds %union.ring_state, %union.ring_state* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @drain_ring(%struct.mp_ring* %52, i64 %57, i64 %54, i32 %55)
  br label %59

59:                                               ; preds = %51, %50, %28
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_cmpset_acq_64(i32*, i32, i32) #1

declare dso_local i32 @drain_ring(%struct.mp_ring*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
