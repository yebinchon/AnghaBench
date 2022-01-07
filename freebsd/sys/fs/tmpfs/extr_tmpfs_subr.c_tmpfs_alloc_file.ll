; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_alloc_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vattr = type { i32, i32, i32 }
%struct.componentname = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tmpfs_dirent = type { i32 }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"tmpfs_alloc_file\00", align 1
@HASBUF = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@TMPFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@ISWHITEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_alloc_file(%struct.vnode* %0, %struct.vnode** %1, %struct.vattr* %2, %struct.componentname* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.vattr*, align 8
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tmpfs_dirent*, align 8
  %14 = alloca %struct.tmpfs_mount*, align 8
  %15 = alloca %struct.tmpfs_node*, align 8
  %16 = alloca %struct.tmpfs_node*, align 8
  %17 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.vnode** %1, %struct.vnode*** %8, align 8
  store %struct.vattr* %2, %struct.vattr** %9, align 8
  store %struct.componentname* %3, %struct.componentname** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.componentname*, %struct.componentname** %10, align 8
  %21 = getelementptr inbounds %struct.componentname, %struct.componentname* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HASBUF, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %28)
  store %struct.tmpfs_mount* %29, %struct.tmpfs_mount** %14, align 8
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = call %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode* %30)
  store %struct.tmpfs_node* %31, %struct.tmpfs_node** %15, align 8
  %32 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* null, %struct.vnode** %32, align 8
  %33 = load %struct.vattr*, %struct.vattr** %9, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VDIR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %5
  %39 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %40 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TMPFS_LINK_MAX, align 8
  %43 = icmp sle i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @MPASS(i32 %44)
  %46 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %47 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TMPFS_LINK_MAX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @EMLINK, align 4
  store i32 %52, i32* %6, align 4
  br label %139

53:                                               ; preds = %38
  %54 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  store %struct.tmpfs_node* %54, %struct.tmpfs_node** %17, align 8
  %55 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %56 = icmp ne %struct.tmpfs_node* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @MPASS(i32 %57)
  br label %60

59:                                               ; preds = %5
  store %struct.tmpfs_node* null, %struct.tmpfs_node** %17, align 8
  br label %60

60:                                               ; preds = %59, %53
  %61 = load %struct.vnode*, %struct.vnode** %7, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %14, align 8
  %65 = load %struct.vattr*, %struct.vattr** %9, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.componentname*, %struct.componentname** %10, align 8
  %69 = getelementptr inbounds %struct.componentname, %struct.componentname* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tmpfs_node*, %struct.tmpfs_node** %15, align 8
  %74 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vattr*, %struct.vattr** %9, align 8
  %77 = getelementptr inbounds %struct.vattr, %struct.vattr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tmpfs_node*, %struct.tmpfs_node** %17, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.vattr*, %struct.vattr** %9, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @tmpfs_alloc_node(i32 %63, %struct.tmpfs_mount* %64, i32 %67, i32 %72, i32 %75, i32 %78, %struct.tmpfs_node* %79, i8* %80, i32 %83, %struct.tmpfs_node** %16)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %60
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %139

89:                                               ; preds = %60
  %90 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %14, align 8
  %91 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %92 = load %struct.componentname*, %struct.componentname** %10, align 8
  %93 = getelementptr inbounds %struct.componentname, %struct.componentname* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.componentname*, %struct.componentname** %10, align 8
  %96 = getelementptr inbounds %struct.componentname, %struct.componentname* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @tmpfs_alloc_dirent(%struct.tmpfs_mount* %90, %struct.tmpfs_node* %91, i32 %94, i32 %97, %struct.tmpfs_dirent** %13)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %14, align 8
  %103 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %104 = call i32 @tmpfs_free_node(%struct.tmpfs_mount* %102, %struct.tmpfs_node* %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %6, align 4
  br label %139

106:                                              ; preds = %89
  %107 = load %struct.vnode*, %struct.vnode** %7, align 8
  %108 = getelementptr inbounds %struct.vnode, %struct.vnode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %111 = load i32, i32* @LK_EXCLUSIVE, align 4
  %112 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %113 = call i32 @tmpfs_alloc_vp(i32 %109, %struct.tmpfs_node* %110, i32 %111, %struct.vnode** %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %106
  %117 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %14, align 8
  %118 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %13, align 8
  %119 = call i32 @tmpfs_free_dirent(%struct.tmpfs_mount* %117, %struct.tmpfs_dirent* %118)
  %120 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %14, align 8
  %121 = load %struct.tmpfs_node*, %struct.tmpfs_node** %16, align 8
  %122 = call i32 @tmpfs_free_node(%struct.tmpfs_mount* %120, %struct.tmpfs_node* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %139

124:                                              ; preds = %106
  %125 = load %struct.componentname*, %struct.componentname** %10, align 8
  %126 = getelementptr inbounds %struct.componentname, %struct.componentname* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ISWHITEOUT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.vnode*, %struct.vnode** %7, align 8
  %133 = load %struct.componentname*, %struct.componentname** %10, align 8
  %134 = call i32 @tmpfs_dir_whiteout_remove(%struct.vnode* %132, %struct.componentname* %133)
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.vnode*, %struct.vnode** %7, align 8
  %137 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %13, align 8
  %138 = call i32 @tmpfs_dir_attach(%struct.vnode* %136, %struct.tmpfs_dirent* %137)
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %135, %116, %101, %87, %51
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local i32 @tmpfs_alloc_node(i32, %struct.tmpfs_mount*, i32, i32, i32, i32, %struct.tmpfs_node*, i8*, i32, %struct.tmpfs_node**) #1

declare dso_local i32 @tmpfs_alloc_dirent(%struct.tmpfs_mount*, %struct.tmpfs_node*, i32, i32, %struct.tmpfs_dirent**) #1

declare dso_local i32 @tmpfs_free_node(%struct.tmpfs_mount*, %struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_alloc_vp(i32, %struct.tmpfs_node*, i32, %struct.vnode**) #1

declare dso_local i32 @tmpfs_free_dirent(%struct.tmpfs_mount*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_dir_whiteout_remove(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @tmpfs_dir_attach(%struct.vnode*, %struct.tmpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
