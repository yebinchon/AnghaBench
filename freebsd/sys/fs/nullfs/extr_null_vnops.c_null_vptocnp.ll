; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_vptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_vptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vptocnp_args = type { i32, i32, %struct.ucred*, %struct.vnode**, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }

@LK_RETRY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vptocnp_args*)* @null_vptocnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_vptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %12 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %12, i32 0, i32 4
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %15, i32 0, i32 3
  %17 = load %struct.vnode**, %struct.vnode*** %16, align 8
  store %struct.vnode** %17, %struct.vnode*** %5, align 8
  %18 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %18, i32 0, i32 2
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  store %struct.ucred* %20, %struct.ucred** %8, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i32 @VOP_ISLOCKED(%struct.vnode* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %23)
  store %struct.vnode* %24, %struct.vnode** %6, align 8
  %25 = load %struct.vnode*, %struct.vnode** %6, align 8
  %26 = call i32 @vhold(%struct.vnode* %25)
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load %struct.mount*, %struct.mount** %28, align 8
  store %struct.mount* %29, %struct.mount** %9, align 8
  %30 = load %struct.mount*, %struct.mount** %9, align 8
  %31 = call i32 @vfs_ref(%struct.mount* %30)
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call i32 @VOP_UNLOCK(%struct.vnode* %32, i32 0)
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %34, %struct.vnode** %7, align 8
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = call i32 @vref(%struct.vnode* %35)
  %37 = load %struct.ucred*, %struct.ucred** %8, align 8
  %38 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vn_vptocnp(%struct.vnode** %7, %struct.ucred* %37, i32 %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.vnode*, %struct.vnode** %6, align 8
  %46 = call i32 @vdrop(%struct.vnode* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %1
  %50 = load %struct.vnode*, %struct.vnode** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @LK_RETRY, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @vn_lock(%struct.vnode* %50, i32 %53)
  %55 = load %struct.mount*, %struct.mount** %9, align 8
  %56 = call i32 @vfs_rel(%struct.mount* %55)
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %2, align 4
  br label %95

58:                                               ; preds = %1
  %59 = load %struct.vnode*, %struct.vnode** %7, align 8
  %60 = load i32, i32* @LK_SHARED, align 4
  %61 = call i32 @vn_lock(%struct.vnode* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.vnode*, %struct.vnode** %7, align 8
  %66 = call i32 @vrele(%struct.vnode* %65)
  %67 = load %struct.vnode*, %struct.vnode** %4, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @LK_RETRY, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @vn_lock(%struct.vnode* %67, i32 %70)
  %72 = load %struct.mount*, %struct.mount** %9, align 8
  %73 = call i32 @vfs_rel(%struct.mount* %72)
  %74 = load i32, i32* @ENOENT, align 4
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %58
  %76 = load %struct.mount*, %struct.mount** %9, align 8
  %77 = load %struct.vnode*, %struct.vnode** %7, align 8
  %78 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %79 = call i32 @null_nodeget(%struct.mount* %76, %struct.vnode* %77, %struct.vnode** %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %84 = load %struct.vnode*, %struct.vnode** %83, align 8
  %85 = call i32 @VOP_UNLOCK(%struct.vnode* %84, i32 0)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.vnode*, %struct.vnode** %4, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @LK_RETRY, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @vn_lock(%struct.vnode* %87, i32 %90)
  %92 = load %struct.mount*, %struct.mount** %9, align 8
  %93 = call i32 @vfs_rel(%struct.mount* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %86, %64, %49
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @vn_vptocnp(%struct.vnode**, %struct.ucred*, i32, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @null_nodeget(%struct.mount*, %struct.vnode*, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
