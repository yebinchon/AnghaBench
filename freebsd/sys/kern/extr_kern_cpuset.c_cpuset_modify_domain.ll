; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_modify_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_cpuset_modify_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpuset = type { i32, %struct.domainset* }
%struct.domainset = type { i64, i32 }
%struct.domainlist = type { i32 }

@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@PRIV_SCHED_CPUSET = common dso_local global i32 0, align 4
@CPU_SET_ROOT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@cpuset_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOMAINSET_POLICY_PREFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.domainset*)* @cpuset_modify_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_modify_domain(%struct.cpuset* %0, %struct.domainset* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuset*, align 8
  %5 = alloca %struct.domainset*, align 8
  %6 = alloca %struct.domainlist, align 4
  %7 = alloca %struct.domainset, align 8
  %8 = alloca %struct.domainset*, align 8
  %9 = alloca %struct.cpuset*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %4, align 8
  store %struct.domainset* %1, %struct.domainset** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %14 = load i32, i32* @PRIV_SCHED_CPUSET, align 4
  %15 = call i32 @priv_check(%struct.TYPE_3__* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %3, align 4
  br label %109

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @jailed(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %28 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CPU_SET_ROOT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %3, align 4
  br label %109

35:                                               ; preds = %26, %20
  %36 = call i32 @domainset_freelist_init(%struct.domainlist* %6, i32 0)
  %37 = load %struct.domainset*, %struct.domainset** %5, align 8
  %38 = call %struct.domainset* @domainset_create(%struct.domainset* %37)
  store %struct.domainset* %38, %struct.domainset** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %88, %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @domainset_freelist_add(%struct.domainlist* %6, i32 %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %51 = call %struct.cpuset* @cpuset_getroot(%struct.cpuset* %50)
  store %struct.cpuset* %51, %struct.cpuset** %9, align 8
  %52 = call i32 @mtx_lock_spin(i32* @cpuset_lock)
  %53 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %54 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %53, i32 0, i32 1
  %55 = load %struct.domainset*, %struct.domainset** %54, align 8
  store %struct.domainset* %55, %struct.domainset** %8, align 8
  %56 = load %struct.domainset*, %struct.domainset** %8, align 8
  %57 = load %struct.domainset*, %struct.domainset** %5, align 8
  %58 = call i32 @domainset_valid(%struct.domainset* %56, %struct.domainset* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %12, align 4
  br label %100

62:                                               ; preds = %49
  %63 = load %struct.domainset*, %struct.domainset** %5, align 8
  %64 = getelementptr inbounds %struct.domainset, %struct.domainset* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DOMAINSET_POLICY_PREFER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %70 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %69, i32 0, i32 1
  %71 = load %struct.domainset*, %struct.domainset** %70, align 8
  %72 = getelementptr inbounds %struct.domainset, %struct.domainset* %71, i32 0, i32 1
  %73 = load %struct.domainset*, %struct.domainset** %5, align 8
  %74 = getelementptr inbounds %struct.domainset, %struct.domainset* %73, i32 0, i32 1
  %75 = call i32 @DOMAINSET_COPY(i32* %72, i32* %74)
  br label %76

76:                                               ; preds = %68, %62
  %77 = load %struct.domainset*, %struct.domainset** %5, align 8
  %78 = call i32 @domainset_copy(%struct.domainset* %77, %struct.domainset* %7)
  store i32 0, i32* %11, align 4
  %79 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %80 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %81 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %80, i32 0, i32 1
  %82 = load %struct.domainset*, %struct.domainset** %81, align 8
  %83 = call i32 @cpuset_testupdate_domain(%struct.cpuset* %79, %struct.domainset* %7, %struct.domainset* %82, i32* %11, i32 0)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %100

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %39, label %92

92:                                               ; preds = %88
  %93 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %94 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %93, i32 0, i32 1
  %95 = load %struct.domainset*, %struct.domainset** %94, align 8
  store %struct.domainset* %95, %struct.domainset** %8, align 8
  %96 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %97 = load %struct.domainset*, %struct.domainset** %5, align 8
  %98 = load %struct.domainset*, %struct.domainset** %8, align 8
  %99 = call i32 @cpuset_update_domain(%struct.cpuset* %96, %struct.domainset* %97, %struct.domainset* %98, %struct.domainlist* %6)
  br label %100

100:                                              ; preds = %92, %86, %60
  %101 = call i32 @mtx_unlock_spin(i32* @cpuset_lock)
  %102 = call i32 @domainset_freelist_free(%struct.domainlist* %6)
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 (...) @domainset_notify()
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %33, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @priv_check(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @jailed(i32) #1

declare dso_local i32 @domainset_freelist_init(%struct.domainlist*, i32) #1

declare dso_local %struct.domainset* @domainset_create(%struct.domainset*) #1

declare dso_local i32 @domainset_freelist_add(%struct.domainlist*, i32) #1

declare dso_local %struct.cpuset* @cpuset_getroot(%struct.cpuset*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @domainset_valid(%struct.domainset*, %struct.domainset*) #1

declare dso_local i32 @DOMAINSET_COPY(i32*, i32*) #1

declare dso_local i32 @domainset_copy(%struct.domainset*, %struct.domainset*) #1

declare dso_local i32 @cpuset_testupdate_domain(%struct.cpuset*, %struct.domainset*, %struct.domainset*, i32*, i32) #1

declare dso_local i32 @cpuset_update_domain(%struct.cpuset*, %struct.domainset*, %struct.domainset*, %struct.domainlist*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @domainset_freelist_free(%struct.domainlist*) #1

declare dso_local i32 @domainset_notify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
