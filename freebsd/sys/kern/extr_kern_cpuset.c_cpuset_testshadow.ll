; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_testshadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_testshadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { %struct.domainset*, i32 }
%struct.domainset = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, i32*, %struct.domainset*)* @cpuset_testshadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_testshadow(%struct.cpuset* %0, i32* %1, %struct.domainset* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuset*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.domainset*, align 8
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca %struct.domainset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.domainset* %2, %struct.domainset** %7, align 8
  %10 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %11 = call %struct.cpuset* @cpuset_getbase(%struct.cpuset* %10)
  store %struct.cpuset* %11, %struct.cpuset** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %16 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %15, i32 0, i32 1
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @CPU_SUBSET(i32* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %14, %3
  %23 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %24 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %23, i32 0, i32 0
  %25 = load %struct.domainset*, %struct.domainset** %24, align 8
  store %struct.domainset* %25, %struct.domainset** %9, align 8
  %26 = load %struct.domainset*, %struct.domainset** %7, align 8
  %27 = icmp ne %struct.domainset* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.domainset*, %struct.domainset** %9, align 8
  %30 = load %struct.domainset*, %struct.domainset** %7, align 8
  %31 = call i32 @domainset_valid(%struct.domainset* %29, %struct.domainset* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %28, %22
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.cpuset* @cpuset_getbase(%struct.cpuset*) #1

declare dso_local i32 @CPU_SUBSET(i32*, i32*) #1

declare dso_local i32 @domainset_valid(%struct.domainset*, %struct.domainset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
