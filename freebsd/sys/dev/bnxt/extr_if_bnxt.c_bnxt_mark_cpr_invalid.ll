; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_mark_cpr_invalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_mark_cpr_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_cp_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cmpl_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_cp_ring*)* @bnxt_mark_cpr_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_mark_cpr_invalid(%struct.bnxt_cp_ring* %0) #0 {
  %2 = alloca %struct.bnxt_cp_ring*, align 8
  %3 = alloca %struct.cmpl_base*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt_cp_ring* %0, %struct.bnxt_cp_ring** %2, align 8
  %5 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.cmpl_base*
  store %struct.cmpl_base* %10, %struct.cmpl_base** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.cmpl_base*, %struct.cmpl_base** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %25, i64 %27
  %29 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %11

33:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
