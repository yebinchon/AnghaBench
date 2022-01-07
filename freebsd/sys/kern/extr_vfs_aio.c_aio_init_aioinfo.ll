; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_init_aioinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_init_aioinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.proc*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.kaioinfo = type { i32, %struct.kaioinfo*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@kaio_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aiomtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_NEW = common dso_local global i32 0, align 4
@aio_kick_helper = common dso_local global i32 0, align 4
@aio_schedule_fsync = common dso_local global i32 0, align 4
@num_aio_procs = common dso_local global i64 0, align 8
@target_aio_procs = common dso_local global i32 0, align 4
@max_aio_procs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_init_aioinfo(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.kaioinfo*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load i32, i32* @kaio_zone, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = call %struct.proc* @uma_zalloc(i32 %4, i32 %5)
  %7 = bitcast %struct.proc* %6 to %struct.kaioinfo*
  store %struct.kaioinfo* %7, %struct.kaioinfo** %3, align 8
  %8 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %9 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %8, i32 0, i32 0
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = load i32, i32* @MTX_NEW, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mtx_init(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  %14 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %15 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %17 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %19 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %18, i32 0, i32 11
  store i64 0, i64* %19, align 8
  %20 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %21 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %23 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %22, i32 0, i32 9
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %26 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %25, i32 0, i32 8
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %29 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %28, i32 0, i32 7
  %30 = call i32 @TAILQ_INIT(i32* %29)
  %31 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %32 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %31, i32 0, i32 6
  %33 = call i32 @TAILQ_INIT(i32* %32)
  %34 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %35 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %34, i32 0, i32 5
  %36 = call i32 @TAILQ_INIT(i32* %35)
  %37 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %38 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %37, i32 0, i32 4
  %39 = call i32 @TAILQ_INIT(i32* %38)
  %40 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %41 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %40, i32 0, i32 3
  %42 = load i32, i32* @aio_kick_helper, align 4
  %43 = load %struct.proc*, %struct.proc** %2, align 8
  %44 = call i32 @TASK_INIT(i32* %41, i32 0, i32 %42, %struct.proc* %43)
  %45 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %46 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %45, i32 0, i32 2
  %47 = load i32, i32* @aio_schedule_fsync, align 4
  %48 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %49 = bitcast %struct.kaioinfo* %48 to %struct.proc*
  %50 = call i32 @TASK_INIT(i32* %46, i32 0, i32 %47, %struct.proc* %49)
  %51 = load %struct.proc*, %struct.proc** %2, align 8
  %52 = call i32 @PROC_LOCK(%struct.proc* %51)
  %53 = load %struct.proc*, %struct.proc** %2, align 8
  %54 = getelementptr inbounds %struct.proc, %struct.proc* %53, i32 0, i32 1
  %55 = load %struct.proc*, %struct.proc** %54, align 8
  %56 = icmp eq %struct.proc* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %59 = bitcast %struct.kaioinfo* %58 to %struct.proc*
  %60 = load %struct.proc*, %struct.proc** %2, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 1
  store %struct.proc* %59, %struct.proc** %61, align 8
  %62 = load %struct.proc*, %struct.proc** %2, align 8
  %63 = call i32 @PROC_UNLOCK(%struct.proc* %62)
  br label %74

64:                                               ; preds = %1
  %65 = load %struct.proc*, %struct.proc** %2, align 8
  %66 = call i32 @PROC_UNLOCK(%struct.proc* %65)
  %67 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %68 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %67, i32 0, i32 0
  %69 = call i32 @mtx_destroy(i32* %68)
  %70 = load i32, i32* @kaio_zone, align 4
  %71 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %72 = bitcast %struct.kaioinfo* %71 to %struct.proc*
  %73 = call i32 @uma_zfree(i32 %70, %struct.proc* %72)
  br label %74

74:                                               ; preds = %64, %57
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i64, i64* @num_aio_procs, align 8
  %77 = load i32, i32* @target_aio_procs, align 4
  %78 = load i32, i32* @max_aio_procs, align 4
  %79 = call i64 @MIN(i32 %77, i32 %78)
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @aio_newproc(i32* null)
  br label %75

83:                                               ; preds = %75
  ret void
}

declare dso_local %struct.proc* @uma_zalloc(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.proc*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.proc*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @aio_newproc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
