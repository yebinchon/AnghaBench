; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_add_seals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_add_seals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.shmfd* }
%struct.shmfd = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@OFF_MAX = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @shm_add_seals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_add_seals(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.shmfd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  store %struct.shmfd* %12, %struct.shmfd** %5, align 8
  %13 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %14 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %13, i32 0, i32 2
  %15 = load i32, i32* @OFF_MAX, align 4
  %16 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %17 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %16, i32 0, i32 1
  %18 = call i8* @rangelock_wlock(i32* %14, i32 0, i32 %15, i32* %17)
  store i8* %18, i8** %6, align 8
  %19 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %20 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @F_SEAL_SEAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EPERM, align 4
  store i32 %26, i32* %8, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %30 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @F_SEAL_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %27
  %39 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %40 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_7__* %41)
  %43 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %44 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %51 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_7__* %52)
  %54 = load i64, i64* %7, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @EBUSY, align 4
  store i32 %57, i32* %8, align 4
  br label %65

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %62 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %56, %25
  %66 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %67 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %66, i32 0, i32 2
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %70 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %69, i32 0, i32 1
  %71 = call i32 @rangelock_unlock(i32* %67, i8* %68, i32* %70)
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i8* @rangelock_wlock(i32*, i32, i32, i32*) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @rangelock_unlock(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
