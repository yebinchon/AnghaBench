; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_execve_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_execve_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.image_params = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"mac_vnode_execve_transition\00", align 1
@vnode_execve_transition = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_vnode_execve_transition(%struct.ucred* %0, %struct.ucred* %1, %struct.vnode* %2, %struct.label* %3, %struct.image_params* %4) #0 {
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.image_params*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  store %struct.image_params* %4, %struct.image_params** %10, align 8
  %11 = load %struct.vnode*, %struct.vnode** %8, align 8
  %12 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @vnode_execve_transition, align 4
  %14 = load %struct.ucred*, %struct.ucred** %6, align 8
  %15 = load %struct.ucred*, %struct.ucred** %7, align 8
  %16 = load %struct.vnode*, %struct.vnode** %8, align 8
  %17 = load %struct.vnode*, %struct.vnode** %8, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.label*, %struct.label** %9, align 8
  %21 = load %struct.image_params*, %struct.image_params** %10, align 8
  %22 = load %struct.image_params*, %struct.image_params** %10, align 8
  %23 = getelementptr inbounds %struct.image_params, %struct.image_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MAC_POLICY_PERFORM(i32 %13, %struct.ucred* %14, %struct.ucred* %15, %struct.vnode* %16, i32 %19, %struct.label* %20, %struct.image_params* %21, i32 %24)
  ret void
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_PERFORM(i32, %struct.ucred*, %struct.ucred*, %struct.vnode*, i32, %struct.label*, %struct.image_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
