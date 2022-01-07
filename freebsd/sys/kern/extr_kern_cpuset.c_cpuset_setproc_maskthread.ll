; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_setproc_maskthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_setproc_maskthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { %struct.domainset*, i32 }
%struct.domainset = type { i32 }
%struct.setlist = type { i32 }
%struct.domainlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, i32*, %struct.domainset*, %struct.cpuset**, %struct.setlist*, %struct.domainlist*)* @cpuset_setproc_maskthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_setproc_maskthread(%struct.cpuset* %0, i32* %1, %struct.domainset* %2, %struct.cpuset** %3, %struct.setlist* %4, %struct.domainlist* %5) #0 {
  %7 = alloca %struct.cpuset*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.domainset*, align 8
  %10 = alloca %struct.cpuset**, align 8
  %11 = alloca %struct.setlist*, align 8
  %12 = alloca %struct.domainlist*, align 8
  %13 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.domainset* %2, %struct.domainset** %9, align 8
  store %struct.cpuset** %3, %struct.cpuset*** %10, align 8
  store %struct.setlist* %4, %struct.setlist** %11, align 8
  store %struct.domainlist* %5, %struct.domainlist** %12, align 8
  %14 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %15 = call %struct.cpuset* @cpuset_getbase(%struct.cpuset* %14)
  store %struct.cpuset* %15, %struct.cpuset** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %20 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %19, i32 0, i32 1
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %18, %6
  %22 = load %struct.domainset*, %struct.domainset** %9, align 8
  %23 = icmp eq %struct.domainset* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %26 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %25, i32 0, i32 0
  %27 = load %struct.domainset*, %struct.domainset** %26, align 8
  store %struct.domainset* %27, %struct.domainset** %9, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.cpuset*, %struct.cpuset** %13, align 8
  %30 = load %struct.cpuset**, %struct.cpuset*** %10, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.domainset*, %struct.domainset** %9, align 8
  %33 = load %struct.setlist*, %struct.setlist** %11, align 8
  %34 = load %struct.domainlist*, %struct.domainlist** %12, align 8
  %35 = call i32 @cpuset_shadow(%struct.cpuset* %29, %struct.cpuset** %30, i32* %31, %struct.domainset* %32, %struct.setlist* %33, %struct.domainlist* %34)
  ret i32 %35
}

declare dso_local %struct.cpuset* @cpuset_getbase(%struct.cpuset*) #1

declare dso_local i32 @cpuset_shadow(%struct.cpuset*, %struct.cpuset**, i32*, %struct.domainset*, %struct.setlist*, %struct.domainlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
