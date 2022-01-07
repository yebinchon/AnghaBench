; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_kern_shmdt_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_kern_shmdt_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.shmmap_state* }
%struct.shmmap_state = type { i32, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@shminfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@shmsegs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @kern_shmdt_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_shmdt_locked(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.shmmap_state*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %6, align 8
  %12 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @shm_find_prison(i32 %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOSYS, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.proc*, %struct.proc** %6, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.shmmap_state*, %struct.shmmap_state** %24, align 8
  store %struct.shmmap_state* %25, %struct.shmmap_state** %7, align 8
  %26 = load %struct.shmmap_state*, %struct.shmmap_state** %7, align 8
  %27 = icmp eq %struct.shmmap_state* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %20
  %31 = load %struct.shmmap_state*, %struct.shmmap_state** %7, align 8
  %32 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @AUDIT_ARG_SVIPC_ID(i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %53, %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shminfo, i32 0, i32 0), align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.shmmap_state*, %struct.shmmap_state** %7, align 8
  %41 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.shmmap_state*, %struct.shmmap_state** %7, align 8
  %46 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %58

52:                                               ; preds = %44, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load %struct.shmmap_state*, %struct.shmmap_state** %7, align 8
  %57 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %56, i32 1
  store %struct.shmmap_state* %57, %struct.shmmap_state** %7, align 8
  br label %35

58:                                               ; preds = %51, %35
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shminfo, i32 0, i32 0), align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %58
  %65 = load %struct.proc*, %struct.proc** %6, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.shmmap_state*, %struct.shmmap_state** %7, align 8
  %69 = call i32 @shm_delete_mapping(%struct.TYPE_4__* %67, %struct.shmmap_state* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %62, %28, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local i32* @shm_find_prison(i32) #1

declare dso_local i32 @AUDIT_ARG_SVIPC_ID(i32) #1

declare dso_local i32 @shm_delete_mapping(%struct.TYPE_4__*, %struct.shmmap_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
