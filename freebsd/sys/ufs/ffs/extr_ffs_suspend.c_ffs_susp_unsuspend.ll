; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_unsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_unsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.ufsmount = type { i32 }

@ffs_susp_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@UM_WRITESUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*)* @ffs_susp_unsuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_susp_unsuspend(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca %struct.ufsmount*, align 8
  store %struct.mount* %0, %struct.mount** %2, align 8
  %4 = load i32, i32* @SA_XLOCKED, align 4
  %5 = call i32 @sx_assert(i32* @ffs_susp_lock, i32 %4)
  %6 = load i32, i32* @curthread, align 4
  %7 = load %struct.mount*, %struct.mount** %2, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.mount*, %struct.mount** %2, align 8
  %10 = call i32 @vfs_write_resume(%struct.mount* %9, i32 0)
  %11 = load %struct.mount*, %struct.mount** %2, align 8
  %12 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %11)
  store %struct.ufsmount* %12, %struct.ufsmount** %3, align 8
  %13 = load %struct.ufsmount*, %struct.ufsmount** %3, align 8
  %14 = call i32 @UFS_LOCK(%struct.ufsmount* %13)
  %15 = load i32, i32* @UM_WRITESUSPENDED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ufsmount*, %struct.ufsmount** %3, align 8
  %18 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ufsmount*, %struct.ufsmount** %3, align 8
  %22 = call i32 @UFS_UNLOCK(%struct.ufsmount* %21)
  %23 = load %struct.mount*, %struct.mount** %2, align 8
  %24 = call i32 @vfs_unbusy(%struct.mount* %23)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @vfs_write_resume(%struct.mount*, i32) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
