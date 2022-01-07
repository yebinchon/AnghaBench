; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_root_handler_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_root_handler_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32, i32 (%struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)*, i32 }
%struct.sysctl_req = type { i32 }
%struct.rm_priotracker = type { i32 }

@CTLFLAG_DYN = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@_debug_fail_point = common dso_local global i32 0, align 4
@sysctl_running = common dso_local global i32 0, align 4
@CTLFLAG_DYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*, %struct.rm_priotracker*)* @sysctl_root_handler_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_root_handler_locked(%struct.sysctl_oid* %0, i8* %1, i32 %2, %struct.sysctl_req* %3, %struct.rm_priotracker* %4) #0 {
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sysctl_req*, align 8
  %10 = alloca %struct.rm_priotracker*, align 8
  %11 = alloca i32, align 4
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sysctl_req* %3, %struct.sysctl_req** %9, align 8
  store %struct.rm_priotracker* %4, %struct.rm_priotracker** %10, align 8
  %12 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %13 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CTLFLAG_DYN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %20 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %19, i32 0, i32 2
  %21 = call i32 @atomic_add_int(i32* %20, i32 1)
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.rm_priotracker*, %struct.rm_priotracker** %10, align 8
  %24 = icmp ne %struct.rm_priotracker* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.rm_priotracker*, %struct.rm_priotracker** %10, align 8
  %27 = call i32 @SYSCTL_RUNLOCK(%struct.rm_priotracker* %26)
  br label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @SYSCTL_WUNLOCK()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %32 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 @mtx_lock(i32* @Giant)
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %41 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %40, i32 0, i32 1
  %42 = load i32 (%struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)*, i32 (%struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)** %41, align 8
  %43 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %47 = call i32 %42(%struct.sysctl_oid* %43, i8* %44, i32 %45, %struct.sysctl_req* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %49 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %39
  %55 = call i32 @mtx_unlock(i32* @Giant)
  br label %56

56:                                               ; preds = %54, %39
  %57 = load i32, i32* @_debug_fail_point, align 4
  %58 = load i32, i32* @sysctl_running, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @KFAIL_POINT_ERROR(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.rm_priotracker*, %struct.rm_priotracker** %10, align 8
  %62 = icmp ne %struct.rm_priotracker* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.rm_priotracker*, %struct.rm_priotracker** %10, align 8
  %65 = call i32 @SYSCTL_RLOCK(%struct.rm_priotracker* %64)
  br label %68

66:                                               ; preds = %56
  %67 = call i32 (...) @SYSCTL_WLOCK()
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %70 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CTLFLAG_DYN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %77 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %76, i32 0, i32 2
  %78 = call i32 @atomic_fetchadd_int(i32* %77, i32 -1)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %82 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CTLFLAG_DYING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %89 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %88, i32 0, i32 2
  %90 = call i32 @wakeup(i32* %89)
  br label %91

91:                                               ; preds = %87, %80, %75
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @SYSCTL_RUNLOCK(%struct.rm_priotracker*) #1

declare dso_local i32 @SYSCTL_WUNLOCK(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KFAIL_POINT_ERROR(i32, i32, i32) #1

declare dso_local i32 @SYSCTL_RLOCK(%struct.rm_priotracker*) #1

declare dso_local i32 @SYSCTL_WLOCK(...) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
