; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_which.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_which.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { %struct.TYPE_2__*, i32, %struct.proc* }
%struct.TYPE_2__ = type { i32 }
%struct.cpuset = type { i32 }
%struct.prison = type { i32, %struct.cpuset* }

@curproc = common dso_local global %struct.proc* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@allprison_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuset_which(i32 %0, i32 %1, %struct.proc** %2, %struct.thread** %3, %struct.cpuset** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc**, align 8
  %10 = alloca %struct.thread**, align 8
  %11 = alloca %struct.cpuset**, align 8
  %12 = alloca %struct.cpuset*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.proc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.prison*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.proc** %2, %struct.proc*** %9, align 8
  store %struct.thread** %3, %struct.thread*** %10, align 8
  store %struct.cpuset** %4, %struct.cpuset*** %11, align 8
  store %struct.proc* null, %struct.proc** %14, align 8
  %17 = load %struct.proc**, %struct.proc*** %9, align 8
  store %struct.proc* null, %struct.proc** %17, align 8
  store %struct.thread* null, %struct.thread** %13, align 8
  %18 = load %struct.thread**, %struct.thread*** %10, align 8
  store %struct.thread* null, %struct.thread** %18, align 8
  store %struct.cpuset* null, %struct.cpuset** %12, align 8
  %19 = load %struct.cpuset**, %struct.cpuset*** %11, align 8
  store %struct.cpuset* null, %struct.cpuset** %19, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %105 [
    i32 129, label %21
    i32 128, label %35
    i32 133, label %54
    i32 130, label %78
    i32 131, label %104
    i32 132, label %104
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.proc*, %struct.proc** @curproc, align 8
  %26 = call i32 @PROC_LOCK(%struct.proc* %25)
  %27 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %27, %struct.proc** %14, align 8
  br label %107

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.proc* @pfind(i32 %29)
  store %struct.proc* %30, %struct.proc** %14, align 8
  %31 = icmp eq %struct.proc* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ESRCH, align 4
  store i32 %33, i32* %6, align 4
  br label %128

34:                                               ; preds = %28
  br label %107

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.proc*, %struct.proc** @curproc, align 8
  %40 = call i32 @PROC_LOCK(%struct.proc* %39)
  %41 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %41, %struct.proc** %14, align 8
  %42 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %42, %struct.thread** %13, align 8
  br label %107

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.thread* @tdfind(i32 %44, i32 -1)
  store %struct.thread* %45, %struct.thread** %13, align 8
  %46 = load %struct.thread*, %struct.thread** %13, align 8
  %47 = icmp eq %struct.thread* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @ESRCH, align 4
  store i32 %49, i32* %6, align 4
  br label %128

50:                                               ; preds = %43
  %51 = load %struct.thread*, %struct.thread** %13, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 2
  %53 = load %struct.proc*, %struct.proc** %52, align 8
  store %struct.proc* %53, %struct.proc** %14, align 8
  br label %107

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.thread*, %struct.thread** @curthread, align 8
  %59 = call i32 @thread_lock(%struct.thread* %58)
  %60 = load %struct.thread*, %struct.thread** @curthread, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.cpuset* @cpuset_refbase(i32 %62)
  store %struct.cpuset* %63, %struct.cpuset** %12, align 8
  %64 = load %struct.thread*, %struct.thread** @curthread, align 8
  %65 = call i32 @thread_unlock(%struct.thread* %64)
  br label %70

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.thread*, %struct.thread** @curthread, align 8
  %69 = call %struct.cpuset* @cpuset_lookup(i32 %67, %struct.thread* %68)
  store %struct.cpuset* %69, %struct.cpuset** %12, align 8
  br label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.cpuset*, %struct.cpuset** %12, align 8
  %72 = icmp ne %struct.cpuset* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.cpuset*, %struct.cpuset** %12, align 8
  %75 = load %struct.cpuset**, %struct.cpuset*** %11, align 8
  store %struct.cpuset* %74, %struct.cpuset** %75, align 8
  store i32 0, i32* %6, align 4
  br label %128

76:                                               ; preds = %70
  %77 = load i32, i32* @ESRCH, align 4
  store i32 %77, i32* %6, align 4
  br label %128

78:                                               ; preds = %5
  %79 = call i32 @sx_slock(i32* @allprison_lock)
  %80 = load %struct.thread*, %struct.thread** @curthread, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.prison* @prison_find_child(i32 %84, i32 %85)
  store %struct.prison* %86, %struct.prison** %16, align 8
  %87 = call i32 @sx_sunlock(i32* @allprison_lock)
  %88 = load %struct.prison*, %struct.prison** %16, align 8
  %89 = icmp eq %struct.prison* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @ESRCH, align 4
  store i32 %91, i32* %6, align 4
  br label %128

92:                                               ; preds = %78
  %93 = load %struct.prison*, %struct.prison** %16, align 8
  %94 = getelementptr inbounds %struct.prison, %struct.prison* %93, i32 0, i32 1
  %95 = load %struct.cpuset*, %struct.cpuset** %94, align 8
  %96 = call i32 @cpuset_ref(%struct.cpuset* %95)
  %97 = load %struct.prison*, %struct.prison** %16, align 8
  %98 = getelementptr inbounds %struct.prison, %struct.prison* %97, i32 0, i32 1
  %99 = load %struct.cpuset*, %struct.cpuset** %98, align 8
  %100 = load %struct.cpuset**, %struct.cpuset*** %11, align 8
  store %struct.cpuset* %99, %struct.cpuset** %100, align 8
  %101 = load %struct.prison*, %struct.prison** %16, align 8
  %102 = getelementptr inbounds %struct.prison, %struct.prison* %101, i32 0, i32 0
  %103 = call i32 @mtx_unlock(i32* %102)
  store i32 0, i32* %6, align 4
  br label %128

104:                                              ; preds = %5, %5
  store i32 0, i32* %6, align 4
  br label %128

105:                                              ; preds = %5
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %6, align 4
  br label %128

107:                                              ; preds = %50, %38, %34, %24
  %108 = load %struct.thread*, %struct.thread** @curthread, align 8
  %109 = load %struct.proc*, %struct.proc** %14, align 8
  %110 = call i32 @p_cansched(%struct.thread* %108, %struct.proc* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.proc*, %struct.proc** %14, align 8
  %115 = call i32 @PROC_UNLOCK(%struct.proc* %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %6, align 4
  br label %128

117:                                              ; preds = %107
  %118 = load %struct.thread*, %struct.thread** %13, align 8
  %119 = icmp eq %struct.thread* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.proc*, %struct.proc** %14, align 8
  %122 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc* %121)
  store %struct.thread* %122, %struct.thread** %13, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.proc*, %struct.proc** %14, align 8
  %125 = load %struct.proc**, %struct.proc*** %9, align 8
  store %struct.proc* %124, %struct.proc** %125, align 8
  %126 = load %struct.thread*, %struct.thread** %13, align 8
  %127 = load %struct.thread**, %struct.thread*** %10, align 8
  store %struct.thread* %126, %struct.thread** %127, align 8
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %123, %113, %105, %104, %92, %90, %76, %73, %48, %32
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local %struct.thread* @tdfind(i32, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local %struct.cpuset* @cpuset_refbase(i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local %struct.cpuset* @cpuset_lookup(i32, %struct.thread*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.prison* @prison_find_child(i32, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @cpuset_ref(%struct.cpuset*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @p_cansched(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
