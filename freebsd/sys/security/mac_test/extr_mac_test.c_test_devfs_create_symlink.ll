; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_devfs_create_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_devfs_create_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.mount = type { i32 }
%struct.devfs_dirent = type { i32 }
%struct.label = type { i32 }

@MAGIC_CRED = common dso_local global i32 0, align 4
@MAGIC_DEVFS = common dso_local global i32 0, align 4
@devfs_create_symlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, %struct.mount*, %struct.devfs_dirent*, %struct.label*, %struct.devfs_dirent*, %struct.label*)* @test_devfs_create_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_devfs_create_symlink(%struct.ucred* %0, %struct.mount* %1, %struct.devfs_dirent* %2, %struct.label* %3, %struct.devfs_dirent* %4, %struct.label* %5) #0 {
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.devfs_dirent*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.devfs_dirent*, align 8
  %12 = alloca %struct.label*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.mount* %1, %struct.mount** %8, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %9, align 8
  store %struct.label* %3, %struct.label** %10, align 8
  store %struct.devfs_dirent* %4, %struct.devfs_dirent** %11, align 8
  store %struct.label* %5, %struct.label** %12, align 8
  %13 = load %struct.ucred*, %struct.ucred** %7, align 8
  %14 = getelementptr inbounds %struct.ucred, %struct.ucred* %13, i32 0, i32 0
  %15 = load %struct.label*, %struct.label** %14, align 8
  %16 = load i32, i32* @MAGIC_CRED, align 4
  %17 = call i32 @LABEL_CHECK(%struct.label* %15, i32 %16)
  %18 = load %struct.label*, %struct.label** %10, align 8
  %19 = load i32, i32* @MAGIC_DEVFS, align 4
  %20 = call i32 @LABEL_CHECK(%struct.label* %18, i32 %19)
  %21 = load %struct.label*, %struct.label** %12, align 8
  %22 = load i32, i32* @MAGIC_DEVFS, align 4
  %23 = call i32 @LABEL_CHECK(%struct.label* %21, i32 %22)
  %24 = load i32, i32* @devfs_create_symlink, align 4
  %25 = call i32 @COUNTER_INC(i32 %24)
  ret void
}

declare dso_local i32 @LABEL_CHECK(%struct.label*, i32) #1

declare dso_local i32 @COUNTER_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
