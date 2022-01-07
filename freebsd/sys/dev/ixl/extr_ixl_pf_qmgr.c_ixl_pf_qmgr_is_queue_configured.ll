; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_is_queue_configured.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_is_queue_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qtag = type { %struct.ixl_pf_qmgr* }
%struct.ixl_pf_qmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_pf_qmgr_is_queue_configured(%struct.ixl_pf_qtag* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_pf_qtag*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixl_pf_qmgr*, align 8
  %9 = alloca i64, align 8
  store %struct.ixl_pf_qtag* %0, %struct.ixl_pf_qtag** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %11 = icmp ne %struct.ixl_pf_qtag* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %15 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %14, i32 0, i32 0
  %16 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %15, align 8
  store %struct.ixl_pf_qmgr* %16, %struct.ixl_pf_qmgr** %8, align 8
  %17 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag* %17, i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %8, align 8
  %24 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %8, align 8
  %32 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @ixl_pf_qidx_from_vsi_qidx(%struct.ixl_pf_qtag*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
