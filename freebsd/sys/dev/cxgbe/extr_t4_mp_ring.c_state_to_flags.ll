; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_state_to_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_state_to_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ring_state = type { i64 }

@IDLE = common dso_local global i32 0, align 4
@ABDICATED = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @state_to_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_to_flags(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ring_state, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %union.ring_state, %union.ring_state* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %5, align 4
  %7 = bitcast %union.ring_state* %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = bitcast %union.ring_state* %4 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @IDLE, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = bitcast %union.ring_state* %4 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = bitcast %union.ring_state* %4 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ABDICATED, align 4
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %17, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @BUSY, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %23, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
