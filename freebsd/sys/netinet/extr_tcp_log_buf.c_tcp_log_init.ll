; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"tcp_log\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@tcp_log_zone = common dso_local global i8* null, align 8
@TCP_LOG_BUF_DEFAULT_GLOBAL_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"tcp_log_bucket\00", align 1
@tcp_log_bucket_zone = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"tcp_log_node\00", align 1
@tcp_log_node_zone = common dso_local global i8* null, align 8
@tcp_id_tree_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"TCP ID tree\00", align 1
@RW_NEW = common dso_local global i32 0, align 4
@tcp_log_expireq_mtx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"TCP log expireq\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@tcp_log_expireq_callout = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@tcp_log_que_copyout = common dso_local global i8* null, align 8
@tcp_log_que_fail1 = common dso_local global i8* null, align 8
@tcp_log_que_fail2 = common dso_local global i8* null, align 8
@tcp_log_que_fail3 = common dso_local global i8* null, align 8
@tcp_log_que_fail4 = common dso_local global i8* null, align 8
@tcp_log_que_fail5 = common dso_local global i8* null, align 8
@tcp_log_que_freed = common dso_local global i8* null, align 8
@tcp_log_que_read = common dso_local global i8* null, align 8
@tcp_log_queued = common dso_local global i8* null, align 8
@tcp_log_zone_ctor = common dso_local global i32 0, align 4
@tcp_log_zone_dtor = common dso_local global i32 0, align 4
@tcp_log_zone_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_log_init() #0 {
  %1 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %2 = call i8* (i8*, i32, i32*, i32*, i32*, i32*, i32, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %1, i32 0)
  store i8* %2, i8** @tcp_log_zone, align 8
  %3 = load i8*, i8** @tcp_log_zone, align 8
  %4 = load i32, i32* @TCP_LOG_BUF_DEFAULT_GLOBAL_LIMIT, align 4
  %5 = call i32 @uma_zone_set_max(i8* %3, i32 %4)
  %6 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %7 = call i8* (i8*, i32, i32*, i32*, i32*, i32*, i32, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %6, i32 0)
  store i8* %7, i8** @tcp_log_bucket_zone, align 8
  %8 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %9 = call i8* (i8*, i32, i32*, i32*, i32*, i32*, i32, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %8, i32 0)
  store i8* %9, i8** @tcp_log_node_zone, align 8
  %10 = load i32, i32* @RW_NEW, align 4
  %11 = call i32 @rw_init_flags(i32* @tcp_id_tree_lock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* @tcp_log_expireq_mtx, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %12)
  %14 = call i32 @callout_init(i32* @tcp_log_expireq_callout, i32 1)
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32, ...) #1

declare dso_local i32 @uma_zone_set_max(i8*, i32) #1

declare dso_local i32 @rw_init_flags(i32*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
