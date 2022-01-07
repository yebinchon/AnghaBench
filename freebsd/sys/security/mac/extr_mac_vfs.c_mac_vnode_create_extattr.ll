; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_create_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_create_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"mac_vnode_create_extattr\00", align 1
@curthread = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ea_warn_once = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Warning: transactions not supported in EA write.\0A\00", align 1
@vnode_create_extattr = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_create_extattr(%struct.ucred* %0, %struct.mount* %1, %struct.vnode* %2, %struct.vnode* %3, %struct.componentname* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.componentname*, align 8
  %12 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.mount* %1, %struct.mount** %8, align 8
  store %struct.vnode* %2, %struct.vnode** %9, align 8
  store %struct.vnode* %3, %struct.vnode** %10, align 8
  store %struct.componentname* %4, %struct.componentname** %11, align 8
  %13 = load %struct.vnode*, %struct.vnode** %9, align 8
  %14 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.vnode*, %struct.vnode** %10, align 8
  %16 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vnode*, %struct.vnode** %10, align 8
  %18 = load %struct.ucred*, %struct.ucred** %7, align 8
  %19 = load i32, i32* @curthread, align 4
  %20 = call i32 @VOP_OPENEXTATTR(%struct.vnode* %17, %struct.ucred* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* @ea_warn_once, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @ea_warn_once, align 4
  br label %29

29:                                               ; preds = %27, %24
  br label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %72

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* @vnode_create_extattr, align 4
  %38 = load %struct.ucred*, %struct.ucred** %7, align 8
  %39 = load %struct.mount*, %struct.mount** %8, align 8
  %40 = load %struct.mount*, %struct.mount** %8, align 8
  %41 = getelementptr inbounds %struct.mount, %struct.mount* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vnode*, %struct.vnode** %9, align 8
  %44 = load %struct.vnode*, %struct.vnode** %9, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vnode*, %struct.vnode** %10, align 8
  %48 = load %struct.vnode*, %struct.vnode** %10, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.componentname*, %struct.componentname** %11, align 8
  %52 = call i32 @MAC_POLICY_CHECK(i32 %37, %struct.ucred* %38, %struct.mount* %39, i32 %42, %struct.vnode* %43, i32 %46, %struct.vnode* %47, i32 %50, %struct.componentname* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load %struct.vnode*, %struct.vnode** %10, align 8
  %57 = load i32, i32* @NOCRED, align 4
  %58 = load i32, i32* @curthread, align 4
  %59 = call i32 @VOP_CLOSEEXTATTR(%struct.vnode* %56, i32 0, i32 %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %72

61:                                               ; preds = %36
  %62 = load %struct.vnode*, %struct.vnode** %10, align 8
  %63 = load i32, i32* @NOCRED, align 4
  %64 = load i32, i32* @curthread, align 4
  %65 = call i32 @VOP_CLOSEEXTATTR(%struct.vnode* %62, i32 1, i32 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %55, %33
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_OPENEXTATTR(%struct.vnode*, %struct.ucred*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.mount*, i32, %struct.vnode*, i32, %struct.vnode*, i32, %struct.componentname*) #1

declare dso_local i32 @VOP_CLOSEEXTATTR(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
