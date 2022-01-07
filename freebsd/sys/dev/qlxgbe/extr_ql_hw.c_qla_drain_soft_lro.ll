; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_qla_drain_soft_lro.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_qla_drain_soft_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.lro_ctrl }
%struct.lro_ctrl = type { i32 }
%struct.lro_entry = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qla_drain_soft_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_drain_soft_lro(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.lro_ctrl*, align 8
  %6 = alloca %struct.lro_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.lro_ctrl* %22, %struct.lro_ctrl** %5, align 8
  br label %23

23:                                               ; preds = %29, %15
  %24 = load %struct.lro_ctrl*, %struct.lro_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %24, i32 0, i32 0
  %26 = call i32 @SLIST_EMPTY(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.lro_ctrl*, %struct.lro_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %30, i32 0, i32 0
  %32 = call %struct.lro_entry* @SLIST_FIRST(i32* %31)
  store %struct.lro_entry* %32, %struct.lro_entry** %6, align 8
  %33 = load %struct.lro_ctrl*, %struct.lro_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* @next, align 4
  %36 = call i32 @SLIST_REMOVE_HEAD(i32* %34, i32 %35)
  %37 = load %struct.lro_ctrl*, %struct.lro_ctrl** %5, align 8
  %38 = load %struct.lro_entry*, %struct.lro_entry** %6, align 8
  %39 = call i32 @tcp_lro_flush(%struct.lro_ctrl* %37, %struct.lro_entry* %38)
  br label %23

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %9

44:                                               ; preds = %9
  ret void
}

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.lro_entry* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @tcp_lro_flush(%struct.lro_ctrl*, %struct.lro_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
