; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_new_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_new_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i8*, i32, i32, i32, %struct.mtx* }
%struct.mtx = type { i32 }
%struct.iser_conn = type { %struct.icl_conn, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@icl_iser_ncons = common dso_local global i32 0, align 4
@icl_iser_class = common dso_local global i32 0, align 4
@M_ICL_ISER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate iser conn\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"iser_cv\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"iser_conn_state_mutex\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"iser_flush_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"flush_cv\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"iser_lock\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"iser\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.icl_conn* (i8*, %struct.mtx*)* @iser_new_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.icl_conn* @iser_new_conn(i8* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.icl_conn*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mtx* %1, %struct.mtx** %5, align 8
  %8 = call i32 @refcount_acquire(i32* @icl_iser_ncons)
  %9 = load i32, i32* @M_ICL_ISER, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @kobj_create(i32* @icl_iser_class, i32 %9, i32 %12)
  %14 = inttoptr i64 %13 to %struct.iser_conn*
  store %struct.iser_conn* %14, %struct.iser_conn** %6, align 8
  %15 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %16 = icmp ne %struct.iser_conn* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i32 @ISER_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @refcount_release(i32* @icl_iser_ncons)
  store %struct.icl_conn* null, %struct.icl_conn** %3, align 8
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 3
  %23 = call i32 @cv_init(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %25 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %24, i32 0, i32 2
  %26 = call i32 @sx_init(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %28 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %31)
  %33 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %34 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @cv_init(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %39 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %44 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %43, i32 0, i32 0
  store %struct.icl_conn* %44, %struct.icl_conn** %7, align 8
  %45 = load %struct.mtx*, %struct.mtx** %5, align 8
  %46 = load %struct.icl_conn*, %struct.icl_conn** %7, align 8
  %47 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %46, i32 0, i32 4
  store %struct.mtx* %45, %struct.mtx** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.icl_conn*, %struct.icl_conn** %7, align 8
  %50 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @M_TEMP, align 4
  %52 = call i32 @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.icl_conn*, %struct.icl_conn** %7, align 8
  %54 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.icl_conn*, %struct.icl_conn** %7, align 8
  %56 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load %struct.icl_conn*, %struct.icl_conn** %7, align 8
  %58 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  %59 = load %struct.icl_conn*, %struct.icl_conn** %7, align 8
  store %struct.icl_conn* %59, %struct.icl_conn** %3, align 8
  br label %60

60:                                               ; preds = %20, %17
  %61 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  ret %struct.icl_conn* %61
}

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i64 @kobj_create(i32*, i32, i32) #1

declare dso_local i32 @ISER_ERR(i8*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
