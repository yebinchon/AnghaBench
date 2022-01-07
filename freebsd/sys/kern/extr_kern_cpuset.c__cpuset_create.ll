; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c__cpuset_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c__cpuset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i64, i32, i32, i32, %struct.domainset*, i64, i32 }
%struct.domainset = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@cpuset_lock = common dso_local global i32 0, align 4
@cs_siblings = common dso_local global i32 0, align 4
@CPUSET_INVALID = common dso_local global i64 0, align 8
@cpuset_ids = common dso_local global i32 0, align 4
@cs_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*, i32*, %struct.domainset*, i64)* @_cpuset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cpuset_create(%struct.cpuset* %0, %struct.cpuset* %1, i32* %2, %struct.domainset* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuset*, align 8
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.domainset*, align 8
  %11 = alloca i64, align 8
  store %struct.cpuset* %0, %struct.cpuset** %7, align 8
  store %struct.cpuset* %1, %struct.cpuset** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.domainset* %3, %struct.domainset** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.domainset*, %struct.domainset** %10, align 8
  %13 = icmp eq %struct.domainset* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %16 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %15, i32 0, i32 4
  %17 = load %struct.domainset*, %struct.domainset** %16, align 8
  store %struct.domainset* %17, %struct.domainset** %10, align 8
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %23 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %22, i32 0, i32 3
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %26 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %25, i32 0, i32 3
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @CPU_OVERLAP(i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EDEADLK, align 4
  store i32 %31, i32* %6, align 4
  br label %86

32:                                               ; preds = %24
  %33 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %34 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %33, i32 0, i32 4
  %35 = load %struct.domainset*, %struct.domainset** %34, align 8
  %36 = load %struct.domainset*, %struct.domainset** %10, align 8
  %37 = call i32 @domainset_valid(%struct.domainset* %35, %struct.domainset* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EDEADLK, align 4
  store i32 %40, i32* %6, align 4
  br label %86

41:                                               ; preds = %32
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %44 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %43, i32 0, i32 3
  %45 = call i32 @CPU_COPY(i32* %42, i32* %44)
  %46 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %47 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %46, i32 0, i32 1
  %48 = call i32 @LIST_INIT(i32* %47)
  %49 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %50 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %49, i32 0, i32 6
  %51 = call i32 @refcount_init(i32* %50, i32 1)
  %52 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %53 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = call i32 @mtx_lock_spin(i32* @cpuset_lock)
  %55 = load %struct.domainset*, %struct.domainset** %10, align 8
  %56 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %57 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %56, i32 0, i32 4
  store %struct.domainset* %55, %struct.domainset** %57, align 8
  %58 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %59 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %58, i32 0, i32 3
  %60 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %61 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %60, i32 0, i32 3
  %62 = call i32 @CPU_AND(i32* %59, i32* %61)
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %65 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %67 = call i32 @cpuset_ref(%struct.cpuset* %66)
  %68 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %69 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %71 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %70, i32 0, i32 1
  %72 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %73 = load i32, i32* @cs_siblings, align 4
  %74 = call i32 @LIST_INSERT_HEAD(i32* %71, %struct.cpuset* %72, i32 %73)
  %75 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %76 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CPUSET_INVALID, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %41
  %81 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %82 = load i32, i32* @cs_link, align 4
  %83 = call i32 @LIST_INSERT_HEAD(i32* @cpuset_ids, %struct.cpuset* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %41
  %85 = call i32 @mtx_unlock_spin(i32* @cpuset_lock)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %39, %30
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @CPU_OVERLAP(i32*, i32*) #1

declare dso_local i32 @domainset_valid(%struct.domainset*, %struct.domainset*) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @CPU_AND(i32*, i32*) #1

declare dso_local i32 @cpuset_ref(%struct.cpuset*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.cpuset*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
