; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_gsched_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_gsched_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gsched = type { i32 }
%struct.g_gsched_unregparm = type { i32, %struct.g_gsched* }

@.str = private unnamed_addr constant [13 x i8] c"Modevent %d.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Loaded module %s error %d.\00", align 1
@g_sched_class = common dso_local global i32 0, align 4
@g_gsched_unregister = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unloaded module %s error %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_gsched_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_gsched*, align 8
  %8 = alloca %struct.g_gsched_unregparm, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.g_gsched*
  store %struct.g_gsched* %11, %struct.g_gsched** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i32, i8*, i32, ...) @G_SCHED_DEBUG(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @g_gsched_global_init()
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %48 [
    i32 129, label %17
    i32 128, label %30
  ]

17:                                               ; preds = %3
  %18 = load %struct.g_gsched*, %struct.g_gsched** %7, align 8
  %19 = call i32 @g_gsched_register(%struct.g_gsched* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.g_gsched*, %struct.g_gsched** %7, align 8
  %21 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, i8*, i32, ...) @G_SCHED_DEBUG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @g_retaste(i32* @g_sched_class)
  br label %29

29:                                               ; preds = %27, %17
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.g_gsched*, %struct.g_gsched** %7, align 8
  %32 = getelementptr inbounds %struct.g_gsched_unregparm, %struct.g_gsched_unregparm* %8, i32 0, i32 1
  store %struct.g_gsched* %31, %struct.g_gsched** %32, align 8
  %33 = getelementptr inbounds %struct.g_gsched_unregparm, %struct.g_gsched_unregparm* %8, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @g_gsched_unregister, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32 @g_waitfor_event(i32 %34, %struct.g_gsched_unregparm* %8, i32 %35, i32* null)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.g_gsched_unregparm, %struct.g_gsched_unregparm* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.g_gsched*, %struct.g_gsched** %7, align 8
  %44 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i32, i8*, i32, ...) @G_SCHED_DEBUG(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %3, %42, %29
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @G_SCHED_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_gsched_global_init(...) #1

declare dso_local i32 @g_gsched_register(%struct.g_gsched*) #1

declare dso_local i32 @g_retaste(i32*) #1

declare dso_local i32 @g_waitfor_event(i32, %struct.g_gsched_unregparm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
