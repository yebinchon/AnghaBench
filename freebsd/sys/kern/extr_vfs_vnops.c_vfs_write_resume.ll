; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vfs_write_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vfs_write_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32, i32, i32, %struct.TYPE_2__* }

@MNTK_SUSPEND = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"mnt_susp_owner\00", align 1
@MNTK_SUSPEND2 = common dso_local global i32 0, align 4
@MNTK_SUSPENDED = common dso_local global i32 0, align 4
@TDP_IGNSUSP = common dso_local global i32 0, align 4
@VR_START_WRITE = common dso_local global i32 0, align 4
@VR_NO_SUSPCLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_write_resume(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mount*, %struct.mount** %3, align 8
  %6 = call i32 @vn_suspendable(%struct.mount* %5)
  %7 = call i32 @MPASS(i32 %6)
  %8 = load %struct.mount*, %struct.mount** %3, align 8
  %9 = call i32 @MNT_ILOCK(%struct.mount* %8)
  %10 = load %struct.mount*, %struct.mount** %3, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MNTK_SUSPEND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %2
  %17 = load %struct.mount*, %struct.mount** %3, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %21 = icmp eq %struct.TYPE_2__* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @MNTK_SUSPEND, align 4
  %25 = load i32, i32* @MNTK_SUSPEND2, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MNTK_SUSPENDED, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.mount*, %struct.mount** %3, align 8
  %31 = getelementptr inbounds %struct.mount, %struct.mount* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.mount*, %struct.mount** %3, align 8
  %35 = getelementptr inbounds %struct.mount, %struct.mount* %34, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.mount*, %struct.mount** %3, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 1
  %38 = call i32 @wakeup(i32* %37)
  %39 = load %struct.mount*, %struct.mount** %3, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 2
  %41 = call i32 @wakeup(i32* %40)
  %42 = load i32, i32* @TDP_IGNSUSP, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @VR_START_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %16
  %53 = load %struct.mount*, %struct.mount** %3, align 8
  %54 = call i32 @MNT_REF(%struct.mount* %53)
  %55 = load %struct.mount*, %struct.mount** %3, align 8
  %56 = getelementptr inbounds %struct.mount, %struct.mount* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %16
  %60 = load %struct.mount*, %struct.mount** %3, align 8
  %61 = call i32 @MNT_IUNLOCK(%struct.mount* %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @VR_NO_SUSPCLR, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.mount*, %struct.mount** %3, align 8
  %68 = call i32 @VFS_SUSP_CLEAN(%struct.mount* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.mount*, %struct.mount** %3, align 8
  %71 = call i32 @vfs_op_exit(%struct.mount* %70)
  br label %86

72:                                               ; preds = %2
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @VR_START_WRITE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.mount*, %struct.mount** %3, align 8
  %79 = call i32 @MNT_REF(%struct.mount* %78)
  %80 = load %struct.mount*, %struct.mount** %3, align 8
  %81 = call i32 @vn_start_write_refed(%struct.mount* %80, i32 0, i32 1)
  br label %85

82:                                               ; preds = %72
  %83 = load %struct.mount*, %struct.mount** %3, align 8
  %84 = call i32 @MNT_IUNLOCK(%struct.mount* %83)
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %69
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @MNT_REF(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @VFS_SUSP_CLEAN(%struct.mount*) #1

declare dso_local i32 @vfs_op_exit(%struct.mount*) #1

declare dso_local i32 @vn_start_write_refed(%struct.mount*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
