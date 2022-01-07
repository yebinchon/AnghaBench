; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i64, i64, i64, i64, i64 }

@shutdown_pre_sync = common dso_local global i32 0, align 4
@kthread_shutdown = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bufspace\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bufspace_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufspace_daemon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bufdomain*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @shutdown_pre_sync, align 4
  %5 = load i32, i32* @kthread_shutdown, align 4
  %6 = load i32, i32* @curthread, align 4
  %7 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %8 = add nsw i64 %7, 100
  %9 = call i32 @EVENTHANDLER_REGISTER(i32 %4, i32 %5, i32 %6, i64 %8)
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.bufdomain*
  store %struct.bufdomain* %11, %struct.bufdomain** %3, align 8
  br label %12

12:                                               ; preds = %66, %1
  %13 = call i32 (...) @kthread_suspend_check()
  br label %14

14:                                               ; preds = %64, %40, %12
  %15 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %16 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %19 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %24 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %27 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br label %30

30:                                               ; preds = %22, %14
  %31 = phi i1 [ true, %14 ], [ %29, %22 ]
  br i1 %31, label %32, label %66

32:                                               ; preds = %30
  %33 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %34 = call i64 @buf_recycle(%struct.bufdomain* %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %38 = call i64 @bd_flushall(%struct.bufdomain* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %14

41:                                               ; preds = %36
  %42 = call i32 (...) @bd_speedup()
  %43 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %44 = call i32 @BD_LOCK(%struct.bufdomain* %43)
  %45 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %46 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %51 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %50, i32 0, i32 4
  %52 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %53 = call i32 @BD_LOCKPTR(%struct.bufdomain* %52)
  %54 = load i32, i32* @PRIBIO, align 4
  %55 = load i32, i32* @PDROP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @hz, align 4
  %58 = sdiv i32 %57, 10
  %59 = call i32 @msleep(i64* %51, i32 %53, i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %63

60:                                               ; preds = %41
  %61 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %62 = call i32 @BD_UNLOCK(%struct.bufdomain* %61)
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %63, %32
  %65 = call i32 (...) @maybe_yield()
  br label %14

66:                                               ; preds = %30
  %67 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %68 = call i32 @bufspace_daemon_wait(%struct.bufdomain* %67)
  br label %12
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i64) #1

declare dso_local i32 @kthread_suspend_check(...) #1

declare dso_local i64 @buf_recycle(%struct.bufdomain*, i32) #1

declare dso_local i64 @bd_flushall(%struct.bufdomain*) #1

declare dso_local i32 @bd_speedup(...) #1

declare dso_local i32 @BD_LOCK(%struct.bufdomain*) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @BD_LOCKPTR(%struct.bufdomain*) #1

declare dso_local i32 @BD_UNLOCK(%struct.bufdomain*) #1

declare dso_local i32 @maybe_yield(...) #1

declare dso_local i32 @bufspace_daemon_wait(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
