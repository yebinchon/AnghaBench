; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_getbase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_getbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i64, %struct.cpuset* }

@CPUSET_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuset* (%struct.cpuset*)* @cpuset_getbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuset* @cpuset_getbase(%struct.cpuset* %0) #0 {
  %2 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %2, align 8
  %3 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %4 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CPUSET_INVALID, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %10 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %9, i32 0, i32 1
  %11 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  store %struct.cpuset* %11, %struct.cpuset** %2, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  ret %struct.cpuset* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
