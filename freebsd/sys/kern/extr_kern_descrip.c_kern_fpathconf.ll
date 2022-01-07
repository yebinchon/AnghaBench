; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_fpathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_fpathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i64, %struct.vnode* }
%struct.vnode = type { i32 }

@cap_fpathconf_rights = common dso_local global i32 0, align 4
@_PC_ASYNC_IO = common dso_local global i32 0, align 4
@_POSIX_ASYNCHRONOUS_IO = common dso_local global i64 0, align 8
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@DTYPE_PIPE = common dso_local global i64 0, align 8
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@_PC_PIPE_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fpathconf(%struct.thread* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @fget(%struct.thread* %13, i32 %14, i32* @cap_fpathconf_rights, %struct.file** %10)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @_PC_ASYNC_IO, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @_POSIX_ASYNCHRONOUS_IO, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  br label %71

27:                                               ; preds = %20
  %28 = load %struct.file*, %struct.file** %10, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  store %struct.vnode* %30, %struct.vnode** %11, align 8
  %31 = load %struct.vnode*, %struct.vnode** %11, align 8
  %32 = icmp ne %struct.vnode* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.vnode*, %struct.vnode** %11, align 8
  %35 = load i32, i32* @LK_SHARED, align 4
  %36 = load i32, i32* @LK_RETRY, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @vn_lock(%struct.vnode* %34, i32 %37)
  %39 = load %struct.vnode*, %struct.vnode** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i64*, i64** %9, align 8
  %42 = call i32 @VOP_PATHCONF(%struct.vnode* %39, i32 %40, i64* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.vnode*, %struct.vnode** %11, align 8
  %44 = call i32 @VOP_UNLOCK(%struct.vnode* %43, i32 0)
  br label %70

45:                                               ; preds = %27
  %46 = load %struct.file*, %struct.file** %10, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DTYPE_PIPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.file*, %struct.file** %10, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DTYPE_SOCKET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @_PC_PIPE_BUF, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %12, align 4
  br label %66

63:                                               ; preds = %57
  %64 = load i64, i64* @PIPE_BUF, align 8
  %65 = load i64*, i64** %9, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %63, %61
  br label %69

67:                                               ; preds = %51
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %66
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.file*, %struct.file** %10, align 8
  %73 = load %struct.thread*, %struct.thread** %6, align 8
  %74 = call i32 @fdrop(%struct.file* %72, %struct.thread* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_PATHCONF(%struct.vnode*, i32, i64*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
