; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_chown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ksem* }
%struct.ksem = type { i64, i64 }
%struct.ucred = type { i64 }
%struct.thread = type { i32 }

@sem_lock = common dso_local global i32 0, align 4
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i64, %struct.ucred*, %struct.thread*)* @ksem_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_chown(%struct.file* %0, i64 %1, i64 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ksem*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.ksem*, %struct.ksem** %14, align 8
  store %struct.ksem* %15, %struct.ksem** %11, align 8
  %16 = call i32 @mtx_lock(i32* @sem_lock)
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.ksem*, %struct.ksem** %11, align 8
  %21 = getelementptr inbounds %struct.ksem, %struct.ksem* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %5
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.ksem*, %struct.ksem** %11, align 8
  %28 = getelementptr inbounds %struct.ksem, %struct.ksem* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ksem*, %struct.ksem** %11, align 8
  %33 = getelementptr inbounds %struct.ksem, %struct.ksem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.ucred*, %struct.ucred** %9, align 8
  %39 = getelementptr inbounds %struct.ucred, %struct.ucred* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %36, %30
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.ksem*, %struct.ksem** %11, align 8
  %45 = getelementptr inbounds %struct.ksem, %struct.ksem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.ucred*, %struct.ucred** %9, align 8
  %51 = call i32 @groupmember(i64 %49, %struct.ucred* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.ucred*, %struct.ucred** %9, align 8
  %55 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %56 = call i32 @priv_check_cred(%struct.ucred* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %66

59:                                               ; preds = %53, %48, %42
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.ksem*, %struct.ksem** %11, align 8
  %62 = getelementptr inbounds %struct.ksem, %struct.ksem* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.ksem*, %struct.ksem** %11, align 8
  %65 = getelementptr inbounds %struct.ksem, %struct.ksem* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %58
  %67 = call i32 @mtx_unlock(i32* @sem_lock)
  %68 = load i32, i32* %12, align 4
  ret i32 %68
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @groupmember(i64, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
