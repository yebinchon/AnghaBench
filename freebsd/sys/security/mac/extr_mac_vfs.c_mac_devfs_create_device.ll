; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_devfs_create_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_devfs_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.cdev = type { i32 }
%struct.devfs_dirent = type { i32 }

@devfs_create_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_devfs_create_device(%struct.ucred* %0, %struct.mount* %1, %struct.cdev* %2, %struct.devfs_dirent* %3) #0 {
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca %struct.devfs_dirent*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.mount* %1, %struct.mount** %6, align 8
  store %struct.cdev* %2, %struct.cdev** %7, align 8
  store %struct.devfs_dirent* %3, %struct.devfs_dirent** %8, align 8
  %9 = load i32, i32* @devfs_create_device, align 4
  %10 = load %struct.ucred*, %struct.ucred** %5, align 8
  %11 = load %struct.mount*, %struct.mount** %6, align 8
  %12 = load %struct.cdev*, %struct.cdev** %7, align 8
  %13 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %14 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %15 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %9, %struct.ucred* %10, %struct.mount* %11, %struct.cdev* %12, %struct.devfs_dirent* %13, i32 %16)
  ret void
}

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.ucred*, %struct.mount*, %struct.cdev*, %struct.devfs_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
