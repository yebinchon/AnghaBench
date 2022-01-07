; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm_decode = type { i64, i64 }
%struct.fsm_opt = type { i32 }

@FSM_OPTLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_rej(%struct.fsm_decode* %0, %struct.fsm_opt* %1) #0 {
  %3 = alloca %struct.fsm_decode*, align 8
  %4 = alloca %struct.fsm_opt*, align 8
  store %struct.fsm_decode* %0, %struct.fsm_decode** %3, align 8
  store %struct.fsm_opt* %1, %struct.fsm_opt** %4, align 8
  %5 = load %struct.fsm_decode*, %struct.fsm_decode** %3, align 8
  %6 = icmp ne %struct.fsm_decode* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %27

8:                                                ; preds = %2
  %9 = load %struct.fsm_decode*, %struct.fsm_decode** %3, align 8
  %10 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FSM_OPTLEN, align 8
  %13 = load %struct.fsm_decode*, %struct.fsm_decode** %3, align 8
  %14 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fsm_decode*, %struct.fsm_decode** %3, align 8
  %17 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sub nsw i64 %12, %19
  %21 = load %struct.fsm_opt*, %struct.fsm_opt** %4, align 8
  %22 = call i64 @fsm_opt(i64 %11, i64 %20, %struct.fsm_opt* %21)
  %23 = load %struct.fsm_decode*, %struct.fsm_decode** %3, align 8
  %24 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @fsm_opt(i64, i64, %struct.fsm_opt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
