; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { %struct.domainset*, i32 }
%struct.domainset = type { i32 }
%struct.setlist = type { i32 }
%struct.domainlist = type { i32 }

@CPUSET_INVALID = common dso_local global i32 0, align 4
@cs_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset**, i32*, %struct.domainset*, %struct.setlist*, %struct.domainlist*)* @cpuset_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_shadow(%struct.cpuset* %0, %struct.cpuset** %1, i32* %2, %struct.domainset* %3, %struct.setlist* %4, %struct.domainlist* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca %struct.cpuset**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.domainset*, align 8
  %12 = alloca %struct.setlist*, align 8
  %13 = alloca %struct.domainlist*, align 8
  %14 = alloca %struct.cpuset*, align 8
  %15 = alloca %struct.cpuset*, align 8
  %16 = alloca %struct.domainset*, align 8
  %17 = alloca %struct.domainset*, align 8
  %18 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %8, align 8
  store %struct.cpuset** %1, %struct.cpuset*** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.domainset* %3, %struct.domainset** %11, align 8
  store %struct.setlist* %4, %struct.setlist** %12, align 8
  store %struct.domainlist* %5, %struct.domainlist** %13, align 8
  %19 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load %struct.domainset*, %struct.domainset** %11, align 8
  %22 = call i32 @cpuset_testshadow(%struct.cpuset* %19, i32* %20, %struct.domainset* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %7, align 4
  br label %69

27:                                               ; preds = %6
  %28 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %29 = call %struct.cpuset* @cpuset_getbase(%struct.cpuset* %28)
  store %struct.cpuset* %29, %struct.cpuset** %14, align 8
  %30 = load %struct.cpuset*, %struct.cpuset** %14, align 8
  %31 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %30, i32 0, i32 0
  %32 = load %struct.domainset*, %struct.domainset** %31, align 8
  store %struct.domainset* %32, %struct.domainset** %16, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %37 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %36, i32 0, i32 1
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.domainset*, %struct.domainset** %11, align 8
  %40 = icmp ne %struct.domainset* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.domainset*, %struct.domainset** %16, align 8
  %43 = load %struct.domainset*, %struct.domainset** %11, align 8
  %44 = load %struct.domainlist*, %struct.domainlist** %13, align 8
  %45 = call %struct.domainset* @domainset_shadow(%struct.domainset* %42, %struct.domainset* %43, %struct.domainlist* %44)
  store %struct.domainset* %45, %struct.domainset** %17, align 8
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %48 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %47, i32 0, i32 0
  %49 = load %struct.domainset*, %struct.domainset** %48, align 8
  store %struct.domainset* %49, %struct.domainset** %17, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.setlist*, %struct.setlist** %12, align 8
  %52 = call %struct.cpuset* @LIST_FIRST(%struct.setlist* %51)
  store %struct.cpuset* %52, %struct.cpuset** %15, align 8
  %53 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %54 = load %struct.cpuset*, %struct.cpuset** %14, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.domainset*, %struct.domainset** %17, align 8
  %57 = load i32, i32* @CPUSET_INVALID, align 4
  %58 = call i32 @_cpuset_create(%struct.cpuset* %53, %struct.cpuset* %54, i32* %55, %struct.domainset* %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %63 = load i32, i32* @cs_link, align 4
  %64 = call i32 @LIST_REMOVE(%struct.cpuset* %62, i32 %63)
  %65 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %66 = load %struct.cpuset**, %struct.cpuset*** %9, align 8
  store %struct.cpuset* %65, %struct.cpuset** %66, align 8
  br label %67

67:                                               ; preds = %61, %50
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %25
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @cpuset_testshadow(%struct.cpuset*, i32*, %struct.domainset*) #1

declare dso_local %struct.cpuset* @cpuset_getbase(%struct.cpuset*) #1

declare dso_local %struct.domainset* @domainset_shadow(%struct.domainset*, %struct.domainset*, %struct.domainlist*) #1

declare dso_local %struct.cpuset* @LIST_FIRST(%struct.setlist*) #1

declare dso_local i32 @_cpuset_create(%struct.cpuset*, %struct.cpuset*, i32*, %struct.domainset*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.cpuset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
