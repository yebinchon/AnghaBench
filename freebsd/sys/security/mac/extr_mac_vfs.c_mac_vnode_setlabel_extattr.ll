; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_setlabel_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_setlabel_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"mac_vnode_setlabel_extattr\00", align 1
@curthread = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ea_warn_once = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Warning: transactions not supported in EA write.\0A\00", align 1
@vnode_setlabel_extattr = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*)* @mac_vnode_setlabel_extattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_vnode_setlabel_extattr(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %9 = load %struct.vnode*, %struct.vnode** %6, align 8
  %10 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = load %struct.ucred*, %struct.ucred** %5, align 8
  %13 = load i32, i32* @curthread, align 4
  %14 = call i32 @VOP_OPENEXTATTR(%struct.vnode* %11, %struct.ucred* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @ea_warn_once, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @ea_warn_once, align 4
  br label %23

23:                                               ; preds = %21, %18
  br label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* @vnode_setlabel_extattr, align 4
  %32 = load %struct.ucred*, %struct.ucred** %5, align 8
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.label*, %struct.label** %7, align 8
  %38 = call i32 @MAC_POLICY_CHECK(i32 %31, %struct.ucred* %32, %struct.vnode* %33, i32 %36, %struct.label* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.vnode*, %struct.vnode** %6, align 8
  %43 = load i32, i32* @NOCRED, align 4
  %44 = load i32, i32* @curthread, align 4
  %45 = call i32 @VOP_CLOSEEXTATTR(%struct.vnode* %42, i32 0, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %30
  %48 = load %struct.vnode*, %struct.vnode** %6, align 8
  %49 = load i32, i32* @NOCRED, align 4
  %50 = load i32, i32* @curthread, align 4
  %51 = call i32 @VOP_CLOSEEXTATTR(%struct.vnode* %48, i32 1, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %41, %27
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_OPENEXTATTR(%struct.vnode*, %struct.ucred*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32, %struct.label*) #1

declare dso_local i32 @VOP_CLOSEEXTATTR(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
