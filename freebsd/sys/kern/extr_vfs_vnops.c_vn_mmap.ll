; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.vnode* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.thread = type { i32 }

@MNT_NOEXEC = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@FPOSIXSHM = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@PMC_FN_MMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_mmap(%struct.file* %0, i32 %1, i64* %2, i64 %3, i32 %4, i32 %5, i32 %6, i64 %7, %struct.thread* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.thread*, align 8
  %20 = alloca %struct.mount*, align 8
  %21 = alloca %struct.vnode*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64* %2, i64** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store %struct.thread* %8, %struct.thread** %19, align 8
  %26 = load %struct.file*, %struct.file** %11, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  %28 = load %struct.vnode*, %struct.vnode** %27, align 8
  store %struct.vnode* %28, %struct.vnode** %21, align 8
  %29 = load %struct.vnode*, %struct.vnode** %21, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load %struct.mount*, %struct.mount** %30, align 8
  store %struct.mount* %31, %struct.mount** %20, align 8
  %32 = load %struct.mount*, %struct.mount** %20, align 8
  %33 = icmp ne %struct.mount* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %9
  %35 = load %struct.mount*, %struct.mount** %20, align 8
  %36 = getelementptr inbounds %struct.mount, %struct.mount* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MNT_NOEXEC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @VM_PROT_NONE, align 4
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @EACCES, align 4
  store i32 %48, i32* %10, align 4
  br label %158

49:                                               ; preds = %41
  br label %52

50:                                               ; preds = %34, %9
  %51 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %51, i32* %23, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = load %struct.file*, %struct.file** %11, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FREAD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @VM_PROT_READ, align 4
  %61 = load i32, i32* %23, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %23, align 4
  br label %71

63:                                               ; preds = %52
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @VM_PROT_READ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @EACCES, align 4
  store i32 %69, i32* %10, align 4
  br label %158

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @MAP_SHARED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load %struct.file*, %struct.file** %11, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @FWRITE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @VM_PROT_WRITE, align 4
  %85 = load i32, i32* %23, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %23, align 4
  br label %95

87:                                               ; preds = %76
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @VM_PROT_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @EACCES, align 4
  store i32 %93, i32* %10, align 4
  br label %158

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %83
  br label %103

96:                                               ; preds = %71
  %97 = load i32, i32* @VM_PROT_WRITE, align 4
  %98 = load i32, i32* %23, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* @VM_PROT_WRITE, align 4
  %101 = load i32, i32* %16, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %96, %95
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %23, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %23, align 4
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @OFF_MAX, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %103
  %111 = load i64, i64* %18, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* @OFF_MAX, align 8
  %116 = load i64, i64* %14, align 8
  %117 = sub nsw i64 %115, %116
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %110, %103
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %10, align 4
  br label %158

121:                                              ; preds = %113
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %24, align 8
  %123 = load %struct.thread*, %struct.thread** %19, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.vnode*, %struct.vnode** %21, align 8
  %127 = call i32 @vm_mmap_vnode(%struct.thread* %123, i64 %124, i32 %125, i32* %23, i32* %17, %struct.vnode* %126, i64* %18, i32* %22, i64* %24)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %25, align 4
  store i32 %131, i32* %10, align 4
  br label %158

132:                                              ; preds = %121
  %133 = load i32, i32* %12, align 4
  %134 = load i64*, i64** %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %24, align 8
  %142 = load %struct.thread*, %struct.thread** %19, align 8
  %143 = call i32 @vm_mmap_object(i32 %133, i64* %134, i64 %135, i32 %136, i32 %137, i32 %138, i32 %139, i64 %140, i64 %141, %struct.thread* %142)
  store i32 %143, i32* %25, align 4
  %144 = load i32, i32* %25, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %132
  %147 = load i64, i64* %24, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %22, align 4
  %151 = load i64, i64* %14, align 8
  %152 = call i32 @vm_pager_release_writecount(i32 %150, i32 0, i64 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i32, i32* %22, align 4
  %155 = call i32 @vm_object_deallocate(i32 %154)
  br label %156

156:                                              ; preds = %153, %132
  %157 = load i32, i32* %25, align 4
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %156, %130, %119, %92, %68, %47
  %159 = load i32, i32* %10, align 4
  ret i32 %159
}

declare dso_local i32 @vm_mmap_vnode(%struct.thread*, i64, i32, i32*, i32*, %struct.vnode*, i64*, i32*, i64*) #1

declare dso_local i32 @vm_mmap_object(i32, i64*, i64, i32, i32, i32, i32, i64, i64, %struct.thread*) #1

declare dso_local i32 @vm_pager_release_writecount(i32, i32, i64) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
