; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_setutimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_setutimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"mac_vnode_check_setutimes\00", align 1
@vnode_check_setutimes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_setutimes(%struct.ucred* %0, %struct.vnode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  %12 = load %struct.vnode*, %struct.vnode** %8, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @vnode_check_setutimes, align 4
  %15 = load %struct.ucred*, %struct.ucred** %7, align 8
  %16 = load %struct.vnode*, %struct.vnode** %8, align 8
  %17 = load %struct.vnode*, %struct.vnode** %8, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MAC_POLICY_CHECK(i32 %14, %struct.ucred* %15, %struct.vnode* %16, i32 %19, i32 %21, i32 %23)
  %25 = load i32, i32* @vnode_check_setutimes, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ucred*, %struct.ucred** %7, align 8
  %28 = load %struct.vnode*, %struct.vnode** %8, align 8
  %29 = call i32 @MAC_CHECK_PROBE4(i32 %25, i32 %26, %struct.ucred* %27, %struct.vnode* %28, %struct.timespec* %5, %struct.timespec* %6)
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE4(i32, i32, %struct.ucred*, %struct.vnode*, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
