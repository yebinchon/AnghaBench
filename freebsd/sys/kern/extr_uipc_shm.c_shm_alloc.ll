; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmfd = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ucred = type { i32, i32 }

@M_SHMFD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"shm_create: vm_pager_allocate\00", align 1
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@OBJ_COLORED = common dso_local global i32 0, align 4
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@shm_ino_unr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"shmrl\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.shmfd* @shm_alloc(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.shmfd*, align 8
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_SHMFD, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.shmfd* @malloc(i32 64, i32 %6, i32 %9)
  store %struct.shmfd* %10, %struct.shmfd** %5, align 8
  %11 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %12 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.ucred*, %struct.ucred** %3, align 8
  %14 = getelementptr inbounds %struct.ucred, %struct.ucred* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %17 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ucred*, %struct.ucred** %3, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %22 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %25 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @OBJT_SWAP, align 4
  %27 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %28 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %31 = load %struct.ucred*, %struct.ucred** %3, align 8
  %32 = call %struct.TYPE_6__* @vm_pager_allocate(i32 %26, i32* null, i64 %29, i32 %30, i32 0, %struct.ucred* %31)
  %33 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %34 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %33, i32 0, i32 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %36 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %35, i32 0, i32 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %42 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %41, i32 0, i32 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %46 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %45, i32 0, i32 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__* %47)
  %49 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %50 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %49, i32 0, i32 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %53 = call i32 @vm_object_clear_flag(%struct.TYPE_6__* %51, i32 %52)
  %54 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %55 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %54, i32 0, i32 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* @OBJ_COLORED, align 4
  %58 = load i32, i32* @OBJ_NOSPLIT, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @vm_object_set_flag(%struct.TYPE_6__* %56, i32 %59)
  %61 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %62 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %61, i32 0, i32 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__* %63)
  %65 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %66 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %65, i32 0, i32 4
  %67 = call i32 @vfs_timestamp(i32* %66)
  %68 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %69 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %72 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %74 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %73, i32 0, i32 6
  store i32 %70, i32* %74, align 8
  %75 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %76 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %75, i32 0, i32 7
  store i32 %70, i32* %76, align 4
  %77 = call i32 @alloc_unr64(i32* @shm_ino_unr)
  %78 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %79 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %81 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %80, i32 0, i32 2
  %82 = call i32 @refcount_init(i32* %81, i32 1)
  %83 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %84 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %83, i32 0, i32 1
  %85 = load i32, i32* @MTX_DEF, align 4
  %86 = call i32 @mtx_init(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %85)
  %87 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %88 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %87, i32 0, i32 0
  %89 = call i32 @rangelock_init(i32* %88)
  %90 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  ret %struct.shmfd* %90
}

declare dso_local %struct.shmfd* @malloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @vm_pager_allocate(i32, i32*, i64, i32, i32, %struct.ucred*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_object_clear_flag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @alloc_unr64(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @rangelock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
