; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_setproc_setthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_setproc_setthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i64 }
%struct.setlist = type { i32 }
%struct.domainlist = type { i32 }
%struct.domainset = type { i32 }

@CPUSET_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*, %struct.cpuset**, %struct.setlist*, %struct.domainlist*)* @cpuset_setproc_setthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_setproc_setthread(%struct.cpuset* %0, %struct.cpuset* %1, %struct.cpuset** %2, %struct.setlist* %3, %struct.domainlist* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuset*, align 8
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca %struct.cpuset**, align 8
  %10 = alloca %struct.setlist*, align 8
  %11 = alloca %struct.domainlist*, align 8
  %12 = alloca %struct.domainset, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %7, align 8
  store %struct.cpuset* %1, %struct.cpuset** %8, align 8
  store %struct.cpuset** %2, %struct.cpuset*** %9, align 8
  store %struct.setlist* %3, %struct.setlist** %10, align 8
  store %struct.domainlist* %4, %struct.domainlist** %11, align 8
  %15 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %16 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CPUSET_INVALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %22 = call %struct.cpuset* @cpuset_ref(%struct.cpuset* %21)
  %23 = load %struct.cpuset**, %struct.cpuset*** %9, align 8
  store %struct.cpuset* %22, %struct.cpuset** %23, align 8
  store i32 0, i32* %6, align 4
  br label %38

24:                                               ; preds = %5
  %25 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %26 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %27 = call i32 @cpuset_setproc_setthread_mask(%struct.cpuset* %25, %struct.cpuset* %26, i32* %13, %struct.domainset* %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %34 = load %struct.cpuset**, %struct.cpuset*** %9, align 8
  %35 = load %struct.setlist*, %struct.setlist** %10, align 8
  %36 = load %struct.domainlist*, %struct.domainlist** %11, align 8
  %37 = call i32 @cpuset_shadow(%struct.cpuset* %33, %struct.cpuset** %34, i32* %13, %struct.domainset* %12, %struct.setlist* %35, %struct.domainlist* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %30, %20
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.cpuset* @cpuset_ref(%struct.cpuset*) #1

declare dso_local i32 @cpuset_setproc_setthread_mask(%struct.cpuset*, %struct.cpuset*, i32*, %struct.domainset*) #1

declare dso_local i32 @cpuset_shadow(%struct.cpuset*, %struct.cpuset**, i32*, %struct.domainset*, %struct.setlist*, %struct.domainlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
