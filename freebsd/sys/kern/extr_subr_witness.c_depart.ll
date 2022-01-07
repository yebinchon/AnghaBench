; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_depart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_depart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.witness = type { i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LC_SLEEPLOCK = common dso_local global i32 0, align 4
@w_sleep_cnt = common dso_local global i32 0, align 4
@w_spin_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.witness*)* @depart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @depart(%struct.witness* %0) #0 {
  %2 = alloca %struct.witness*, align 8
  store %struct.witness* %0, %struct.witness** %2, align 8
  %3 = load %struct.witness*, %struct.witness** %2, align 8
  %4 = getelementptr inbounds %struct.witness, %struct.witness* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load %struct.witness*, %struct.witness** %2, align 8
  %10 = getelementptr inbounds %struct.witness, %struct.witness* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LC_SLEEPLOCK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @w_sleep_cnt, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @w_sleep_cnt, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @w_spin_cnt, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @w_spin_cnt, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.witness*, %struct.witness** %2, align 8
  %25 = getelementptr inbounds %struct.witness, %struct.witness* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.witness*, %struct.witness** %2, align 8
  %27 = getelementptr inbounds %struct.witness, %struct.witness* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = call i32 (...) @witness_increment_graph_generation()
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @witness_increment_graph_generation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
