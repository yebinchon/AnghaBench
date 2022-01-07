; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_wrq_tx_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_wrq_tx_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_wrq = type { i32, i32, i32, %struct.sge_eq }
%struct.sge_eq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @wrq_tx_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrq_tx_drain(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_wrq*, align 8
  %6 = alloca %struct.sge_eq*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.sge_wrq*
  store %struct.sge_wrq* %8, %struct.sge_wrq** %5, align 8
  %9 = load %struct.sge_wrq*, %struct.sge_wrq** %5, align 8
  %10 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %9, i32 0, i32 3
  store %struct.sge_eq* %10, %struct.sge_eq** %6, align 8
  %11 = load %struct.sge_eq*, %struct.sge_eq** %6, align 8
  %12 = call i32 @EQ_LOCK(%struct.sge_eq* %11)
  %13 = load %struct.sge_wrq*, %struct.sge_wrq** %5, align 8
  %14 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %13, i32 0, i32 2
  %15 = call i64 @TAILQ_EMPTY(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.sge_wrq*, %struct.sge_wrq** %5, align 8
  %19 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %18, i32 0, i32 1
  %20 = call i32 @STAILQ_EMPTY(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.sge_wrq*, %struct.sge_wrq** %5, align 8
  %24 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sge_wrq*, %struct.sge_wrq** %5, align 8
  %27 = call i32 @drain_wrq_wr_list(i32 %25, %struct.sge_wrq* %26)
  br label %28

28:                                               ; preds = %22, %17, %2
  %29 = load %struct.sge_eq*, %struct.sge_eq** %6, align 8
  %30 = call i32 @EQ_UNLOCK(%struct.sge_eq* %29)
  ret void
}

declare dso_local i32 @EQ_LOCK(%struct.sge_eq*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @drain_wrq_wr_list(i32, %struct.sge_wrq*) #1

declare dso_local i32 @EQ_UNLOCK(%struct.sge_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
