; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_vget_ino_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_vget_ino_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.mount* }
%struct.mount = type { i32 }
%struct.mount.0 = type opaque
%struct.vnode.1 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"vn_vget_ino_get\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"vn_vget_ino: vp not locked\00", align 1
@MBF_NOWAIT = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_vget_ino_gen(%struct.vnode* %0, i32 (%struct.mount.0*, i8*, i32, %struct.vnode.1**)* %1, i8* %2, i32 %3, %struct.vnode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32 (%struct.mount.0*, i8*, i32, %struct.vnode.1**)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 (%struct.mount.0*, i8*, i32, %struct.vnode.1**)* %1, i32 (%struct.mount.0*, i8*, i32, %struct.vnode.1**)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.vnode** %4, %struct.vnode*** %11, align 8
  %15 = load %struct.vnode*, %struct.vnode** %7, align 8
  %16 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vnode*, %struct.vnode** %7, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 1
  %19 = load %struct.mount*, %struct.mount** %18, align 8
  store %struct.mount* %19, %struct.mount** %12, align 8
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = call i32 @VOP_ISLOCKED(%struct.vnode* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @LK_SHARED, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %5
  %30 = phi i1 [ true, %5 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.mount*, %struct.mount** %12, align 8
  %34 = load i32, i32* @MBF_NOWAIT, align 4
  %35 = call i32 @vfs_busy(%struct.mount* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  %39 = load %struct.mount*, %struct.mount** %12, align 8
  %40 = call i32 @vfs_ref(%struct.mount* %39)
  %41 = load %struct.vnode*, %struct.vnode** %7, align 8
  %42 = call i32 @VOP_UNLOCK(%struct.vnode* %41, i32 0)
  %43 = load %struct.mount*, %struct.mount** %12, align 8
  %44 = call i32 @vfs_busy(%struct.mount* %43, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @LK_RETRY, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @vn_lock(%struct.vnode* %45, i32 %48)
  %50 = load %struct.mount*, %struct.mount** %12, align 8
  %51 = call i32 @vfs_rel(%struct.mount* %50)
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %6, align 4
  br label %121

56:                                               ; preds = %38
  %57 = load %struct.vnode*, %struct.vnode** %7, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VI_DOOMED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.mount*, %struct.mount** %12, align 8
  %65 = call i32 @vfs_unbusy(%struct.mount* %64)
  %66 = load i32, i32* @ENOENT, align 4
  store i32 %66, i32* %6, align 4
  br label %121

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.vnode*, %struct.vnode** %7, align 8
  %70 = call i32 @VOP_UNLOCK(%struct.vnode* %69, i32 0)
  %71 = load i32 (%struct.mount.0*, i8*, i32, %struct.vnode.1**)*, i32 (%struct.mount.0*, i8*, i32, %struct.vnode.1**)** %8, align 8
  %72 = load %struct.mount*, %struct.mount** %12, align 8
  %73 = bitcast %struct.mount* %72 to %struct.mount.0*
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %77 = bitcast %struct.vnode** %76 to %struct.vnode.1**
  %78 = call i32 %71(%struct.mount.0* %73, i8* %74, i32 %75, %struct.vnode.1** %77)
  store i32 %78, i32* %14, align 4
  %79 = load %struct.mount*, %struct.mount** %12, align 8
  %80 = call i32 @vfs_unbusy(%struct.mount* %79)
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %68
  %84 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %85 = load %struct.vnode*, %struct.vnode** %84, align 8
  %86 = load %struct.vnode*, %struct.vnode** %7, align 8
  %87 = icmp ne %struct.vnode* %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %83, %68
  %89 = load %struct.vnode*, %struct.vnode** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @LK_RETRY, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @vn_lock(%struct.vnode* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.vnode*, %struct.vnode** %7, align 8
  %96 = getelementptr inbounds %struct.vnode, %struct.vnode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @VI_DOOMED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %106 = load %struct.vnode*, %struct.vnode** %105, align 8
  %107 = load %struct.vnode*, %struct.vnode** %7, align 8
  %108 = icmp eq %struct.vnode* %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.vnode*, %struct.vnode** %7, align 8
  %111 = call i32 @vunref(%struct.vnode* %110)
  br label %116

112:                                              ; preds = %104
  %113 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %114 = load %struct.vnode*, %struct.vnode** %113, align 8
  %115 = call i32 @vput(%struct.vnode* %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %101
  %118 = load i32, i32* @ENOENT, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %117, %94
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %63, %54
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vunref(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
