; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_report_alive_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_report_alive_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@MA_OWNED = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@CLD_TRAPPED = common dso_local global i32 0, align 4
@CLD_STOPPED = common dso_local global i32 0, align 4
@CLD_CONTINUED = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@P_CONTINUED = common dso_local global i32 0, align 4
@P_WAITED = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.proc*, %struct.TYPE_3__*, i32*, i32, i32)* @report_alive_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_alive_proc(%struct.thread* %0, %struct.proc* %1, %struct.TYPE_3__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.proc* %1, %struct.proc** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.proc*, %struct.proc** %8, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %14, i32 %15)
  %17 = load i32, i32* @SA_XLOCKED, align 4
  %18 = call i32 @sx_assert(i32* @proctree_lock, i32 %17)
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @CLD_TRAPPED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @CLD_STOPPED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @CLD_CONTINUED, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22, %6
  %31 = phi i1 [ true, %22 ], [ true, %6 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @MPASS(i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @CLD_CONTINUED, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @WNOWAIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @P_CONTINUED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.proc*, %struct.proc** %8, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %58

52:                                               ; preds = %42
  %53 = load i32, i32* @P_WAITED, align 4
  %54 = load %struct.proc*, %struct.proc** %8, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.thread*, %struct.thread** %7, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 1
  %61 = load %struct.proc*, %struct.proc** %60, align 8
  %62 = call i32 @PROC_LOCK(%struct.proc* %61)
  %63 = load %struct.proc*, %struct.proc** %8, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sigqueue_take(i32 %65)
  %67 = load %struct.thread*, %struct.thread** %7, align 8
  %68 = getelementptr inbounds %struct.thread, %struct.thread* %67, i32 0, i32 1
  %69 = load %struct.proc*, %struct.proc** %68, align 8
  %70 = call i32 @PROC_UNLOCK(%struct.proc* %69)
  br label %71

71:                                               ; preds = %58, %30
  %72 = call i32 @sx_xunlock(i32* @proctree_lock)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %74 = icmp ne %struct.TYPE_3__* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i8*, i8** @SIGCONT, align 8
  br label %87

83:                                               ; preds = %75
  %84 = load %struct.proc*, %struct.proc** %8, align 8
  %85 = getelementptr inbounds %struct.proc, %struct.proc* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i8* [ %82, %81 ], [ %86, %83 ]
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %87, %71
  %92 = load i32*, i32** %10, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i8*, i8** @SIGCONT, align 8
  br label %104

99:                                               ; preds = %94
  %100 = load %struct.proc*, %struct.proc** %8, align 8
  %101 = getelementptr inbounds %struct.proc, %struct.proc* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @W_STOPCODE(i8* %102)
  br label %104

104:                                              ; preds = %99, %97
  %105 = phi i8* [ %98, %97 ], [ %103, %99 ]
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %91
  %109 = load %struct.proc*, %struct.proc** %8, align 8
  %110 = call i32 @PROC_UNLOCK(%struct.proc* %109)
  %111 = load %struct.proc*, %struct.proc** %8, align 8
  %112 = getelementptr inbounds %struct.proc, %struct.proc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.thread*, %struct.thread** %7, align 8
  %115 = getelementptr inbounds %struct.thread, %struct.thread* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %113, i32* %117, align 4
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigqueue_take(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i8* @W_STOPCODE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
