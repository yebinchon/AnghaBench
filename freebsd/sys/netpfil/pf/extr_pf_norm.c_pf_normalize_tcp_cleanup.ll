; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_normalize_tcp_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_normalize_tcp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@V_pf_state_scrub_z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_normalize_tcp_cleanup(%struct.pf_state* %0) #0 {
  %2 = alloca %struct.pf_state*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %2, align 8
  %3 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %4 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @V_pf_state_scrub_z, align 4
  %10 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %11 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @uma_zfree(i32 %9, i64 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %17 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @V_pf_state_scrub_z, align 4
  %23 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %24 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @uma_zfree(i32 %22, i64 %26)
  br label %28

28:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @uma_zfree(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
