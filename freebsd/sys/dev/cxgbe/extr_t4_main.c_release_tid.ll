; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_release_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_release_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_wrq = type { i32 }
%struct.wrqe = type { i32 }
%struct.cpl_tid_release = type { i32 }

@CPL_TID_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_tid(%struct.adapter* %0, i32 %1, %struct.sge_wrq* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sge_wrq*, align 8
  %7 = alloca %struct.wrqe*, align 8
  %8 = alloca %struct.cpl_tid_release*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sge_wrq* %2, %struct.sge_wrq** %6, align 8
  %9 = load %struct.sge_wrq*, %struct.sge_wrq** %6, align 8
  %10 = call %struct.wrqe* @alloc_wrqe(i32 4, %struct.sge_wrq* %9)
  store %struct.wrqe* %10, %struct.wrqe** %7, align 8
  %11 = load %struct.wrqe*, %struct.wrqe** %7, align 8
  %12 = icmp eq %struct.wrqe* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @queue_tid_release(%struct.adapter* %14, i32 %15)
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.wrqe*, %struct.wrqe** %7, align 8
  %19 = call %struct.cpl_tid_release* @wrtod(%struct.wrqe* %18)
  store %struct.cpl_tid_release* %19, %struct.cpl_tid_release** %8, align 8
  %20 = load %struct.cpl_tid_release*, %struct.cpl_tid_release** %8, align 8
  %21 = load i32, i32* @CPL_TID_RELEASE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @INIT_TP_WR_MIT_CPL(%struct.cpl_tid_release* %20, i32 %21, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = load %struct.wrqe*, %struct.wrqe** %7, align 8
  %26 = call i32 @t4_wrq_tx(%struct.adapter* %24, %struct.wrqe* %25)
  br label %27

27:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct.wrqe* @alloc_wrqe(i32, %struct.sge_wrq*) #1

declare dso_local i32 @queue_tid_release(%struct.adapter*, i32) #1

declare dso_local %struct.cpl_tid_release* @wrtod(%struct.wrqe*) #1

declare dso_local i32 @INIT_TP_WR_MIT_CPL(%struct.cpl_tid_release*, i32, i32) #1

declare dso_local i32 @t4_wrq_tx(%struct.adapter*, %struct.wrqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
