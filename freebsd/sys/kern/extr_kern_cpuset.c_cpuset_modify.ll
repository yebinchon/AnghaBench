; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpuset = type { i32, i32 }

@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@PRIV_SCHED_CPUSET = common dso_local global i32 0, align 4
@CPU_SET_ROOT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@cpuset_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, i32*)* @cpuset_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_modify(%struct.cpuset* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuset*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %9 = load i32, i32* @PRIV_SCHED_CPUSET, align 4
  %10 = call i32 @priv_check(%struct.TYPE_3__* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @jailed(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %23 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CPU_SET_ROOT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EPERM, align 4
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %21, %15
  %31 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %32 = call %struct.cpuset* @cpuset_getroot(%struct.cpuset* %31)
  store %struct.cpuset* %32, %struct.cpuset** %6, align 8
  %33 = call i32 @mtx_lock_spin(i32* @cpuset_lock)
  %34 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %35 = icmp ne %struct.cpuset* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %38 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %37, i32 0, i32 1
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @CPU_SUBSET(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %7, align 4
  br label %59

44:                                               ; preds = %36, %30
  %45 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @cpuset_testupdate(%struct.cpuset* %45, i32* %46, i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %54 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %53, i32 0, i32 1
  %55 = call i32 @CPU_COPY(i32* %52, i32* %54)
  %56 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @cpuset_update(%struct.cpuset* %56, i32* %57)
  br label %59

59:                                               ; preds = %51, %50, %42
  %60 = call i32 @mtx_unlock_spin(i32* @cpuset_lock)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %28, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @priv_check(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @jailed(i32) #1

declare dso_local %struct.cpuset* @cpuset_getroot(%struct.cpuset*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @CPU_SUBSET(i32*, i32*) #1

declare dso_local i32 @cpuset_testupdate(%struct.cpuset*, i32*, i32) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local i32 @cpuset_update(%struct.cpuset*, i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
