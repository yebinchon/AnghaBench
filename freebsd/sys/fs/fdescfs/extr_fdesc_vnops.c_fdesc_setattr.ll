; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { i32, %struct.vattr*, i32 }
%struct.vattr = type { i64 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.file = type { %struct.vnode* }
%struct.TYPE_2__ = type { i64, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@Froot = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@CAP_EXTATTR_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @fdesc_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %12 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %12, i32 0, i32 1
  %14 = load %struct.vattr*, %struct.vattr** %13, align 8
  store %struct.vattr* %14, %struct.vattr** %4, align 8
  %15 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %15, %struct.thread** %8, align 8
  %16 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_2__* @VTOFDESC(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @Froot, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EACCES, align 4
  store i32 %25, i32* %2, align 4
  br label %89

26:                                               ; preds = %1
  %27 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_2__* @VTOFDESC(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.thread*, %struct.thread** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CAP_EXTATTR_SET, align 4
  %36 = call i32 @cap_rights_init(i32* %9, i32 %35)
  %37 = call i32 @getvnode(%struct.thread* %33, i32 %34, i32 %36, %struct.file** %7)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.vattr*, %struct.vattr** %4, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VNOVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %51, i32* %11, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %50
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %2, align 4
  br label %89

56:                                               ; preds = %26
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load %struct.vnode*, %struct.vnode** %58, align 8
  store %struct.vnode* %59, %struct.vnode** %5, align 8
  %60 = load %struct.vnode*, %struct.vnode** %5, align 8
  %61 = load i32, i32* @V_WAIT, align 4
  %62 = load i32, i32* @PCATCH, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @vn_start_write(%struct.vnode* %60, %struct.mount** %6, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %56
  %67 = load %struct.vnode*, %struct.vnode** %5, align 8
  %68 = load i32, i32* @LK_EXCLUSIVE, align 4
  %69 = load i32, i32* @LK_RETRY, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @vn_lock(%struct.vnode* %67, i32 %70)
  %72 = load %struct.vnode*, %struct.vnode** %5, align 8
  %73 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %74 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %73, i32 0, i32 1
  %75 = load %struct.vattr*, %struct.vattr** %74, align 8
  %76 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %77 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @VOP_SETATTR(%struct.vnode* %72, %struct.vattr* %75, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.vnode*, %struct.vnode** %5, align 8
  %81 = call i32 @VOP_UNLOCK(%struct.vnode* %80, i32 0)
  %82 = load %struct.mount*, %struct.mount** %6, align 8
  %83 = call i32 @vn_finished_write(%struct.mount* %82)
  br label %84

84:                                               ; preds = %66, %56
  %85 = load %struct.file*, %struct.file** %7, align 8
  %86 = load %struct.thread*, %struct.thread** %8, align 8
  %87 = call i32 @fdrop(%struct.file* %85, %struct.thread* %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %54, %24
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_2__* @VTOFDESC(i32) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
