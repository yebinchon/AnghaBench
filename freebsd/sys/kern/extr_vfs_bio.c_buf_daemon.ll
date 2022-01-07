; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bufdomain = type { i32, i32 }

@shutdown_pre_sync = common dso_local global i32 0, align 4
@kthread_shutdown = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@SHUTDOWN_PRI_LAST = common dso_local global i64 0, align 8
@buf_domains = common dso_local global i32 0, align 4
@bufspace_daemon = common dso_local global i64 0, align 8
@bdomain = common dso_local global %struct.bufdomain* null, align 8
@curproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bufspacedaemon-%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error %d spawning bufspace daemon\00", align 1
@TDP_NORUNNINGBUF = common dso_local global i32 0, align 4
@TDP_BUFNEED = common dso_local global i32 0, align 4
@bdlock = common dso_local global i32 0, align 4
@bd_request = common dso_local global i64 0, align 8
@bd_speedupreq = common dso_local global i32 0, align 4
@PRI_USER = common dso_local global i32 0, align 4
@BUF_DOMAINS = common dso_local global i32 0, align 4
@bdlodirty = common dso_local global i32 0, align 4
@runningbufspace = common dso_local global i64 0, align 8
@lorunningspace = common dso_local global i64 0, align 8
@PVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"psleep\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"qsleep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @buf_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_daemon() #0 {
  %1 = alloca %struct.bufdomain*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @shutdown_pre_sync, align 4
  %7 = load i32, i32* @kthread_shutdown, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %9 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %10 = add nsw i64 %9, 100
  %11 = call i32 @EVENTHANDLER_REGISTER(i32 %6, i32 %7, %struct.TYPE_3__* %8, i64 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @buf_domains, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i64, i64* @bufspace_daemon, align 8
  %18 = inttoptr i64 %17 to void (i8*)*
  %19 = load %struct.bufdomain*, %struct.bufdomain** @bdomain, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %19, i64 %21
  %23 = load i32, i32* @curproc, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @kthread_add(void (i8*)* %18, %struct.bufdomain* %22, i32 %23, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load i32, i32* @TDP_NORUNNINGBUF, align 4
  %37 = load i32, i32* @TDP_BUFNEED, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = call i32 @mtx_lock(i32* @bdlock)
  br label %44

44:                                               ; preds = %113, %35
  store i64 0, i64* @bd_request, align 8
  %45 = call i32 @mtx_unlock(i32* @bdlock)
  %46 = call i32 (...) @kthread_suspend_check()
  %47 = load i32, i32* @bd_speedupreq, align 4
  store i32 %47, i32* %2, align 4
  store i32 0, i32* @bd_speedupreq, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %89, %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @buf_domains, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load %struct.bufdomain*, %struct.bufdomain** @bdomain, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %53, i64 %55
  store %struct.bufdomain* %56, %struct.bufdomain** %1, align 8
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.bufdomain*, %struct.bufdomain** %1, align 8
  %61 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.bufdomain*, %struct.bufdomain** %1, align 8
  %66 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %85, %68
  %70 = load %struct.bufdomain*, %struct.bufdomain** %1, align 8
  %71 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.bufdomain*, %struct.bufdomain** %1, align 8
  %77 = load %struct.bufdomain*, %struct.bufdomain** %1, align 8
  %78 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %3, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i64 @buf_flush(i32* null, %struct.bufdomain* %76, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @PRI_USER, align 4
  %87 = call i32 @kern_yield(i32 %86)
  br label %69

88:                                               ; preds = %84, %69
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %48

92:                                               ; preds = %48
  %93 = call i32 @mtx_lock(i32* @bdlock)
  %94 = load i32, i32* @BUF_DOMAINS, align 4
  %95 = call i32 @BIT_EMPTY(i32 %94, i32* @bdlodirty)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  store i64 0, i64* @bd_request, align 8
  %98 = call i32 (...) @bdirtywakeup()
  %99 = load i64, i64* @runningbufspace, align 8
  %100 = load i64, i64* @lorunningspace, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (...) @runningwakeup()
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* @PVM, align 4
  %106 = load i32, i32* @hz, align 4
  %107 = call i32 @msleep(i64* @bd_request, i32* @bdlock, i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %113

108:                                              ; preds = %92
  %109 = load i32, i32* @PVM, align 4
  %110 = load i32, i32* @hz, align 4
  %111 = sdiv i32 %110, 10
  %112 = call i32 @msleep(i64* @bd_request, i32* @bdlock, i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108, %104
  br label %44
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @kthread_add(void (i8*)*, %struct.bufdomain*, i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kthread_suspend_check(...) #1

declare dso_local i64 @buf_flush(i32*, %struct.bufdomain*, i32) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @BIT_EMPTY(i32, i32*) #1

declare dso_local i32 @bdirtywakeup(...) #1

declare dso_local i32 @runningwakeup(...) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
