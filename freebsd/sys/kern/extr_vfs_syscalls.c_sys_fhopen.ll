; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32*, i32 }
%struct.fhopen_args = type { i32, i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.fhandle = type { i32, i32 }
%struct.file = type { i32, i32, %struct.vnode*, i32* }

@PRIV_VFS_FHOPEN = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"VOP_OPEN in fhopen() set f_ops\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fhopen() encountered fdopen()\00", align 1
@FMASK = common dso_local global i32 0, align 4
@FHASLOCK = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i32 0, align 4
@vnops = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fhopen(%struct.thread* %0, %struct.fhopen_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fhopen_args*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.fhandle, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fhopen_args* %1, %struct.fhopen_args** %5, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load i32, i32* @PRIV_VFS_FHOPEN, align 4
  %15 = call i32 @priv_check(%struct.thread* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %3, align 4
  br label %151

20:                                               ; preds = %2
  store i32 -1, i32* %12, align 4
  %21 = load %struct.fhopen_args*, %struct.fhopen_args** %5, align 8
  %22 = getelementptr inbounds %struct.fhopen_args, %struct.fhopen_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @FFLAGS(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @FREAD, align 4
  %27 = load i32, i32* @FWRITE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %20
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %151

38:                                               ; preds = %31
  %39 = load %struct.fhopen_args*, %struct.fhopen_args** %5, align 8
  %40 = getelementptr inbounds %struct.fhopen_args, %struct.fhopen_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @copyin(i32 %41, %struct.fhandle* %8, i32 8)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %151

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.fhandle, %struct.fhandle* %8, i32 0, i32 1
  %49 = call %struct.mount* @vfs_busyfs(i32* %48)
  store %struct.mount* %49, %struct.mount** %6, align 8
  %50 = load %struct.mount*, %struct.mount** %6, align 8
  %51 = icmp eq %struct.mount* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ESTALE, align 4
  store i32 %53, i32* %3, align 4
  br label %151

54:                                               ; preds = %47
  %55 = load %struct.mount*, %struct.mount** %6, align 8
  %56 = getelementptr inbounds %struct.fhandle, %struct.fhandle* %8, i32 0, i32 0
  %57 = load i32, i32* @LK_EXCLUSIVE, align 4
  %58 = call i32 @VFS_FHTOVP(%struct.mount* %55, i32* %56, i32 %57, %struct.vnode** %7)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.mount*, %struct.mount** %6, align 8
  %60 = call i32 @vfs_unbusy(%struct.mount* %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %151

65:                                               ; preds = %54
  %66 = load %struct.thread*, %struct.thread** %4, align 8
  %67 = call i32 @falloc_noinstall(%struct.thread* %66, %struct.file** %9)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.vnode*, %struct.vnode** %7, align 8
  %72 = call i32 @vput(%struct.vnode* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %151

74:                                               ; preds = %65
  %75 = load %struct.vnode*, %struct.vnode** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.thread*, %struct.thread** %4, align 8
  %81 = load %struct.file*, %struct.file** %9, align 8
  %82 = call i32 @vn_open_vnode(%struct.vnode* %75, i32 %76, i32 %79, %struct.thread* %80, %struct.file* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %74
  %86 = load %struct.file*, %struct.file** %9, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, @badfileops
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.thread*, %struct.thread** %4, align 8
  %93 = getelementptr inbounds %struct.thread, %struct.thread* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @KASSERT(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.vnode*, %struct.vnode** %7, align 8
  %99 = call i32 @vput(%struct.vnode* %98)
  br label %141

100:                                              ; preds = %74
  %101 = load %struct.vnode*, %struct.vnode** %7, align 8
  %102 = load %struct.file*, %struct.file** %9, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 2
  store %struct.vnode* %101, %struct.vnode** %103, align 8
  %104 = load %struct.file*, %struct.file** %9, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.file*, %struct.file** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @FMASK, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.file*, %struct.file** %9, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FHASLOCK, align 4
  %114 = and i32 %112, %113
  %115 = or i32 %109, %114
  %116 = load i32, i32* @DTYPE_VNODE, align 4
  %117 = load %struct.vnode*, %struct.vnode** %7, align 8
  %118 = call i32 @finit(%struct.file* %106, i32 %115, i32 %116, %struct.vnode* %117, i32* @vnops)
  %119 = load %struct.vnode*, %struct.vnode** %7, align 8
  %120 = call i32 @VOP_UNLOCK(%struct.vnode* %119, i32 0)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @O_TRUNC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %100
  %126 = load %struct.file*, %struct.file** %9, align 8
  %127 = load %struct.thread*, %struct.thread** %4, align 8
  %128 = getelementptr inbounds %struct.thread, %struct.thread* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.thread*, %struct.thread** %4, align 8
  %131 = call i32 @fo_truncate(%struct.file* %126, i32 0, i32 %129, %struct.thread* %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %141

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %100
  %137 = load %struct.thread*, %struct.thread** %4, align 8
  %138 = load %struct.file*, %struct.file** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @finstall(%struct.thread* %137, %struct.file* %138, i32* %12, i32 %139, i32* null)
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %136, %134, %85
  %142 = load %struct.file*, %struct.file** %9, align 8
  %143 = load %struct.thread*, %struct.thread** %4, align 8
  %144 = call i32 @fdrop(%struct.file* %142, %struct.thread* %143)
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.thread*, %struct.thread** %4, align 8
  %147 = getelementptr inbounds %struct.thread, %struct.thread* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %141, %70, %63, %52, %45, %36, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @copyin(i32, %struct.fhandle*, i32) #1

declare dso_local %struct.mount* @vfs_busyfs(i32*) #1

declare dso_local i32 @VFS_FHTOVP(%struct.mount*, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @falloc_noinstall(%struct.thread*, %struct.file**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vn_open_vnode(%struct.vnode*, i32, i32, %struct.thread*, %struct.file*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.vnode*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fo_truncate(%struct.file*, i32, i32, %struct.thread*) #1

declare dso_local i32 @finstall(%struct.thread*, %struct.file*, i32*, i32, i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
