; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i32, i8*, i32 }

@domainset_roundrobin = common dso_local global %struct.domainset zeroinitializer, align 8
@all_domains = common dso_local global i32 0, align 4
@DOMAINSET_POLICY_ROUNDROBIN = common dso_local global i8* null, align 8
@vm_ndomains = common dso_local global i32 0, align 4
@domainset_fixed = common dso_local global %struct.domainset* null, align 8
@domainset_prefer = common dso_local global %struct.domainset* null, align 8
@DOMAINSET_POLICY_PREFER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domainset_init() #0 {
  %1 = alloca %struct.domainset*, align 8
  %2 = alloca i32, align 4
  store %struct.domainset* @domainset_roundrobin, %struct.domainset** %1, align 8
  %3 = load %struct.domainset*, %struct.domainset** %1, align 8
  %4 = getelementptr inbounds %struct.domainset, %struct.domainset* %3, i32 0, i32 2
  %5 = call i32 @DOMAINSET_COPY(i32* @all_domains, i32* %4)
  %6 = load i8*, i8** @DOMAINSET_POLICY_ROUNDROBIN, align 8
  %7 = load %struct.domainset*, %struct.domainset** %1, align 8
  %8 = getelementptr inbounds %struct.domainset, %struct.domainset* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.domainset*, %struct.domainset** %1, align 8
  %10 = getelementptr inbounds %struct.domainset, %struct.domainset* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.domainset*, %struct.domainset** %1, align 8
  %12 = call i32 @_domainset_create(%struct.domainset* %11, i32* null)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %49, %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @vm_ndomains, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load %struct.domainset*, %struct.domainset** @domainset_fixed, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.domainset, %struct.domainset* %18, i64 %20
  store %struct.domainset* %21, %struct.domainset** %1, align 8
  %22 = load %struct.domainset*, %struct.domainset** %1, align 8
  %23 = getelementptr inbounds %struct.domainset, %struct.domainset* %22, i32 0, i32 2
  %24 = call i32 @DOMAINSET_ZERO(i32* %23)
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.domainset*, %struct.domainset** %1, align 8
  %27 = getelementptr inbounds %struct.domainset, %struct.domainset* %26, i32 0, i32 2
  %28 = call i32 @DOMAINSET_SET(i32 %25, i32* %27)
  %29 = load i8*, i8** @DOMAINSET_POLICY_ROUNDROBIN, align 8
  %30 = load %struct.domainset*, %struct.domainset** %1, align 8
  %31 = getelementptr inbounds %struct.domainset, %struct.domainset* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.domainset*, %struct.domainset** %1, align 8
  %33 = call i32 @_domainset_create(%struct.domainset* %32, i32* null)
  %34 = load %struct.domainset*, %struct.domainset** @domainset_prefer, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.domainset, %struct.domainset* %34, i64 %36
  store %struct.domainset* %37, %struct.domainset** %1, align 8
  %38 = load %struct.domainset*, %struct.domainset** %1, align 8
  %39 = getelementptr inbounds %struct.domainset, %struct.domainset* %38, i32 0, i32 2
  %40 = call i32 @DOMAINSET_COPY(i32* @all_domains, i32* %39)
  %41 = load i8*, i8** @DOMAINSET_POLICY_PREFER, align 8
  %42 = load %struct.domainset*, %struct.domainset** %1, align 8
  %43 = getelementptr inbounds %struct.domainset, %struct.domainset* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.domainset*, %struct.domainset** %1, align 8
  %46 = getelementptr inbounds %struct.domainset, %struct.domainset* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.domainset*, %struct.domainset** %1, align 8
  %48 = call i32 @_domainset_create(%struct.domainset* %47, i32* null)
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %13

52:                                               ; preds = %13
  ret void
}

declare dso_local i32 @DOMAINSET_COPY(i32*, i32*) #1

declare dso_local i32 @_domainset_create(%struct.domainset*, i32*) #1

declare dso_local i32 @DOMAINSET_ZERO(i32*) #1

declare dso_local i32 @DOMAINSET_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
