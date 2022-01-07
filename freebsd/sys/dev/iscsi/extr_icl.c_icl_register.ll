; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl.c_icl_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl.c_icl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.icl_drv_limits = type opaque
%struct.icl_conn = type opaque
%struct.mtx = type opaque
%struct.icl_module = type { i32, i32, i32 (%struct.icl_drv_limits.0*)*, %struct.icl_conn* (i8*, %struct.mtx.1*)*, i32 }
%struct.icl_drv_limits.0 = type opaque
%struct.mtx.1 = type opaque

@sc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"offload \22%s\22 already registered\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@M_ICL = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@im_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"offload \22%s\22 registered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icl_register(i8* %0, i32 %1, i32 %2, i32 (%struct.icl_drv_limits*)* %3, %struct.icl_conn* (i8*, %struct.mtx*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.icl_drv_limits*)*, align 8
  %11 = alloca %struct.icl_conn* (i8*, %struct.mtx*)*, align 8
  %12 = alloca %struct.icl_module*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (%struct.icl_drv_limits*)* %3, i32 (%struct.icl_drv_limits*)** %10, align 8
  store %struct.icl_conn* (i8*, %struct.mtx*)* %4, %struct.icl_conn* (i8*, %struct.mtx*)** %11, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @sx_xlock(i32* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.icl_module* @icl_find(i8* %16, i32 %17, i32 1)
  store %struct.icl_module* %18, %struct.icl_module** %12, align 8
  %19 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %20 = icmp ne %struct.icl_module* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @ICL_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @sx_xunlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %6, align 4
  br label %63

28:                                               ; preds = %5
  %29 = load i32, i32* @M_ICL, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.icl_module* @malloc(i32 32, i32 %29, i32 %32)
  store %struct.icl_module* %33, %struct.icl_module** %12, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @M_ICL, align 4
  %36 = call i32 @strdup(i8* %34, i32 %35)
  %37 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %38 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %41 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %44 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32 (%struct.icl_drv_limits*)*, i32 (%struct.icl_drv_limits*)** %10, align 8
  %46 = bitcast i32 (%struct.icl_drv_limits*)* %45 to i32 (%struct.icl_drv_limits.0*)*
  %47 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %48 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %47, i32 0, i32 2
  store i32 (%struct.icl_drv_limits.0*)* %46, i32 (%struct.icl_drv_limits.0*)** %48, align 8
  %49 = load %struct.icl_conn* (i8*, %struct.mtx*)*, %struct.icl_conn* (i8*, %struct.mtx*)** %11, align 8
  %50 = bitcast %struct.icl_conn* (i8*, %struct.mtx*)* %49 to %struct.icl_conn* (i8*, %struct.mtx.1*)*
  %51 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %52 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %51, i32 0, i32 3
  store %struct.icl_conn* (i8*, %struct.mtx.1*)* %50, %struct.icl_conn* (i8*, %struct.mtx.1*)** %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.icl_module*, %struct.icl_module** %12, align 8
  %56 = load i32, i32* @im_next, align 4
  %57 = call i32 @TAILQ_INSERT_HEAD(i32* %54, %struct.icl_module* %55, i32 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @sx_xunlock(i32* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %28, %21
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.icl_module* @icl_find(i8*, i32, i32) #1

declare dso_local i32 @ICL_WARN(i8*, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local %struct.icl_module* @malloc(i32, i32, i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.icl_module*, i32) #1

declare dso_local i32 @ICL_DEBUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
