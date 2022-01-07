; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i64, %struct.cpuset*, i32 }

@cpuset_lock = common dso_local global i32 0, align 4
@cs_siblings = common dso_local global i32 0, align 4
@CPUSET_INVALID = common dso_local global i64 0, align 8
@cs_link = common dso_local global i32 0, align 4
@cpuset_zone = common dso_local global i32 0, align 4
@cpuset_unr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuset_rel(%struct.cpuset* %0) #0 {
  %2 = alloca %struct.cpuset*, align 8
  %3 = alloca i64, align 8
  store %struct.cpuset* %0, %struct.cpuset** %2, align 8
  %4 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %5 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %4, i32 0, i32 2
  %6 = call i64 @refcount_release(i32* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = call i32 @mtx_lock_spin(i32* @cpuset_lock)
  %11 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %12 = load i32, i32* @cs_siblings, align 4
  %13 = call i32 @LIST_REMOVE(%struct.cpuset* %11, i32 %12)
  %14 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %15 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @CPUSET_INVALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %22 = load i32, i32* @cs_link, align 4
  %23 = call i32 @LIST_REMOVE(%struct.cpuset* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %9
  %25 = call i32 @mtx_unlock_spin(i32* @cpuset_lock)
  %26 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %27 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %26, i32 0, i32 1
  %28 = load %struct.cpuset*, %struct.cpuset** %27, align 8
  call void @cpuset_rel(%struct.cpuset* %28)
  %29 = load i32, i32* @cpuset_zone, align 4
  %30 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %31 = call i32 @uma_zfree(i32 %29, %struct.cpuset* %30)
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @CPUSET_INVALID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* @cpuset_unr, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @free_unr(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %8, %35, %24
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.cpuset*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.cpuset*) #1

declare dso_local i32 @free_unr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
