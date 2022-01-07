; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_mark_queue_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_mark_queue_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qtag = type { %struct.ixl_pf_qmgr* }
%struct.ixl_pf_qmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_pf_qmgr_mark_queue_enabled(%struct.ixl_pf_qtag* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ixl_pf_qtag*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixl_pf_qmgr*, align 8
  %8 = alloca i64, align 8
  store %struct.ixl_pf_qtag* %0, %struct.ixl_pf_qtag** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %4, align 8
  %10 = icmp ne %struct.ixl_pf_qtag* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %4, align 8
  %14 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %13, i32 0, i32 0
  %15 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %14, align 8
  store %struct.ixl_pf_qmgr* %15, %struct.ixl_pf_qmgr** %7, align 8
  %16 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag* %16, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %7, align 8
  %23 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %7, align 8
  %30 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %21
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
