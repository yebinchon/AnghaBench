; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_sys_swapon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_sys_swapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.swapon_args = type { i32 }
%struct.vattr = type { i32 }
%struct.vnode = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nameidata = type { %struct.vnode* }

@PRIV_SWAPON = common dso_local global i32 0, align 4
@swdev_syscall_lock = common dso_local global i32 0, align 4
@swblk_zone = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@ISOPEN = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VFCF_NETWORK = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_swapon(%struct.thread* %0, %struct.swapon_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.swapon_args*, align 8
  %6 = alloca %struct.vattr, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.nameidata, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.swapon_args* %1, %struct.swapon_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load i32, i32* @PRIV_SWAPON, align 4
  %12 = call i32 @priv_check(%struct.thread* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %94

17:                                               ; preds = %2
  %18 = call i32 @sx_xlock(i32* @swdev_syscall_lock)
  %19 = load i32*, i32** @swblk_zone, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %9, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load i32, i32* @LOOKUP, align 4
  %25 = load i32, i32* @ISOPEN, align 4
  %26 = load i32, i32* @FOLLOW, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AUDITVNODE1, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UIO_USERSPACE, align 4
  %31 = load %struct.swapon_args*, %struct.swapon_args** %5, align 8
  %32 = getelementptr inbounds %struct.swapon_args, %struct.swapon_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = call i32 @NDINIT(%struct.nameidata* %8, i32 %24, i32 %29, i32 %30, i32 %33, %struct.thread* %34)
  %36 = call i32 @namei(%struct.nameidata* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %91

40:                                               ; preds = %23
  %41 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %42 = call i32 @NDFREE(%struct.nameidata* %8, i32 %41)
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %44 = load %struct.vnode*, %struct.vnode** %43, align 8
  store %struct.vnode* %44, %struct.vnode** %7, align 8
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = call i64 @vn_isdisk(%struct.vnode* %45, i32* %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.vnode*, %struct.vnode** %7, align 8
  %50 = call i32 @swapongeom(%struct.vnode* %49)
  store i32 %50, i32* %9, align 4
  br label %84

51:                                               ; preds = %40
  %52 = load %struct.vnode*, %struct.vnode** %7, align 8
  %53 = getelementptr inbounds %struct.vnode, %struct.vnode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VREG, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  %58 = load %struct.vnode*, %struct.vnode** %7, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VFCF_NETWORK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %57
  %69 = load %struct.vnode*, %struct.vnode** %7, align 8
  %70 = load %struct.thread*, %struct.thread** %4, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @VOP_GETATTR(%struct.vnode* %69, %struct.vattr* %6, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.thread*, %struct.thread** %4, align 8
  %77 = load %struct.vnode*, %struct.vnode** %7, align 8
  %78 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DEV_BSIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = call i32 @swaponvp(%struct.thread* %76, %struct.vnode* %77, i32 %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %75, %68, %57, %51
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.vnode*, %struct.vnode** %7, align 8
  %89 = call i32 @vrele(%struct.vnode* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %39, %21
  %92 = call i32 @sx_xunlock(i32* @swdev_syscall_lock)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i64 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i32 @swapongeom(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @swaponvp(%struct.thread*, %struct.vnode*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
