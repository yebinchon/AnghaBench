; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_do_l2t_write_rpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_do_l2t_write_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_iq = type { i32 }
%struct.rss_header = type { i32 }
%struct.mbuf = type { i32 }
%struct.cpl_l2t_write_rpl = type { i64 }

@L2T_SIZE = common dso_local global i32 0, align 4
@CPL_ERR_NONE = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unexpected L2T_WRITE_RPL (%u) for entry at hw_idx %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_l2t_write_rpl(%struct.sge_iq* %0, %struct.rss_header* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_iq*, align 8
  %6 = alloca %struct.rss_header*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.cpl_l2t_write_rpl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sge_iq* %0, %struct.sge_iq** %5, align 8
  store %struct.rss_header* %1, %struct.rss_header** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %11 = load %struct.rss_header*, %struct.rss_header** %6, align 8
  %12 = getelementptr inbounds %struct.rss_header, %struct.rss_header* %11, i64 1
  %13 = bitcast %struct.rss_header* %12 to i8*
  %14 = bitcast i8* %13 to %struct.cpl_l2t_write_rpl*
  store %struct.cpl_l2t_write_rpl* %14, %struct.cpl_l2t_write_rpl** %8, align 8
  %15 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %8, align 8
  %16 = call i32 @GET_TID(%struct.cpl_l2t_write_rpl* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @L2T_SIZE, align 4
  %19 = urem i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %8, align 8
  %21 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CPL_ERR_NONE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @__predict_false(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %8, align 8
  %31 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @log(i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @GET_TID(%struct.cpl_l2t_write_rpl*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @log(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
