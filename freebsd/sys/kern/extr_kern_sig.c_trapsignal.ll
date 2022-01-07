; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_trapsignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_trapsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, i32, %struct.TYPE_6__*, %struct.sigacts* }
%struct.TYPE_6__ = type { i32 (i64, %struct.TYPE_7__*, i32*)* }
%struct.sigacts = type { i64*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"invalid signal\00", align 1
@P_TRACED = common dso_local global i32 0, align 4
@kern_forcesigexit = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8
@KTR_PSIG = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trapsignal(%struct.thread* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.sigacts*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @_SIG_VALID(i32 %18)
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.proc*, %struct.proc** %6, align 8
  %22 = call i32 @PROC_LOCK(%struct.proc* %21)
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 3
  %25 = load %struct.sigacts*, %struct.sigacts** %24, align 8
  store %struct.sigacts* %25, %struct.sigacts** %5, align 8
  %26 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %27 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %26, i32 0, i32 1
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load %struct.proc*, %struct.proc** %6, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @P_TRACED, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %2
  %36 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %37 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @SIGISMEMBER(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load %struct.thread*, %struct.thread** %3, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @SIGISMEMBER(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %42
  %50 = load %struct.proc*, %struct.proc** %6, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (i64, %struct.TYPE_7__*, i32*)*, i32 (i64, %struct.TYPE_7__*, i32*)** %53, align 8
  %55 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %56 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @_SIG_IDX(i32 %58)
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load %struct.thread*, %struct.thread** %3, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = call i32 %54(i64 %61, %struct.TYPE_7__* %62, i32* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.thread*, %struct.thread** %3, align 8
  %68 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %69 = call i32 @postsig_done(i32 %66, %struct.thread* %67, %struct.sigacts* %68)
  %70 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %71 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %70, i32 0, i32 1
  %72 = call i32 @mtx_unlock(i32* %71)
  br label %128

73:                                               ; preds = %42, %35, %2
  %74 = load i64, i64* @kern_forcesigexit, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %116

76:                                               ; preds = %73
  %77 = load %struct.thread*, %struct.thread** %3, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @SIGISMEMBER(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %85 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @_SIG_IDX(i32 %87)
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SIG_IGN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %83, %76
  %94 = load %struct.thread*, %struct.thread** %3, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @SIGDELSET(i32 %96, i32 %97)
  %99 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %100 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @SIGDELSET(i32 %101, i32 %102)
  %104 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %105 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @SIGDELSET(i32 %106, i32 %107)
  %109 = load i64, i64* @SIG_DFL, align 8
  %110 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %111 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @_SIG_IDX(i32 %113)
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %109, i64* %115, align 8
  br label %116

116:                                              ; preds = %93, %83, %73
  %117 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %118 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %117, i32 0, i32 1
  %119 = call i32 @mtx_unlock(i32* %118)
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.proc*, %struct.proc** %6, align 8
  %122 = getelementptr inbounds %struct.proc, %struct.proc* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.proc*, %struct.proc** %6, align 8
  %124 = load %struct.thread*, %struct.thread** %3, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = call i32 @tdsendsignal(%struct.proc* %123, %struct.thread* %124, i32 %125, %struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %116, %49
  %129 = load %struct.proc*, %struct.proc** %6, align 8
  %130 = call i32 @PROC_UNLOCK(%struct.proc* %129)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @_SIG_VALID(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i64 @_SIG_IDX(i32) #1

declare dso_local i32 @postsig_done(i32, %struct.thread*, %struct.sigacts*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @tdsendsignal(%struct.proc*, %struct.thread*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
