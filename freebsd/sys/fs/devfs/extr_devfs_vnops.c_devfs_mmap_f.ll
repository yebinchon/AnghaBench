; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_mmap_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_mmap_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.vnode* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.thread = type { %struct.file* }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i32 }

@MNT_NOEXEC = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32*, i32, i32, i32, i32, i32, %struct.thread*)* @devfs_mmap_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_mmap_f(%struct.file* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.thread* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.thread*, align 8
  %20 = alloca %struct.cdev*, align 8
  %21 = alloca %struct.cdevsw*, align 8
  %22 = alloca %struct.mount*, align 8
  %23 = alloca %struct.vnode*, align 8
  %24 = alloca %struct.file*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.thread* %8, %struct.thread** %19, align 8
  %29 = load %struct.file*, %struct.file** %11, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 1
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %23, align 8
  %32 = load %struct.vnode*, %struct.vnode** %23, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load %struct.mount*, %struct.mount** %33, align 8
  store %struct.mount* %34, %struct.mount** %22, align 8
  %35 = load %struct.mount*, %struct.mount** %22, align 8
  %36 = icmp ne %struct.mount* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %9
  %38 = load %struct.mount*, %struct.mount** %22, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MNT_NOEXEC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32, i32* @VM_PROT_NONE, align 4
  store i32 %45, i32* %26, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EACCES, align 4
  store i32 %51, i32* %10, align 4
  br label %148

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %37, %9
  %54 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %54, i32* %26, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load %struct.file*, %struct.file** %11, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FREAD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @VM_PROT_READ, align 4
  %64 = load i32, i32* %26, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %26, align 4
  br label %74

66:                                               ; preds = %55
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @VM_PROT_READ, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @EACCES, align 4
  store i32 %72, i32* %10, align 4
  br label %148

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @MAP_SHARED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.file*, %struct.file** %11, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FWRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @VM_PROT_WRITE, align 4
  %88 = load i32, i32* %26, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %26, align 4
  br label %98

90:                                               ; preds = %79
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @VM_PROT_WRITE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @EACCES, align 4
  store i32 %96, i32* %10, align 4
  br label %148

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %74
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %26, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %26, align 4
  %103 = load %struct.thread*, %struct.thread** %19, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 0
  %105 = load %struct.file*, %struct.file** %104, align 8
  store %struct.file* %105, %struct.file** %24, align 8
  %106 = load %struct.file*, %struct.file** %11, align 8
  %107 = call i32 @devfs_fp_check(%struct.file* %106, %struct.cdev** %20, %struct.cdevsw** %21, i32* %28)
  store i32 %107, i32* %27, align 4
  %108 = load i32, i32* %27, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %27, align 4
  store i32 %111, i32* %10, align 4
  br label %148

112:                                              ; preds = %99
  %113 = load %struct.thread*, %struct.thread** %19, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.cdev*, %struct.cdev** %20, align 8
  %117 = load %struct.cdevsw*, %struct.cdevsw** %21, align 8
  %118 = call i32 @vm_mmap_cdev(%struct.thread* %113, i32 %114, i32 %115, i32* %26, i32* %17, %struct.cdev* %116, %struct.cdevsw* %117, i32* %18, i32* %25)
  store i32 %118, i32* %27, align 4
  %119 = load %struct.file*, %struct.file** %24, align 8
  %120 = load %struct.thread*, %struct.thread** %19, align 8
  %121 = getelementptr inbounds %struct.thread, %struct.thread* %120, i32 0, i32 0
  store %struct.file* %119, %struct.file** %121, align 8
  %122 = load %struct.cdev*, %struct.cdev** %20, align 8
  %123 = load i32, i32* %28, align 4
  %124 = call i32 @dev_relthread(%struct.cdev* %122, i32 %123)
  %125 = load i32, i32* %27, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i32, i32* %27, align 4
  store i32 %128, i32* %10, align 4
  br label %148

129:                                              ; preds = %112
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @FALSE, align 4
  %139 = load %struct.thread*, %struct.thread** %19, align 8
  %140 = call i32 @vm_mmap_object(i32 %130, i32* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, %struct.thread* %139)
  store i32 %140, i32* %27, align 4
  %141 = load i32, i32* %27, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load i32, i32* %25, align 4
  %145 = call i32 @vm_object_deallocate(i32 %144)
  br label %146

146:                                              ; preds = %143, %129
  %147 = load i32, i32* %27, align 4
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %146, %127, %110, %95, %71, %50
  %149 = load i32, i32* %10, align 4
  ret i32 %149
}

declare dso_local i32 @devfs_fp_check(%struct.file*, %struct.cdev**, %struct.cdevsw**, i32*) #1

declare dso_local i32 @vm_mmap_cdev(%struct.thread*, i32, i32, i32*, i32*, %struct.cdev*, %struct.cdevsw*, i32*, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @vm_mmap_object(i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
