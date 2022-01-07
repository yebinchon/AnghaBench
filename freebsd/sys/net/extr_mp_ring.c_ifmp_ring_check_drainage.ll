; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_mp_ring.c_ifmp_ring_check_drainage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_mp_ring.c_ifmp_ring_check_drainage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmp_ring = type { i64, i64 (%struct.ifmp_ring*)*, i32 }
%union.ring_state = type { i64 }

@STALLED = common dso_local global i64 0, align 8
@ABDICATED = common dso_local global i64 0, align 8
@BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifmp_ring_check_drainage(%struct.ifmp_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ifmp_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ring_state, align 8
  %6 = alloca %union.ring_state, align 8
  store %struct.ifmp_ring* %0, %struct.ifmp_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ifmp_ring*, %struct.ifmp_ring** %3, align 8
  %8 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %union.ring_state* %5 to i64*
  store i64 %9, i64* %10, align 8
  %11 = bitcast %union.ring_state* %5 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STALLED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = bitcast %union.ring_state* %5 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ABDICATED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %2
  %21 = bitcast %union.ring_state* %5 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = bitcast %union.ring_state* %5 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = bitcast %union.ring_state* %5 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ABDICATED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.ifmp_ring*, %struct.ifmp_ring** %3, align 8
  %33 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %32, i32 0, i32 1
  %34 = load i64 (%struct.ifmp_ring*)*, i64 (%struct.ifmp_ring*)** %33, align 8
  %35 = load %struct.ifmp_ring*, %struct.ifmp_ring** %3, align 8
  %36 = call i64 %34(%struct.ifmp_ring* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %20, %15
  br label %69

39:                                               ; preds = %31, %26
  %40 = bitcast %union.ring_state* %5 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = bitcast %union.ring_state* %5 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @MPASS(i32 %45)
  %47 = bitcast %union.ring_state* %5 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %union.ring_state* %6 to i64*
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @BUSY, align 8
  %51 = bitcast %union.ring_state* %6 to i64*
  store i64 %50, i64* %51, align 8
  %52 = load %struct.ifmp_ring*, %struct.ifmp_ring** %3, align 8
  %53 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %52, i32 0, i32 0
  %54 = bitcast %union.ring_state* %5 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = bitcast %union.ring_state* %6 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @atomic_cmpset_acq_64(i64* %53, i64 %55, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %39
  br label %69

61:                                               ; preds = %39
  %62 = load %struct.ifmp_ring*, %struct.ifmp_ring** %3, align 8
  %63 = bitcast %union.ring_state* %5 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = getelementptr inbounds %union.ring_state, %union.ring_state* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @drain_ring_lockless(%struct.ifmp_ring* %62, i64 %67, i64 %64, i32 %65)
  br label %69

69:                                               ; preds = %61, %60, %38
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_cmpset_acq_64(i64*, i64, i64) #1

declare dso_local i32 @drain_ring_lockless(%struct.ifmp_ring*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
