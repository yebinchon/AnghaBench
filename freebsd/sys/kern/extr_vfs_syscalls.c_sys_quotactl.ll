; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_quotactl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_quotactl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.quotactl_args = type { i32, i32, i32, i32 }
%struct.mount = type { i32 }
%struct.nameidata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mount* }

@PR_ALLOW_QUOTAS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@SUBCMDSHIFT = common dso_local global i32 0, align 4
@Q_QUOTAON = common dso_local global i32 0, align 4
@Q_QUOTAOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_quotactl(%struct.thread* %0, %struct.quotactl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.quotactl_args*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.nameidata, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.quotactl_args* %1, %struct.quotactl_args** %5, align 8
  %9 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %10 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AUDIT_ARG_CMD(i32 %11)
  %13 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %14 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AUDIT_ARG_UID(i32 %15)
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PR_ALLOW_QUOTAS, align 4
  %21 = call i32 @prison_allow(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EPERM, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load i32, i32* @LOOKUP, align 4
  %27 = load i32, i32* @FOLLOW, align 4
  %28 = load i32, i32* @LOCKLEAF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AUDITVNODE1, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UIO_USERSPACE, align 4
  %33 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %34 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = call i32 @NDINIT(%struct.nameidata* %7, i32 %26, i32 %31, i32 %32, i32 %35, %struct.thread* %36)
  %38 = call i32 @namei(%struct.nameidata* %7)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %25
  %43 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %44 = call i32 @NDFREE(%struct.nameidata* %7, i32 %43)
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.mount*, %struct.mount** %47, align 8
  store %struct.mount* %48, %struct.mount** %6, align 8
  %49 = load %struct.mount*, %struct.mount** %6, align 8
  %50 = call i32 @vfs_ref(%struct.mount* %49)
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @vput(%struct.TYPE_2__* %52)
  %54 = load %struct.mount*, %struct.mount** %6, align 8
  %55 = call i32 @vfs_busy(%struct.mount* %54, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.mount*, %struct.mount** %6, align 8
  %57 = call i32 @vfs_rel(%struct.mount* %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %94

62:                                               ; preds = %42
  %63 = load %struct.mount*, %struct.mount** %6, align 8
  %64 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %65 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %68 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %71 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @VFS_QUOTACTL(%struct.mount* %63, i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %75 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SUBCMDSHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = load i32, i32* @Q_QUOTAON, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %62
  %82 = load %struct.quotactl_args*, %struct.quotactl_args** %5, align 8
  %83 = getelementptr inbounds %struct.quotactl_args, %struct.quotactl_args* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SUBCMDSHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* @Q_QUOTAOFF, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.mount*, %struct.mount** %6, align 8
  %91 = call i32 @vfs_unbusy(%struct.mount* %90)
  br label %92

92:                                               ; preds = %89, %81, %62
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %60, %40, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @AUDIT_ARG_CMD(i32) #1

declare dso_local i32 @AUDIT_ARG_UID(i32) #1

declare dso_local i32 @prison_allow(i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @vput(%struct.TYPE_2__*) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @VFS_QUOTACTL(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
