; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_kt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_kt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@GKT_RUN = common dso_local global i64 0, align 8
@g_multipath_kt_state = common dso_local global i64 0, align 8
@gmtbq_mtx = common dso_local global i32 0, align 4
@gmtbq = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gkt:wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_multipath_kt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_kt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bio*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @GKT_RUN, align 8
  store i64 %4, i64* @g_multipath_kt_state, align 8
  %5 = call i32 @mtx_lock(i32* @gmtbq_mtx)
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i64, i64* @g_multipath_kt_state, align 8
  %8 = load i64, i64* @GKT_RUN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %16, %10
  %12 = call %struct.bio* @bioq_takefirst(i32* @gmtbq)
  store %struct.bio* %12, %struct.bio** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = icmp eq %struct.bio* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %21

16:                                               ; preds = %11
  %17 = call i32 @mtx_unlock(i32* @gmtbq_mtx)
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = call i32 @g_multipath_done_error(%struct.bio* %18)
  %20 = call i32 @mtx_lock(i32* @gmtbq_mtx)
  br label %11

21:                                               ; preds = %15
  %22 = load i64, i64* @g_multipath_kt_state, align 8
  %23 = load i64, i64* @GKT_RUN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @PRIBIO, align 4
  %28 = call i32 @msleep(i64* @g_multipath_kt_state, i32* @gmtbq_mtx, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %6

29:                                               ; preds = %25, %6
  %30 = call i32 @mtx_unlock(i32* @gmtbq_mtx)
  %31 = call i32 @wakeup(i64* @g_multipath_kt_state)
  %32 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_multipath_done_error(%struct.bio*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
