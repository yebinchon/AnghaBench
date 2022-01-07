; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.procdesc*, i32* }
%struct.procdesc = type { i32, %struct.proc* }
%struct.proc = type { i64, i32, %struct.TYPE_3__*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }

@DTYPE_PROCDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"procdesc_close: !procdesc\00", align 1
@badfileops = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@PDF_CLOSED = common dso_local global i32 0, align 4
@PRS_ZOMBIE = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@PDF_DAEMON = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.thread*)* @procdesc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procdesc_close(%struct.file* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.procdesc*, align 8
  %6 = alloca %struct.proc*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DTYPE_PROCDESC, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.procdesc*, %struct.procdesc** %15, align 8
  store %struct.procdesc* %16, %struct.procdesc** %5, align 8
  %17 = load %struct.file*, %struct.file** %3, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 2
  store i32* @badfileops, i32** %18, align 8
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  store %struct.procdesc* null, %struct.procdesc** %20, align 8
  %21 = call i32 @sx_xlock(i32* @proctree_lock)
  %22 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %23 = call i32 @PROCDESC_LOCK(%struct.procdesc* %22)
  %24 = load i32, i32* @PDF_CLOSED, align 4
  %25 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %26 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %30 = call i32 @PROCDESC_UNLOCK(%struct.procdesc* %29)
  %31 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %32 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %31, i32 0, i32 1
  %33 = load %struct.proc*, %struct.proc** %32, align 8
  store %struct.proc* %33, %struct.proc** %6, align 8
  %34 = load %struct.proc*, %struct.proc** %6, align 8
  %35 = icmp eq %struct.proc* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = call i32 @sx_xunlock(i32* @proctree_lock)
  br label %105

38:                                               ; preds = %2
  %39 = load %struct.proc*, %struct.proc** %6, align 8
  %40 = call i32 @PROC_LOCK(%struct.proc* %39)
  %41 = load %struct.proc*, %struct.proc** %6, align 8
  %42 = call i32 @AUDIT_ARG_PROCESS(%struct.proc* %41)
  %43 = load %struct.proc*, %struct.proc** %6, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PRS_ZOMBIE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @curthread, align 4
  %50 = load %struct.proc*, %struct.proc** %6, align 8
  %51 = call i32 @proc_reap(i32 %49, %struct.proc* %50, i32* null, i32 0)
  br label %104

52:                                               ; preds = %38
  %53 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %54 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %53, i32 0, i32 1
  store %struct.proc* null, %struct.proc** %54, align 8
  %55 = load %struct.proc*, %struct.proc** %6, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %58 = call i32 @procdesc_free(%struct.procdesc* %57)
  %59 = load i32, i32* @SIGCHLD, align 4
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.proc*, %struct.proc** %6, align 8
  %63 = getelementptr inbounds %struct.proc, %struct.proc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @P_TRACED, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %52
  %69 = load %struct.proc*, %struct.proc** %6, align 8
  %70 = load %struct.proc*, %struct.proc** %6, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @proc_reparent(%struct.proc* %69, %struct.TYPE_3__* %72, i32 1)
  br label %89

74:                                               ; preds = %52
  %75 = load %struct.proc*, %struct.proc** %6, align 8
  %76 = call i32 @proc_clear_orphan(%struct.proc* %75)
  %77 = load %struct.proc*, %struct.proc** %6, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.proc*, %struct.proc** %6, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.proc*, %struct.proc** %6, align 8
  %85 = load %struct.proc*, %struct.proc** %6, align 8
  %86 = getelementptr inbounds %struct.proc, %struct.proc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @proc_add_orphan(%struct.proc* %84, %struct.TYPE_3__* %87)
  br label %89

89:                                               ; preds = %74, %68
  %90 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %91 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PDF_DAEMON, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.proc*, %struct.proc** %6, align 8
  %98 = load i32, i32* @SIGKILL, align 4
  %99 = call i32 @kern_psignal(%struct.proc* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.proc*, %struct.proc** %6, align 8
  %102 = call i32 @PROC_UNLOCK(%struct.proc* %101)
  %103 = call i32 @sx_xunlock(i32* @proctree_lock)
  br label %104

104:                                              ; preds = %100, %48
  br label %105

105:                                              ; preds = %104, %36
  %106 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %107 = call i32 @procdesc_free(%struct.procdesc* %106)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @PROCDESC_LOCK(%struct.procdesc*) #1

declare dso_local i32 @PROCDESC_UNLOCK(%struct.procdesc*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @AUDIT_ARG_PROCESS(%struct.proc*) #1

declare dso_local i32 @proc_reap(i32, %struct.proc*, i32*, i32) #1

declare dso_local i32 @procdesc_free(%struct.procdesc*) #1

declare dso_local i32 @proc_reparent(%struct.proc*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @proc_clear_orphan(%struct.proc*) #1

declare dso_local i32 @proc_add_orphan(%struct.proc*, %struct.TYPE_3__*) #1

declare dso_local i32 @kern_psignal(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
