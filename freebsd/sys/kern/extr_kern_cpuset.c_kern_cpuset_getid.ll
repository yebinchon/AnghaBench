; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_kern_cpuset_getid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_kern_cpuset_getid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cpuset = type { i32 }
%struct.proc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_cpuset_getid(%struct.thread* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cpuset*, align 8
  %13 = alloca %struct.cpuset*, align 8
  %14 = alloca %struct.thread*, align 8
  %15 = alloca %struct.proc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 134
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 133
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %72

25:                                               ; preds = %20, %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @cpuset_which(i32 %26, i32 %27, %struct.proc** %15, %struct.thread** %14, %struct.cpuset** %13)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %6, align 4
  br label %72

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %49 [
    i32 128, label %35
    i32 129, label %35
    i32 133, label %46
    i32 130, label %46
    i32 131, label %47
    i32 132, label %47
  ]

35:                                               ; preds = %33, %33
  %36 = load %struct.thread*, %struct.thread** %14, align 8
  %37 = call i32 @thread_lock(%struct.thread* %36)
  %38 = load %struct.thread*, %struct.thread** %14, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.cpuset* @cpuset_refbase(i32 %40)
  store %struct.cpuset* %41, %struct.cpuset** %13, align 8
  %42 = load %struct.thread*, %struct.thread** %14, align 8
  %43 = call i32 @thread_unlock(%struct.thread* %42)
  %44 = load %struct.proc*, %struct.proc** %15, align 8
  %45 = call i32 @PROC_UNLOCK(%struct.proc* %44)
  br label %49

46:                                               ; preds = %33, %33
  br label %49

47:                                               ; preds = %33, %33
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %6, align 4
  br label %72

49:                                               ; preds = %33, %46, %35
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %59 [
    i32 135, label %51
    i32 136, label %57
    i32 134, label %58
  ]

51:                                               ; preds = %49
  %52 = load %struct.cpuset*, %struct.cpuset** %13, align 8
  %53 = call %struct.cpuset* @cpuset_refroot(%struct.cpuset* %52)
  store %struct.cpuset* %53, %struct.cpuset** %12, align 8
  %54 = load %struct.cpuset*, %struct.cpuset** %13, align 8
  %55 = call i32 @cpuset_rel(%struct.cpuset* %54)
  %56 = load %struct.cpuset*, %struct.cpuset** %12, align 8
  store %struct.cpuset* %56, %struct.cpuset** %13, align 8
  br label %59

57:                                               ; preds = %49
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %49, %58, %57, %51
  %60 = load %struct.cpuset*, %struct.cpuset** %13, align 8
  %61 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load %struct.cpuset*, %struct.cpuset** %13, align 8
  %64 = call i32 @cpuset_rel(%struct.cpuset* %63)
  %65 = load i32, i32* %17, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @copyout(i32* %16, i32* %68, i32 4)
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %47, %31, %23
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @cpuset_which(i32, i32, %struct.proc**, %struct.thread**, %struct.cpuset**) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local %struct.cpuset* @cpuset_refbase(i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.cpuset* @cpuset_refroot(%struct.cpuset*) #1

declare dso_local i32 @cpuset_rel(%struct.cpuset*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
