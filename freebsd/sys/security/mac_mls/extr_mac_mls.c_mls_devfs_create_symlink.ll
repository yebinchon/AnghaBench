; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_devfs_create_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_devfs_create_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.mount = type { i32 }
%struct.devfs_dirent = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, %struct.mount*, %struct.devfs_dirent*, %struct.label*, %struct.devfs_dirent*, %struct.label*)* @mls_devfs_create_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mls_devfs_create_symlink(%struct.ucred* %0, %struct.mount* %1, %struct.devfs_dirent* %2, %struct.label* %3, %struct.devfs_dirent* %4, %struct.label* %5) #0 {
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.devfs_dirent*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.devfs_dirent*, align 8
  %12 = alloca %struct.label*, align 8
  %13 = alloca %struct.mac_mls*, align 8
  %14 = alloca %struct.mac_mls*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.mount* %1, %struct.mount** %8, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %9, align 8
  store %struct.label* %3, %struct.label** %10, align 8
  store %struct.devfs_dirent* %4, %struct.devfs_dirent** %11, align 8
  store %struct.label* %5, %struct.label** %12, align 8
  %15 = load %struct.ucred*, %struct.ucred** %7, align 8
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %15, i32 0, i32 0
  %17 = load %struct.label*, %struct.label** %16, align 8
  %18 = call %struct.mac_mls* @SLOT(%struct.label* %17)
  store %struct.mac_mls* %18, %struct.mac_mls** %13, align 8
  %19 = load %struct.label*, %struct.label** %12, align 8
  %20 = call %struct.mac_mls* @SLOT(%struct.label* %19)
  store %struct.mac_mls* %20, %struct.mac_mls** %14, align 8
  %21 = load %struct.mac_mls*, %struct.mac_mls** %13, align 8
  %22 = load %struct.mac_mls*, %struct.mac_mls** %14, align 8
  %23 = call i32 @mls_copy_effective(%struct.mac_mls* %21, %struct.mac_mls* %22)
  ret void
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_copy_effective(%struct.mac_mls*, %struct.mac_mls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
