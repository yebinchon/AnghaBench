; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_posix_fallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_posix_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.file = type { i32, i64, i32, %struct.vnode*, %struct.TYPE_2__* }
%struct.vnode = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@cap_pwrite_rights = common dso_local global i32 0, align 4
@DFLAG_SEEKABLE = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"offset + len changed from %jx/%jx to %jx/%jx\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Iteration did not make progress?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_posix_fallocate(%struct.thread* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.mount*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @AUDIT_ARG_FD(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %149

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @OFF_MAX, align 8
  %28 = load i64, i64* %9, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EFBIG, align 4
  store i32 %32, i32* %5, align 4
  br label %149

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @AUDIT_ARG_FD(i32 %34)
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @fget(%struct.thread* %36, i32 %37, i32* @cap_pwrite_rights, %struct.file** %10)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %5, align 4
  br label %149

43:                                               ; preds = %33
  %44 = load %struct.thread*, %struct.thread** %6, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.file*, %struct.file** %10, align 8
  %48 = call i32 @AUDIT_ARG_FILE(i32 %46, %struct.file* %47)
  %49 = load %struct.file*, %struct.file** %10, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DFLAG_SEEKABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @ESPIPE, align 4
  store i32 %58, i32* %15, align 4
  br label %144

59:                                               ; preds = %43
  %60 = load %struct.file*, %struct.file** %10, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FWRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @EBADF, align 4
  store i32 %67, i32* %15, align 4
  br label %144

68:                                               ; preds = %59
  %69 = load %struct.file*, %struct.file** %10, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DTYPE_VNODE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @ENODEV, align 4
  store i32 %75, i32* %15, align 4
  br label %144

76:                                               ; preds = %68
  %77 = load %struct.file*, %struct.file** %10, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 3
  %79 = load %struct.vnode*, %struct.vnode** %78, align 8
  store %struct.vnode* %79, %struct.vnode** %12, align 8
  %80 = load %struct.vnode*, %struct.vnode** %12, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VREG, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @ENODEV, align 4
  store i32 %86, i32* %15, align 4
  br label %144

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %136, %87
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %14, align 8
  %91 = call i32 (...) @bwillwrite()
  store %struct.mount* null, %struct.mount** %11, align 8
  %92 = load %struct.vnode*, %struct.vnode** %12, align 8
  %93 = load i32, i32* @V_WAIT, align 4
  %94 = load i32, i32* @PCATCH, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @vn_start_write(%struct.vnode* %92, %struct.mount** %11, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %143

100:                                              ; preds = %88
  %101 = load %struct.vnode*, %struct.vnode** %12, align 8
  %102 = load i32, i32* @LK_EXCLUSIVE, align 4
  %103 = call i32 @vn_lock(%struct.vnode* %101, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.mount*, %struct.mount** %11, align 8
  %108 = call i32 @vn_finished_write(%struct.mount* %107)
  br label %143

109:                                              ; preds = %100
  %110 = load %struct.vnode*, %struct.vnode** %12, align 8
  %111 = call i32 @VOP_ALLOCATE(%struct.vnode* %110, i64* %8, i64* %9)
  store i32 %111, i32* %15, align 4
  %112 = load %struct.vnode*, %struct.vnode** %12, align 8
  %113 = call i32 @VOP_UNLOCK(%struct.vnode* %112, i32 0)
  %114 = load %struct.mount*, %struct.mount** %11, align 8
  %115 = call i32 @vn_finished_write(%struct.mount* %114)
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add nsw i64 %119, %120
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %109
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %124, i64 %125, i64 %126, i64 %127)
  br label %129

129:                                              ; preds = %123, %109
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %9, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %129
  br label %143

136:                                              ; preds = %132
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp sgt i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @KASSERT(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %142 = call i32 (...) @maybe_yield()
  br label %88

143:                                              ; preds = %135, %106, %99
  br label %144

144:                                              ; preds = %143, %85, %74, %66, %57
  %145 = load %struct.file*, %struct.file** %10, align 8
  %146 = load %struct.thread*, %struct.thread** %6, align 8
  %147 = call i32 @fdrop(%struct.file* %145, %struct.thread* %146)
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %144, %41, %31, %23
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @AUDIT_ARG_FILE(i32, %struct.file*) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @VOP_ALLOCATE(%struct.vnode*, i64*, i64*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @panic(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @maybe_yield(...) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
