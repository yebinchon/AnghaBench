; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rmdir_args = type { %struct.TYPE_5__*, %struct.vnode*, %struct.vnode* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.tmpfs_dirent = type { i32 }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tmpfs_node* }

@ENOTEMPTY = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@NOUNLINK = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@DOWHITEOUT = common dso_local global i32 0, align 4
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rmdir_args*)* @tmpfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_rmdir(%struct.vop_rmdir_args* %0) #0 {
  %2 = alloca %struct.vop_rmdir_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmpfs_dirent*, align 8
  %7 = alloca %struct.tmpfs_mount*, align 8
  %8 = alloca %struct.tmpfs_node*, align 8
  %9 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_rmdir_args* %0, %struct.vop_rmdir_args** %2, align 8
  %10 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %3, align 8
  %13 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = call i32 @VOP_ISLOCKED(%struct.vnode* %16)
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i32 @VOP_ISLOCKED(%struct.vnode* %19)
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %24)
  store %struct.tmpfs_mount* %25, %struct.tmpfs_mount** %7, align 8
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %26)
  store %struct.tmpfs_node* %27, %struct.tmpfs_node** %8, align 8
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %28)
  store %struct.tmpfs_node* %29, %struct.tmpfs_node** %9, align 8
  %30 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %31 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %35, i32* %5, align 4
  br label %178

36:                                               ; preds = %1
  %37 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %38 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @APPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %45 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NOUNLINK, align 4
  %48 = load i32, i32* @IMMUTABLE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @APPEND, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43, %36
  %55 = load i32, i32* @EPERM, align 4
  store i32 %55, i32* %5, align 4
  br label %178

56:                                               ; preds = %43
  %57 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %58 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.tmpfs_node*, %struct.tmpfs_node** %59, align 8
  %61 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %62 = icmp eq %struct.tmpfs_node* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @MPASS(i32 %63)
  %65 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %66 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %67 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %68 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node* %65, %struct.tmpfs_node* %66, %struct.TYPE_5__* %69)
  store %struct.tmpfs_dirent* %70, %struct.tmpfs_dirent** %6, align 8
  %71 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %72 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %73 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %78 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @TMPFS_DIRENT_MATCHES(%struct.tmpfs_dirent* %71, i32 %76, i32 %81)
  %83 = call i32 @MPASS(i32 %82)
  %84 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %85 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @APPEND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %56
  %91 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %92 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NOUNLINK, align 4
  %95 = load i32, i32* @IMMUTABLE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @APPEND, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90, %56
  %102 = load i32, i32* @EPERM, align 4
  store i32 %102, i32* %5, align 4
  br label %178

103:                                              ; preds = %90
  %104 = load %struct.vnode*, %struct.vnode** %3, align 8
  %105 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %106 = call i32 @tmpfs_dir_detach(%struct.vnode* %104, %struct.tmpfs_dirent* %105)
  %107 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %108 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DOWHITEOUT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %103
  %116 = load %struct.vnode*, %struct.vnode** %3, align 8
  %117 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %118 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = call i32 @tmpfs_dir_whiteout_add(%struct.vnode* %116, %struct.TYPE_5__* %119)
  br label %121

121:                                              ; preds = %115, %103
  %122 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %123 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %122)
  %124 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %125 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %129 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store %struct.tmpfs_node* null, %struct.tmpfs_node** %130, align 8
  %131 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %132 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %137 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %141 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %140)
  %142 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %143 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %142)
  %144 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %145 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %149 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %154 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %158 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %157)
  %159 = load %struct.vnode*, %struct.vnode** %3, align 8
  %160 = call i64 @tmpfs_use_nc(%struct.vnode* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %121
  %163 = load %struct.vnode*, %struct.vnode** %3, align 8
  %164 = call i32 @cache_purge(%struct.vnode* %163)
  %165 = load %struct.vnode*, %struct.vnode** %4, align 8
  %166 = call i32 @cache_purge(%struct.vnode* %165)
  br label %167

167:                                              ; preds = %162, %121
  %168 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %7, align 8
  %169 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %170 = call i32 @tmpfs_free_dirent(%struct.tmpfs_mount* %168, %struct.tmpfs_dirent* %169)
  %171 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %172 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %173 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.vnode*, %struct.vnode** %3, align 8
  %177 = call i32 @tmpfs_update(%struct.vnode* %176)
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %167, %101, %54, %34
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(%struct.tmpfs_node*, %struct.tmpfs_node*, %struct.TYPE_5__*) #1

declare dso_local i32 @TMPFS_DIRENT_MATCHES(%struct.tmpfs_dirent*, i32, i32) #1

declare dso_local i32 @tmpfs_dir_detach(%struct.vnode*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_dir_whiteout_add(%struct.vnode*, %struct.TYPE_5__*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i64 @tmpfs_use_nc(%struct.vnode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @tmpfs_free_dirent(%struct.tmpfs_mount*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_update(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
