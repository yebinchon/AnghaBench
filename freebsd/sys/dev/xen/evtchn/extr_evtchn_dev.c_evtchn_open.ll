; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.per_user_data = type { %struct.per_user_data*, i32, i32, i32, i32 }

@M_EVTCHN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"evtchn_bind_mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"evtchn_ringc_sx\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"evtchn_ringp_mutex\00", align 1
@evtchn_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @evtchn_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.per_user_data*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load i32, i32* @M_EVTCHN, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @malloc(i32 24, i32 %11, i32 %14)
  %16 = bitcast i8* %15 to %struct.per_user_data*
  store %struct.per_user_data* %16, %struct.per_user_data** %9, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @M_EVTCHN, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @malloc(i32 %17, i32 %18, i32 %21)
  %23 = bitcast i8* %22 to %struct.per_user_data*
  %24 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %25 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %24, i32 0, i32 0
  store %struct.per_user_data* %23, %struct.per_user_data** %25, align 8
  %26 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %27 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %26, i32 0, i32 3
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null, i32 %28)
  %30 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %31 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %30, i32 0, i32 1
  %32 = call i32 @sx_init(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %34 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %33, i32 0, i32 2
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = call i32 @mtx_init(i32* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %35)
  %37 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %38 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %37, i32 0, i32 4
  %39 = call i32 @RB_INIT(i32* %38)
  %40 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %41 = load i32, i32* @evtchn_release, align 4
  %42 = call i32 @devfs_set_cdevpriv(%struct.per_user_data* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %4
  %46 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %47 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %46, i32 0, i32 3
  %48 = call i32 @mtx_destroy(i32* %47)
  %49 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %50 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %49, i32 0, i32 2
  %51 = call i32 @mtx_destroy(i32* %50)
  %52 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %53 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %52, i32 0, i32 1
  %54 = call i32 @sx_destroy(i32* %53)
  %55 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %56 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %55, i32 0, i32 0
  %57 = load %struct.per_user_data*, %struct.per_user_data** %56, align 8
  %58 = load i32, i32* @M_EVTCHN, align 4
  %59 = call i32 @free(%struct.per_user_data* %57, i32 %58)
  %60 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %61 = load i32, i32* @M_EVTCHN, align 4
  %62 = call i32 @free(%struct.per_user_data* %60, i32 %61)
  br label %63

63:                                               ; preds = %45, %4
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.per_user_data*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free(%struct.per_user_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
