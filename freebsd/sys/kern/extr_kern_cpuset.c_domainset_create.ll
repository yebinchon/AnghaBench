; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.domainset = type { i64, i32, i32 }

@DOMAINSET_POLICY_INVALID = common dso_local global i64 0, align 8
@DOMAINSET_POLICY_MAX = common dso_local global i64 0, align 8
@DOMAINSET_POLICY_PREFER = common dso_local global i64 0, align 8
@domainset0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@domainset_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.domainset* @domainset_create(%struct.domainset* %0) #0 {
  %2 = alloca %struct.domainset*, align 8
  %3 = alloca %struct.domainset*, align 8
  %4 = alloca %struct.domainset*, align 8
  store %struct.domainset* %0, %struct.domainset** %3, align 8
  %5 = load %struct.domainset*, %struct.domainset** %3, align 8
  %6 = getelementptr inbounds %struct.domainset, %struct.domainset* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DOMAINSET_POLICY_INVALID, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.domainset*, %struct.domainset** %3, align 8
  %12 = getelementptr inbounds %struct.domainset, %struct.domainset* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DOMAINSET_POLICY_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store %struct.domainset* null, %struct.domainset** %2, align 8
  br label %49

17:                                               ; preds = %10
  %18 = load %struct.domainset*, %struct.domainset** %3, align 8
  %19 = getelementptr inbounds %struct.domainset, %struct.domainset* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DOMAINSET_POLICY_PREFER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.domainset*, %struct.domainset** %3, align 8
  %25 = getelementptr inbounds %struct.domainset, %struct.domainset* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.domainset*, %struct.domainset** %3, align 8
  %28 = getelementptr inbounds %struct.domainset, %struct.domainset* %27, i32 0, i32 1
  %29 = call i32 @DOMAINSET_ISSET(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store %struct.domainset* null, %struct.domainset** %2, align 8
  br label %49

32:                                               ; preds = %23, %17
  %33 = load %struct.domainset*, %struct.domainset** %3, align 8
  %34 = getelementptr inbounds %struct.domainset, %struct.domainset* %33, i32 0, i32 1
  %35 = call i32 @DOMAINSET_SUBSET(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @domainset0, i32 0, i32 0), i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.domainset* null, %struct.domainset** %2, align 8
  br label %49

38:                                               ; preds = %32
  %39 = load i32, i32* @domainset_zone, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.domainset* @uma_zalloc(i32 %39, i32 %42)
  store %struct.domainset* %43, %struct.domainset** %4, align 8
  %44 = load %struct.domainset*, %struct.domainset** %3, align 8
  %45 = load %struct.domainset*, %struct.domainset** %4, align 8
  %46 = call i32 @domainset_copy(%struct.domainset* %44, %struct.domainset* %45)
  %47 = load %struct.domainset*, %struct.domainset** %4, align 8
  %48 = call %struct.domainset* @_domainset_create(%struct.domainset* %47, i32* null)
  store %struct.domainset* %48, %struct.domainset** %2, align 8
  br label %49

49:                                               ; preds = %38, %37, %31, %16
  %50 = load %struct.domainset*, %struct.domainset** %2, align 8
  ret %struct.domainset* %50
}

declare dso_local i32 @DOMAINSET_ISSET(i32, i32*) #1

declare dso_local i32 @DOMAINSET_SUBSET(i32*, i32*) #1

declare dso_local %struct.domainset* @uma_zalloc(i32, i32) #1

declare dso_local i32 @domainset_copy(%struct.domainset*, %struct.domainset*) #1

declare dso_local %struct.domainset* @_domainset_create(%struct.domainset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
