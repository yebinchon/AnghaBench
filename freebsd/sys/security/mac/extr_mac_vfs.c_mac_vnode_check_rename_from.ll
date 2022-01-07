; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_rename_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_rename_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"mac_vnode_check_rename_from\00", align 1
@vnode_check_rename_from = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_rename_from(%struct.ucred* %0, %struct.vnode* %1, %struct.vnode* %2, %struct.componentname* %3) #0 {
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnode* %2, %struct.vnode** %7, align 8
  store %struct.componentname* %3, %struct.componentname** %8, align 8
  %10 = load %struct.vnode*, %struct.vnode** %6, align 8
  %11 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vnode*, %struct.vnode** %7, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @vnode_check_rename_from, align 4
  %15 = load %struct.ucred*, %struct.ucred** %5, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = load %struct.vnode*, %struct.vnode** %7, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.componentname*, %struct.componentname** %8, align 8
  %25 = call i32 @MAC_POLICY_CHECK(i32 %14, %struct.ucred* %15, %struct.vnode* %16, i32 %19, %struct.vnode* %20, i32 %23, %struct.componentname* %24)
  %26 = load i32, i32* @vnode_check_rename_from, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ucred*, %struct.ucred** %5, align 8
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = load %struct.componentname*, %struct.componentname** %8, align 8
  %32 = call i32 @MAC_CHECK_PROBE4(i32 %26, i32 %27, %struct.ucred* %28, %struct.vnode* %29, %struct.vnode* %30, %struct.componentname* %31)
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32, %struct.vnode*, i32, %struct.componentname*) #1

declare dso_local i32 @MAC_CHECK_PROBE4(i32, i32, %struct.ucred*, %struct.vnode*, %struct.vnode*, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
