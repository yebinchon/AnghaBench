; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigprocmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_kern_sigprocmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SIGPROCMASK_PROC_LOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@SIGPROCMASK_PS_LOCKED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@SIGPROCMASK_OLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_sigprocmask(%struct.thread* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.proc*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @SIGPROCMASK_PROC_LOCKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.proc*, %struct.proc** %13, align 8
  %24 = load i32, i32* @MA_OWNED, align 4
  %25 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %23, i32 %24)
  br label %29

26:                                               ; preds = %5
  %27 = load %struct.proc*, %struct.proc** %13, align 8
  %28 = call i32 @PROC_LOCK(%struct.proc* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.proc*, %struct.proc** %13, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SIGPROCMASK_PS_LOCKED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @MA_OWNED, align 4
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @MA_NOTOWNED, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @mtx_assert(i32* %33, i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.thread*, %struct.thread** %6, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  store i32 0, i32* %14, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %130

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %117 [
    i32 130, label %57
    i32 128, label %76
    i32 129, label %85
  ]

57:                                               ; preds = %55
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SIG_CANTMASK(i32 %59)
  %61 = load %struct.thread*, %struct.thread** %6, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %12, align 4
  %64 = load %struct.thread*, %struct.thread** %6, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SIGSETOR(i32 %66, i32 %68)
  %70 = load %struct.thread*, %struct.thread** %6, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @SIGSETNAND(i32 %73, i32 %74)
  br label %119

76:                                               ; preds = %55
  %77 = load %struct.thread*, %struct.thread** %6, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SIGSETNAND(i32 %79, i32 %81)
  %83 = load %struct.thread*, %struct.thread** %6, align 8
  %84 = call i32 @signotify(%struct.thread* %83)
  br label %131

85:                                               ; preds = %55
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SIG_CANTMASK(i32 %87)
  %89 = load %struct.thread*, %struct.thread** %6, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @SIGPROCMASK_OLD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load %struct.thread*, %struct.thread** %6, align 8
  %98 = getelementptr inbounds %struct.thread, %struct.thread* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SIGSETLO(i32 %99, i32 %101)
  br label %108

103:                                              ; preds = %85
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.thread*, %struct.thread** %6, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.thread*, %struct.thread** %6, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @SIGSETNAND(i32 %112, i32 %113)
  %115 = load %struct.thread*, %struct.thread** %6, align 8
  %116 = call i32 @signotify(%struct.thread* %115)
  br label %119

117:                                              ; preds = %55
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %14, align 4
  br label %131

119:                                              ; preds = %108, %57
  %120 = load %struct.proc*, %struct.proc** %13, align 8
  %121 = getelementptr inbounds %struct.proc, %struct.proc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.proc*, %struct.proc** %13, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @reschedule_signals(%struct.proc* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %52
  br label %131

131:                                              ; preds = %130, %117, %76
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @SIGPROCMASK_PROC_LOCKED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load %struct.proc*, %struct.proc** %13, align 8
  %138 = call i32 @PROC_UNLOCK(%struct.proc* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %14, align 4
  ret i32 %140
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @SIG_CANTMASK(i32) #1

declare dso_local i32 @SIGSETOR(i32, i32) #1

declare dso_local i32 @SIGSETNAND(i32, i32) #1

declare dso_local i32 @signotify(%struct.thread*) #1

declare dso_local i32 @SIGSETLO(i32, i32) #1

declare dso_local i32 @reschedule_signals(%struct.proc*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
