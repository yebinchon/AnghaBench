; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_mp_ring.c_space_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_mp_ring.c_space_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmp_ring = type { i64 }
%union.ring_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifmp_ring*, i64)* @space_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @space_available(%struct.ifmp_ring* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %union.ring_state, align 8
  %5 = alloca %struct.ifmp_ring*, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %union.ring_state, %union.ring_state* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.ifmp_ring* %0, %struct.ifmp_ring** %5, align 8
  %8 = load %struct.ifmp_ring*, %struct.ifmp_ring** %5, align 8
  %9 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %6, align 8
  %12 = bitcast %union.ring_state* %4 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %union.ring_state* %4 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %3, align 8
  br label %40

19:                                               ; preds = %2
  %20 = bitcast %union.ring_state* %4 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %union.ring_state* %4 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = bitcast %union.ring_state* %4 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = bitcast %union.ring_state* %4 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = sub nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %40

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = bitcast %union.ring_state* %4 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = bitcast %union.ring_state* %4 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %32, %25, %17
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
