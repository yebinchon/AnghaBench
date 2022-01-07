; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_devfs_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_devfs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.devfs_dirent = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }

@MAGIC_DEVFS = common dso_local global i32 0, align 4
@MAGIC_VNODE = common dso_local global i32 0, align 4
@devfs_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, %struct.devfs_dirent*, %struct.label*, %struct.vnode*, %struct.label*)* @test_devfs_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_devfs_update(%struct.mount* %0, %struct.devfs_dirent* %1, %struct.label* %2, %struct.vnode* %3, %struct.label* %4) #0 {
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.label*, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.devfs_dirent* %1, %struct.devfs_dirent** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.vnode* %3, %struct.vnode** %9, align 8
  store %struct.label* %4, %struct.label** %10, align 8
  %11 = load %struct.label*, %struct.label** %8, align 8
  %12 = load i32, i32* @MAGIC_DEVFS, align 4
  %13 = call i32 @LABEL_CHECK(%struct.label* %11, i32 %12)
  %14 = load %struct.label*, %struct.label** %10, align 8
  %15 = load i32, i32* @MAGIC_VNODE, align 4
  %16 = call i32 @LABEL_CHECK(%struct.label* %14, i32 %15)
  %17 = load i32, i32* @devfs_update, align 4
  %18 = call i32 @COUNTER_INC(i32 %17)
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
