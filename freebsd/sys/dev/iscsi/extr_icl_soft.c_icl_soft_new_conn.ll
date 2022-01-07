; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_new_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_new_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i8*, i8*, i32, i32, i32, i32, i32, %struct.mtx*, i32 }
%struct.mtx = type { i32 }

@icl_ncons = common dso_local global i32 0, align 4
@icl_soft_class = common dso_local global i32 0, align 4
@M_ICL_SOFT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"icl_tx\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"icl_rx\00", align 1
@ICL_MAX_DATA_SEGMENT_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.icl_conn* (i8*, %struct.mtx*)* @icl_soft_new_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.icl_conn* @icl_soft_new_conn(i8* %0, %struct.mtx* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca %struct.icl_conn*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %6 = call i32 @refcount_acquire(i32* @icl_ncons)
  %7 = load i32, i32* @M_ICL_SOFT, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @kobj_create(i32* @icl_soft_class, i32 %7, i32 %10)
  %12 = inttoptr i64 %11 to %struct.icl_conn*
  store %struct.icl_conn* %12, %struct.icl_conn** %5, align 8
  %13 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %14 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %13, i32 0, i32 8
  %15 = call i32 @STAILQ_INIT(i32* %14)
  %16 = load %struct.mtx*, %struct.mtx** %4, align 8
  %17 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %18 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %17, i32 0, i32 7
  store %struct.mtx* %16, %struct.mtx** %18, align 8
  %19 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %20 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %19, i32 0, i32 6
  %21 = call i32 @cv_init(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %23 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %22, i32 0, i32 5
  %24 = call i32 @cv_init(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ICL_MAX_DATA_SEGMENT_LENGTH, align 4
  %26 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %27 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %30 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %32 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  %34 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.icl_conn*, %struct.icl_conn** %5, align 8
  ret %struct.icl_conn* %35
}

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i64 @kobj_create(i32*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
