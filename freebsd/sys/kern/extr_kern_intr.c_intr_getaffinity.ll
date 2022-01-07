; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_getaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_getaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.proc = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i32 0, align 4
@cpuset_root = common dso_local global i32* null, align 8
@CPU_WHICH_TID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_getaffinity(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intr_event*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.intr_event* @intr_lookup(i32 %16)
  store %struct.intr_event* %17, %struct.intr_event** %8, align 8
  %18 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %19 = icmp eq %struct.intr_event* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ESRCH, align 4
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @CPU_ZERO(i32* %23)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %92 [
    i32 129, label %26
    i32 130, label %26
    i32 128, label %49
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %28 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %31 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NOCPU, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32*, i32** @cpuset_root, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @CPU_COPY(i32* %36, i32* %37)
  br label %45

39:                                               ; preds = %26
  %40 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %41 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @CPU_SET(i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %47 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  br label %94

49:                                               ; preds = %22
  %50 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %51 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %50, i32 0, i32 0
  %52 = call i32 @mtx_lock(i32* %51)
  %53 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %54 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %59 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load i32*, i32** @cpuset_root, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @CPU_COPY(i32* %61, i32* %62)
  br label %91

64:                                               ; preds = %49
  %65 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %66 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %73 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %72, i32 0, i32 0
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load i32, i32* @CPU_WHICH_TID, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @cpuset_which(i32 %75, i32 %76, %struct.proc** %10, %struct.thread** %9, i32* null)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  br label %95

82:                                               ; preds = %64
  %83 = load %struct.thread*, %struct.thread** %9, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @CPU_COPY(i32* %86, i32* %87)
  %89 = load %struct.proc*, %struct.proc** %10, align 8
  %90 = call i32 @PROC_UNLOCK(%struct.proc* %89)
  br label %91

91:                                               ; preds = %82, %57
  br label %92

92:                                               ; preds = %22, %91
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %92, %80, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.intr_event* @intr_lookup(i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cpuset_which(i32, i32, %struct.proc**, %struct.thread**, i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
