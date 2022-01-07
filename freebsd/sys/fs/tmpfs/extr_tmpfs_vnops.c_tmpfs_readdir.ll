; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readdir_args = type { i32*, i32*, i32**, %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i64 }
%struct.vnode = type { i64, i32 }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TMPFS_DIRCOOKIE_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readdir_args*)* @tmpfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_readdir(%struct.vop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.tmpfs_mount*, align 8
  %7 = alloca %struct.tmpfs_node*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vop_readdir_args* %0, %struct.vop_readdir_args** %3, align 8
  %14 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %14, i32 0, i32 4
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  %17 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %17, i32 0, i32 3
  %19 = load %struct.uio*, %struct.uio** %18, align 8
  store %struct.uio* %19, %struct.uio** %5, align 8
  %20 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  store i32** %25, i32*** %8, align 8
  %26 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VDIR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOTDIR, align 4
  store i32 %35, i32* %2, align 4
  br label %132

36:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  %37 = load %struct.vnode*, %struct.vnode** %4, align 8
  %38 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %37)
  store %struct.tmpfs_node* %38, %struct.tmpfs_node** %7, align 8
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %41)
  store %struct.tmpfs_mount* %42, %struct.tmpfs_mount** %6, align 8
  %43 = load %struct.uio*, %struct.uio** %5, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i32**, i32*** %8, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %36
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %53 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @howmany(i32 %54, i32 4)
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = call i32* @malloc(i32 %60, i32 %61, i32 %62)
  %64 = load i32**, i32*** %8, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %10, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %51, %48, %36
  %67 = load i32**, i32*** %8, align 8
  %68 = icmp eq i32** %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %71 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %72 = load %struct.uio*, %struct.uio** %5, align 8
  %73 = call i32 @tmpfs_dir_getdents(%struct.tmpfs_mount* %70, %struct.tmpfs_node* %71, %struct.uio* %72, i32 0, i32* null, i32* null)
  store i32 %73, i32* %12, align 4
  br label %83

74:                                               ; preds = %66
  %75 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %76 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %77 = load %struct.uio*, %struct.uio** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @tmpfs_dir_getdents(%struct.tmpfs_mount* %75, %struct.tmpfs_node* %76, %struct.uio* %77, i32 %78, i32* %80, i32* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %74, %69
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @EJUSTRETURN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.uio*, %struct.uio** %5, align 8
  %89 = getelementptr inbounds %struct.uio, %struct.uio* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @EINVAL, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 0, %93 ], [ %95, %94 ]
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %83
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load i32**, i32*** %8, align 8
  %103 = icmp ne i32** %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32**, i32*** %8, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @M_TEMP, align 4
  %111 = call i32 @free(i32* %109, i32 %110)
  %112 = load i32**, i32*** %8, align 8
  store i32* null, i32** %112, align 8
  %113 = load i32*, i32** %10, align 8
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %104, %101, %98
  %115 = load i32*, i32** %9, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.uio*, %struct.uio** %5, align 8
  %122 = getelementptr inbounds %struct.uio, %struct.uio* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TMPFS_DIRCOOKIE_EOF, align 8
  %125 = icmp eq i64 %123, %124
  br label %126

126:                                              ; preds = %120, %117
  %127 = phi i1 [ false, %117 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %114
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %34
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @tmpfs_dir_getdents(%struct.tmpfs_mount*, %struct.tmpfs_node*, %struct.uio*, i32, i32*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
