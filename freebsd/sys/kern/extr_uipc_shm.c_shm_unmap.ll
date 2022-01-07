; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.shmfd* }
%struct.shmfd = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@DTYPE_SHM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"shm_unmap: object not mapped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shm_unmap(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.shmfd*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DTYPE_SHM, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %102

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  %28 = load %struct.shmfd*, %struct.shmfd** %27, align 8
  store %struct.shmfd* %28, %struct.shmfd** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @PAGE_MASK, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @trunc_page(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %36, %37
  %39 = call i64 @round_page(i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* @kernel_map, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* @VM_PROT_READ, align 4
  %43 = load i32, i32* @VM_PROT_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @vm_map_lookup(i32* %16, i64 %41, i32 %44, %struct.TYPE_4__** %9, i64* %12, i32* %13, i32* %14, i32* %15)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @KERN_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %25
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %102

51:                                               ; preds = %25
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %61, %62
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = call i32 @vm_map_lookup_done(i32 %66, %struct.TYPE_4__* %67)
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %4, align 4
  br label %102

70:                                               ; preds = %57
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = call i32 @vm_map_lookup_done(i32 %71, %struct.TYPE_4__* %72)
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.shmfd*, %struct.shmfd** %8, align 8
  %76 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %4, align 4
  br label %102

81:                                               ; preds = %70
  %82 = load i32, i32* %16, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %84, %85
  %87 = call i32 @vm_map_remove(i32 %82, i64 %83, i64 %86)
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @VM_OBJECT_WLOCK(i64 %88)
  %90 = load %struct.shmfd*, %struct.shmfd** %8, align 8
  %91 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @KASSERT(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.shmfd*, %struct.shmfd** %8, align 8
  %97 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @VM_OBJECT_WUNLOCK(i64 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %81, %79, %65, %49, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_lookup(i32*, i64, i32, %struct.TYPE_4__**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @vm_map_lookup_done(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @vm_map_remove(i32, i64, i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
