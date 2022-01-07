; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_finished_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_finished_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i64, i32 }

@writeopcount = common dso_local global i32 0, align 4
@ref = common dso_local global i32 0, align 4
@MNTK_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vn_finished_write(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %4 = load %struct.mount*, %struct.mount** %2, align 8
  %5 = icmp eq %struct.mount* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.mount*, %struct.mount** %2, align 8
  %8 = call i32 @vn_suspendable(%struct.mount* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %73

11:                                               ; preds = %6
  %12 = load %struct.mount*, %struct.mount** %2, align 8
  %13 = call i64 @vfs_op_thread_enter(%struct.mount* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.mount*, %struct.mount** %2, align 8
  %17 = load i32, i32* @writeopcount, align 4
  %18 = call i32 @vfs_mp_count_sub_pcpu(%struct.mount* %16, i32 %17, i32 1)
  %19 = load %struct.mount*, %struct.mount** %2, align 8
  %20 = load i32, i32* @ref, align 4
  %21 = call i32 @vfs_mp_count_sub_pcpu(%struct.mount* %19, i32 %20, i32 1)
  %22 = load %struct.mount*, %struct.mount** %2, align 8
  %23 = call i32 @vfs_op_thread_exit(%struct.mount* %22)
  br label %73

24:                                               ; preds = %11
  %25 = load %struct.mount*, %struct.mount** %2, align 8
  %26 = call i32 @MNT_ILOCK(%struct.mount* %25)
  %27 = load %struct.mount*, %struct.mount** %2, align 8
  %28 = call i32 @vfs_assert_mount_counters(%struct.mount* %27)
  %29 = load %struct.mount*, %struct.mount** %2, align 8
  %30 = call i32 @MNT_REL(%struct.mount* %29)
  %31 = load %struct.mount*, %struct.mount** %2, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  store i32 %34, i32* %3, align 4
  %35 = load %struct.mount*, %struct.mount** %2, align 8
  %36 = getelementptr inbounds %struct.mount, %struct.mount* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %24
  %40 = load %struct.mount*, %struct.mount** %2, align 8
  %41 = getelementptr inbounds %struct.mount, %struct.mount* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MNTK_SUSPEND, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @MPASS(i32 %46)
  %48 = load %struct.mount*, %struct.mount** %2, align 8
  %49 = call i32 @MNT_IUNLOCK(%struct.mount* %48)
  br label %73

50:                                               ; preds = %24
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.mount*, %struct.mount** %2, align 8
  %55 = call i32 @vfs_dump_mount_counters(%struct.mount* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.mount*, %struct.mount** %2, align 8
  %58 = getelementptr inbounds %struct.mount, %struct.mount* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MNTK_SUSPEND, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.mount*, %struct.mount** %2, align 8
  %68 = getelementptr inbounds %struct.mount, %struct.mount* %67, i32 0, i32 0
  %69 = call i32 @wakeup(i32* %68)
  br label %70

70:                                               ; preds = %66, %63, %56
  %71 = load %struct.mount*, %struct.mount** %2, align 8
  %72 = call i32 @MNT_IUNLOCK(%struct.mount* %71)
  br label %73

73:                                               ; preds = %70, %39, %15, %10
  ret void
}

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i64 @vfs_op_thread_enter(%struct.mount*) #1

declare dso_local i32 @vfs_mp_count_sub_pcpu(%struct.mount*, i32, i32) #1

declare dso_local i32 @vfs_op_thread_exit(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @vfs_assert_mount_counters(%struct.mount*) #1

declare dso_local i32 @MNT_REL(%struct.mount*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vfs_dump_mount_counters(%struct.mount*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
