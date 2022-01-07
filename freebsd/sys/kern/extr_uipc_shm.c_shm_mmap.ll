; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.shmfd* }
%struct.shmfd = type { i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }

@VM_PROT_NONE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@shm_timestamp_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shm_mmap(%struct.file* %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i64 %7, %struct.thread* %8) #0 {
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.thread*, align 8
  %19 = alloca %struct.shmfd*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store %struct.thread* %8, %struct.thread** %18, align 8
  %24 = load %struct.file*, %struct.file** %10, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load %struct.shmfd*, %struct.shmfd** %25, align 8
  store %struct.shmfd* %26, %struct.shmfd** %19, align 8
  %27 = load i32, i32* @VM_PROT_NONE, align 4
  store i32 %27, i32* %20, align 4
  %28 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %29 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %28, i32 0, i32 2
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %32 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %31, i32 0, i32 1
  %33 = call i8* @rangelock_rlock(i32* %29, i32 0, i64 %30, i32* %32)
  store i8* %33, i8** %23, align 8
  %34 = load %struct.file*, %struct.file** %10, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FREAD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %9
  %41 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %42 = load i32, i32* @VM_PROT_READ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %20, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %20, align 4
  br label %46

46:                                               ; preds = %40, %9
  %47 = load %struct.file*, %struct.file** %10, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FWRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @VM_PROT_WRITE, align 4
  %55 = load i32, i32* %20, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %20, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @MAP_SHARED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @VM_PROT_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %74 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @F_SEAL_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @EPERM, align 4
  store i32 %80, i32* %21, align 4
  br label %158

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* @VM_PROT_WRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @EACCES, align 4
  store i32 %90, i32* %21, align 4
  br label %158

91:                                               ; preds = %84, %81
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %20, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %20, align 4
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @OFF_MAX, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %17, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* @OFF_MAX, align 8
  %104 = load i64, i64* %13, align 8
  %105 = sub nsw i64 %103, %104
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101, %98, %91
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %21, align 4
  br label %158

109:                                              ; preds = %101
  %110 = call i32 @mtx_lock(i32* @shm_timestamp_lock)
  %111 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %112 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %111, i32 0, i32 4
  %113 = call i32 @vfs_timestamp(i32* %112)
  %114 = call i32 @mtx_unlock(i32* @shm_timestamp_lock)
  %115 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %116 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @vm_object_reference(i32 %117)
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %123 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @vm_pager_update_writecount(i32 %124, i32 0, i64 %125)
  br label %127

127:                                              ; preds = %121, %109
  %128 = load i32, i32* %11, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %135 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %17, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load %struct.thread*, %struct.thread** %18, align 8
  %140 = call i32 @vm_mmap_object(i32 %128, i32* %129, i64 %130, i32 %131, i32 %132, i32 %133, i32 %136, i64 %137, i32 %138, %struct.thread* %139)
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %127
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %148 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @vm_pager_release_writecount(i32 %149, i32 0, i64 %150)
  br label %152

152:                                              ; preds = %146, %143
  %153 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %154 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @vm_object_deallocate(i32 %155)
  br label %157

157:                                              ; preds = %152, %127
  br label %158

158:                                              ; preds = %157, %107, %89, %79
  %159 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %160 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %159, i32 0, i32 2
  %161 = load i8*, i8** %23, align 8
  %162 = load %struct.shmfd*, %struct.shmfd** %19, align 8
  %163 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %162, i32 0, i32 1
  %164 = call i32 @rangelock_unlock(i32* %160, i8* %161, i32* %163)
  %165 = load i32, i32* %21, align 4
  ret i32 %165
}

declare dso_local i8* @rangelock_rlock(i32*, i32, i64, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @vm_pager_update_writecount(i32, i32, i64) #1

declare dso_local i32 @vm_mmap_object(i32, i32*, i64, i32, i32, i32, i32, i64, i32, %struct.thread*) #1

declare dso_local i32 @vm_pager_release_writecount(i32, i32, i64) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @rangelock_unlock(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
