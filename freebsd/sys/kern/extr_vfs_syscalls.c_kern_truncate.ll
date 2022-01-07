; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i64 }
%struct.vattr = type { i64 }
%struct.nameidata = type { %struct.vnode* }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_truncate(%struct.thread* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vattr, align 8
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %101

20:                                               ; preds = %4
  %21 = load i32, i32* @LOOKUP, align 4
  %22 = load i32, i32* @FOLLOW, align 4
  %23 = load i32, i32* @AUDITVNODE1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.thread*, %struct.thread** %6, align 8
  %28 = call i32 @NDINIT(%struct.nameidata* %14, i32 %21, i32 %24, i32 %25, i8* %26, %struct.thread* %27)
  %29 = call i32 @namei(%struct.nameidata* %14)
  store i32 %29, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %35 = load %struct.vnode*, %struct.vnode** %34, align 8
  store %struct.vnode* %35, %struct.vnode** %11, align 8
  %36 = load %struct.vnode*, %struct.vnode** %11, align 8
  %37 = load i32, i32* @OFF_MAX, align 4
  %38 = call i8* @vn_rangelock_wlock(%struct.vnode* %36, i32 0, i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load %struct.vnode*, %struct.vnode** %11, align 8
  %40 = load i32, i32* @V_WAIT, align 4
  %41 = load i32, i32* @PCATCH, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @vn_start_write(%struct.vnode* %39, %struct.mount** %10, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.vnode*, %struct.vnode** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @vn_rangelock_unlock(%struct.vnode* %46, i8* %47)
  %49 = load %struct.vnode*, %struct.vnode** %11, align 8
  %50 = call i32 @vrele(%struct.vnode* %49)
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %101

52:                                               ; preds = %33
  %53 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %54 = call i32 @NDFREE(%struct.nameidata* %14, i32 %53)
  %55 = load %struct.vnode*, %struct.vnode** %11, align 8
  %56 = load i32, i32* @LK_EXCLUSIVE, align 4
  %57 = load i32, i32* @LK_RETRY, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @vn_lock(%struct.vnode* %55, i32 %58)
  %60 = load %struct.vnode*, %struct.vnode** %11, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VDIR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @EISDIR, align 4
  store i32 %66, i32* %15, align 4
  br label %90

67:                                               ; preds = %52
  %68 = load %struct.vnode*, %struct.vnode** %11, align 8
  %69 = call i32 @vn_writechk(%struct.vnode* %68)
  store i32 %69, i32* %15, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.vnode*, %struct.vnode** %11, align 8
  %73 = load i32, i32* @VWRITE, align 4
  %74 = load %struct.thread*, %struct.thread** %6, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.thread*, %struct.thread** %6, align 8
  %78 = call i32 @VOP_ACCESS(%struct.vnode* %72, i32 %73, i32 %76, %struct.thread* %77)
  store i32 %78, i32* %15, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = call i32 @VATTR_NULL(%struct.vattr* %13)
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load %struct.vnode*, %struct.vnode** %11, align 8
  %85 = load %struct.thread*, %struct.thread** %6, align 8
  %86 = getelementptr inbounds %struct.thread, %struct.thread* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @VOP_SETATTR(%struct.vnode* %84, %struct.vattr* %13, i32 %87)
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %80, %71, %67
  br label %90

90:                                               ; preds = %89, %65
  %91 = load %struct.vnode*, %struct.vnode** %11, align 8
  %92 = call i32 @VOP_UNLOCK(%struct.vnode* %91, i32 0)
  %93 = load %struct.mount*, %struct.mount** %10, align 8
  %94 = call i32 @vn_finished_write(%struct.mount* %93)
  %95 = load %struct.vnode*, %struct.vnode** %11, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @vn_rangelock_unlock(%struct.vnode* %95, i8* %96)
  %98 = load %struct.vnode*, %struct.vnode** %11, align 8
  %99 = call i32 @vrele(%struct.vnode* %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %90, %45, %31, %18
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i8* @vn_rangelock_wlock(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_rangelock_unlock(%struct.vnode*, i8*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vn_writechk(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
