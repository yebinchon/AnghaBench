; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_get_rxq_by_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_get_rxq_by_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_rxq = type { i64 }
%struct.sfxge_evq = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sfxge_rxq** }

@.str = private unnamed_addr constant [26 x i8] c"unexpected rxq label != 0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rxq == NULL\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"evq->index != rxq->index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfxge_rxq* (%struct.sfxge_evq*, i64)* @sfxge_get_rxq_by_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfxge_rxq* @sfxge_get_rxq_by_label(%struct.sfxge_evq* %0, i64 %1) #0 {
  %3 = alloca %struct.sfxge_evq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sfxge_rxq*, align 8
  store %struct.sfxge_evq* %0, %struct.sfxge_evq** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %13, align 8
  %15 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %16 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %14, i64 %17
  %19 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %18, align 8
  store %struct.sfxge_rxq* %19, %struct.sfxge_rxq** %5, align 8
  %20 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %21 = icmp ne %struct.sfxge_rxq* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %25 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %28 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  ret %struct.sfxge_rxq* %33
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
