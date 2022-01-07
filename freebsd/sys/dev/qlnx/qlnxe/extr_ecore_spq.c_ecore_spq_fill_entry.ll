; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_fill_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_fill_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_spq_entry = type { i32, %struct.TYPE_8__, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ecore_spq_blocking_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown SPQE completion mode %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"Ramrod header: [CID 0x%08x CMD 0x%02x protocol 0x%02x] Data pointer: [%08x:%08x] Completion Mode: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MODE_EBLOCK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MODE_BLOCK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MODE_CB\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_spq_entry*)* @ecore_spq_fill_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_spq_fill_entry(%struct.ecore_hwfn* %0, %struct.ecore_spq_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_spq_entry*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_spq_entry* %1, %struct.ecore_spq_entry** %5, align 8
  %6 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %7 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %9 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 130, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @ecore_spq_blocking_cb, align 4
  %13 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %24

16:                                               ; preds = %2
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %18, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %16, %11
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %27 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %33 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %38 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %43 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @D_TRINE(i32 %54, i32 128, i32 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36, i32 %41, i32 %46, i32 %51, i32 %55)
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %24, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @D_TRINE(i32, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
