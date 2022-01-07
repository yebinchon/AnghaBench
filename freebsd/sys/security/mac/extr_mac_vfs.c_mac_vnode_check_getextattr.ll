; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"mac_vnode_check_getextattr\00", align 1
@vnode_check_getextattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_getextattr(%struct.ucred* %0, %struct.vnode* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.vnode*, %struct.vnode** %6, align 8
  %11 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @vnode_check_getextattr, align 4
  %13 = load %struct.ucred*, %struct.ucred** %5, align 8
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @MAC_POLICY_CHECK(i32 %12, %struct.ucred* %13, %struct.vnode* %14, i32 %17, i32 %18, i8* %19)
  %21 = load i32, i32* @vnode_check_getextattr, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ucred*, %struct.ucred** %5, align 8
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @MAC_CHECK_PROBE4(i32 %21, i32 %22, %struct.ucred* %23, %struct.vnode* %24, i32 %25, i8* %26)
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32, i32, i8*) #1

declare dso_local i32 @MAC_CHECK_PROBE4(i32, i32, %struct.ucred*, %struct.vnode*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
