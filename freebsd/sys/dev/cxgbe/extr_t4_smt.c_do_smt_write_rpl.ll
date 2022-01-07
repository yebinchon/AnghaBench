; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_smt.c_do_smt_write_rpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_smt.c_do_smt_write_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_iq = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smt_entry* }
%struct.smt_entry = type { i32, i32 }
%struct.rss_header = type { i32 }
%struct.mbuf = type { i32 }
%struct.cpl_smt_write_rpl = type { i64 }

@CPL_ERR_NONE = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unexpected SMT_WRITE_RPL (%u) for entry at hw_idx %u\0A\00", align 1
@SMT_STATE_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_smt_write_rpl(%struct.sge_iq* %0, %struct.rss_header* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_iq*, align 8
  %6 = alloca %struct.rss_header*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cpl_smt_write_rpl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.smt_entry*, align 8
  store %struct.sge_iq* %0, %struct.sge_iq** %5, align 8
  store %struct.rss_header* %1, %struct.rss_header** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %13 = load %struct.sge_iq*, %struct.sge_iq** %5, align 8
  %14 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %8, align 8
  %16 = load %struct.rss_header*, %struct.rss_header** %6, align 8
  %17 = getelementptr inbounds %struct.rss_header, %struct.rss_header* %16, i64 1
  %18 = bitcast %struct.rss_header* %17 to i8*
  %19 = bitcast i8* %18 to %struct.cpl_smt_write_rpl*
  store %struct.cpl_smt_write_rpl* %19, %struct.cpl_smt_write_rpl** %9, align 8
  %20 = load %struct.cpl_smt_write_rpl*, %struct.cpl_smt_write_rpl** %9, align 8
  %21 = call i32 @GET_TID(%struct.cpl_smt_write_rpl* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @G_TID_TID(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.cpl_smt_write_rpl*, %struct.cpl_smt_write_rpl** %9, align 8
  %25 = getelementptr inbounds %struct.cpl_smt_write_rpl, %struct.cpl_smt_write_rpl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CPL_ERR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @__predict_false(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %3
  %33 = load %struct.adapter*, %struct.adapter** %8, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.smt_entry*, %struct.smt_entry** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %37, i64 %39
  store %struct.smt_entry* %40, %struct.smt_entry** %12, align 8
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load %struct.cpl_smt_write_rpl*, %struct.cpl_smt_write_rpl** %9, align 8
  %43 = getelementptr inbounds %struct.cpl_smt_write_rpl, %struct.cpl_smt_write_rpl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @log(i32 %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %45)
  %47 = load %struct.smt_entry*, %struct.smt_entry** %12, align 8
  %48 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %47, i32 0, i32 0
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load i32, i32* @SMT_STATE_ERROR, align 4
  %51 = load %struct.smt_entry*, %struct.smt_entry** %12, align 8
  %52 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.smt_entry*, %struct.smt_entry** %12, align 8
  %54 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @GET_TID(%struct.cpl_smt_write_rpl*) #1

declare dso_local i32 @G_TID_TID(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @log(i32, i8*, i64, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
