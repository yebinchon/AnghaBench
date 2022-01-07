; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_handle_wrq_egr_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_handle_wrq_egr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32* }
%struct.sge_eq = type { i64, i32 }
%struct.sge_wrq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_eq*)* @handle_wrq_egr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_wrq_egr_update(%struct.adapter* %0, %struct.sge_eq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_eq*, align 8
  %5 = alloca %struct.sge_wrq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_eq* %1, %struct.sge_eq** %4, align 8
  %6 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %7 = bitcast %struct.sge_eq* %6 to i8*
  %8 = bitcast i8* %7 to %struct.sge_wrq*
  store %struct.sge_wrq* %8, %struct.sge_wrq** %5, align 8
  %9 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %10 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %9, i32 0, i32 1
  %11 = call i32 @atomic_readandclear_int(i32* %10)
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %16 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sge_wrq*, %struct.sge_wrq** %5, align 8
  %21 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %20, i32 0, i32 0
  %22 = call i32 @taskqueue_enqueue(i32 %19, i32* %21)
  ret void
}

declare dso_local i32 @atomic_readandclear_int(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
