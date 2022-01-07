; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_rename_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_rename_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32* }
%struct.componentname = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"mac_vnode_check_rename_to\00", align 1
@vnode_check_rename_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_rename_to(%struct.ucred* %0, %struct.vnode* %1, %struct.vnode* %2, i32 %3, %struct.componentname* %4) #0 {
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.componentname* %4, %struct.componentname** %10, align 8
  %12 = load %struct.vnode*, %struct.vnode** %7, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vnode*, %struct.vnode** %8, align 8
  %15 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @vnode_check_rename_to, align 4
  %17 = load %struct.ucred*, %struct.ucred** %6, align 8
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = load %struct.vnode*, %struct.vnode** %7, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.vnode*, %struct.vnode** %8, align 8
  %23 = load %struct.vnode*, %struct.vnode** %8, align 8
  %24 = icmp ne %struct.vnode* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.vnode*, %struct.vnode** %8, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.componentname*, %struct.componentname** %10, align 8
  %34 = call i32 @MAC_POLICY_CHECK(i32 %16, %struct.ucred* %17, %struct.vnode* %18, i32* %21, %struct.vnode* %22, i32* %31, i32 %32, %struct.componentname* %33)
  %35 = load i32, i32* @vnode_check_rename_to, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ucred*, %struct.ucred** %6, align 8
  %38 = load %struct.vnode*, %struct.vnode** %7, align 8
  %39 = load %struct.vnode*, %struct.vnode** %8, align 8
  %40 = load %struct.componentname*, %struct.componentname** %10, align 8
  %41 = call i32 @MAC_CHECK_PROBE4(i32 %35, i32 %36, %struct.ucred* %37, %struct.vnode* %38, %struct.vnode* %39, %struct.componentname* %40)
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32*, %struct.vnode*, i32*, i32, %struct.componentname*) #1

declare dso_local i32 @MAC_CHECK_PROBE4(i32, i32, %struct.ucred*, %struct.vnode*, %struct.vnode*, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
