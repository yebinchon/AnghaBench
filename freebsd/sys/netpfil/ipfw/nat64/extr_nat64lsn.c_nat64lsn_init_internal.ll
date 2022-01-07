; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_init_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"NAT64LSN hosts\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@nat64lsn_host_zone = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"NAT64LSN portgroup chunks\00", align 1
@nat64lsn_pgchunk_zone = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"NAT64LSN portgroups\00", align 1
@nat64lsn_pg_zone = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"NAT64LSN links\00", align 1
@nat64lsn_aliaslink_zone = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"NAT64LSN states\00", align 1
@nat64lsn_state_ctor = common dso_local global i32* null, align 8
@nat64lsn_state_zone = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"NAT64LSN jobs\00", align 1
@nat64lsn_job_zone = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nat64lsn_init_internal() #0 {
  %1 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %2 = call i8* @uma_zcreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %1, i32 0)
  store i8* %2, i8** @nat64lsn_host_zone, align 8
  %3 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %4 = call i8* @uma_zcreate(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %3, i32 0)
  store i8* %4, i8** @nat64lsn_pgchunk_zone, align 8
  %5 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %6 = call i8* @uma_zcreate(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %5, i32 0)
  store i8* %6, i8** @nat64lsn_pg_zone, align 8
  %7 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %8 = call i8* @uma_zcreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %7, i32 0)
  store i8* %8, i8** @nat64lsn_aliaslink_zone, align 8
  %9 = load i32*, i32** @nat64lsn_state_ctor, align 8
  %10 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %11 = call i8* @uma_zcreate(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 4, i32* %9, i32* null, i32* null, i32* null, i32 %10, i32 0)
  store i8* %11, i8** @nat64lsn_state_zone, align 8
  %12 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %13 = call i8* @uma_zcreate(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %12, i32 0)
  store i8* %13, i8** @nat64lsn_job_zone, align 8
  %14 = call i32 (...) @JQUEUE_LOCK_INIT()
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @JQUEUE_LOCK_INIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
