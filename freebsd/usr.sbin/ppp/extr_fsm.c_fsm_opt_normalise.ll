; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_opt_normalise.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_opt_normalise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm_decode = type { i64, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_opt_normalise(%struct.fsm_decode* %0) #0 {
  %2 = alloca %struct.fsm_decode*, align 8
  store %struct.fsm_decode* %0, %struct.fsm_decode** %2, align 8
  %3 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %4 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %7 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %12 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %15 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %17 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %20 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %23 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %26 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %31 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fsm_decode*, %struct.fsm_decode** %2, align 8
  %34 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %21
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
