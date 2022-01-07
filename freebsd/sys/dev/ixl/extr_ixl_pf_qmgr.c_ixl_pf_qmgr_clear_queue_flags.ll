; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_clear_queue_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_clear_queue_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qtag = type { i64, %struct.ixl_pf_qmgr* }
%struct.ixl_pf_qmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_pf_qmgr_clear_queue_flags(%struct.ixl_pf_qtag* %0) #0 {
  %2 = alloca %struct.ixl_pf_qtag*, align 8
  %3 = alloca %struct.ixl_pf_qmgr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixl_pf_qtag* %0, %struct.ixl_pf_qtag** %2, align 8
  %6 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %2, align 8
  %7 = icmp ne %struct.ixl_pf_qtag* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @MPASS(i32 %8)
  %10 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %10, i32 0, i32 1
  %12 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %11, align 8
  store %struct.ixl_pf_qmgr* %12, %struct.ixl_pf_qmgr** %3, align 8
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %47, %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %2, align 8
  %16 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag* %20, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %3, align 8
  %24 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %3, align 8
  %30 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %3, align 8
  %36 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %3, align 8
  %42 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %19
  %48 = load i64, i64* %4, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %13

50:                                               ; preds = %13
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
