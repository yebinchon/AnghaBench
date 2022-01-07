; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_undelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_undelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.undelete_args = type { i32 }
%struct.mount = type { i32 }
%struct.nameidata = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DELETE = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@DOWHITEOUT = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@ISWHITEOUT = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@V_XSLEEP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_undelete(%struct.thread* %0, %struct.undelete_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.undelete_args*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.nameidata, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.undelete_args* %1, %struct.undelete_args** %5, align 8
  br label %9

9:                                                ; preds = %86, %2
  %10 = call i32 (...) @bwillwrite()
  %11 = load i32, i32* @DELETE, align 4
  %12 = load i32, i32* @LOCKPARENT, align 4
  %13 = load i32, i32* @DOWHITEOUT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AUDITVNODE1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @UIO_USERSPACE, align 4
  %18 = load %struct.undelete_args*, %struct.undelete_args** %5, align 8
  %19 = getelementptr inbounds %struct.undelete_args, %struct.undelete_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = call i32 @NDINIT(%struct.nameidata* %7, i32 %11, i32 %16, i32 %17, i32 %20, %struct.thread* %21)
  %23 = call i32 @namei(%struct.nameidata* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %101

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NULLVP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ISWHITEOUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %42 = call i32 @NDFREE(%struct.nameidata* %7, i32 %41)
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @vrele(i64 %50)
  br label %56

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @vput(i64 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @vrele(i64 %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @EEXIST, align 4
  store i32 %65, i32* %3, align 4
  br label %101

66:                                               ; preds = %33
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* @V_NOWAIT, align 4
  %71 = call i32 @vn_start_write(i32* %69, %struct.mount** %6, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %75 = call i32 @NDFREE(%struct.nameidata* %7, i32 %74)
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @vput(i64 %77)
  %79 = load i32, i32* @V_XSLEEP, align 4
  %80 = load i32, i32* @PCATCH, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @vn_start_write(i32* null, %struct.mount** %6, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %101

86:                                               ; preds = %73
  br label %9

87:                                               ; preds = %66
  %88 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 2
  %91 = load i32, i32* @DELETE, align 4
  %92 = call i32 @VOP_WHITEOUT(i64 %89, %struct.TYPE_2__* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %94 = call i32 @NDFREE(%struct.nameidata* %7, i32 %93)
  %95 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @vput(i64 %96)
  %98 = load %struct.mount*, %struct.mount** %6, align 8
  %99 = call i32 @vn_finished_write(%struct.mount* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %87, %84, %64, %26
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @vput(i64) #1

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @VOP_WHITEOUT(i64, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
