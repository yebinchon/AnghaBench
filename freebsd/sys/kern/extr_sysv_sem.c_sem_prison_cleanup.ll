; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_prison_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_prison_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.prison* }
%struct.prison = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@sem_mtx = common dso_local global i32 0, align 4
@seminfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@sema = common dso_local global %struct.TYPE_10__* null, align 8
@SEM_ALLOC = common dso_local global i32 0, align 4
@sema_mtx = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prison*)* @sem_prison_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sem_prison_cleanup(%struct.prison* %0) #0 {
  %2 = alloca %struct.prison*, align 8
  %3 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %2, align 8
  %4 = call i32 @mtx_lock(i32* @sem_mtx)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @seminfo, i32 0, i32 0), align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sema, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SEM_ALLOC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %9
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sema, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sema, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.prison*, %struct.prison** %36, align 8
  %38 = load %struct.prison*, %struct.prison** %2, align 8
  %39 = icmp eq %struct.prison* %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = load i32*, i32** @sema_mtx, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @mtx_lock(i32* %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @sem_remove(i32 %46, i32* null)
  %48 = load i32*, i32** @sema_mtx, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @mtx_unlock(i32* %51)
  br label %53

53:                                               ; preds = %40, %29, %21, %9
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %5

57:                                               ; preds = %5
  %58 = call i32 @mtx_unlock(i32* @sem_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sem_remove(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
