; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_savesize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_savesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.fuse_vnode_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_filehandle = type { i32 }
%struct.fuse_dispatcher = type { %struct.fuse_setattr_in* }
%struct.fuse_setattr_in = type { i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"fuse_io_extend\00", align 1
@EBADF = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@FUSE_SETATTR = common dso_local global i32 0, align 4
@FN_SIZECHANGE = common dso_local global i32 0, align 4
@FATTR_SIZE = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FATTR_FH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_vnode_savesize(%struct.vnode* %0, %struct.ucred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_vnode_data*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.fuse_filehandle*, align 8
  %11 = alloca %struct.fuse_dispatcher, align 8
  %12 = alloca %struct.fuse_setattr_in*, align 8
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.ucred* %1, %struct.ucred** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %14)
  store %struct.fuse_vnode_data* %15, %struct.fuse_vnode_data** %8, align 8
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %9, align 8
  store %struct.fuse_filehandle* null, %struct.fuse_filehandle** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = call i64 @fuse_isdeadfs(%struct.vnode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EBADF, align 4
  store i32 %23, i32* %4, align 4
  br label %107

24:                                               ; preds = %3
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = call i64 @vnode_vtype(%struct.vnode* %25)
  %27 = load i64, i64* @VDIR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EISDIR, align 4
  store i32 %30, i32* %4, align 4
  br label %107

31:                                               ; preds = %24
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = call i32 @vnode_mount(%struct.vnode* %32)
  %34 = call i64 @vfs_isrdonly(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EROFS, align 4
  store i32 %37, i32* %4, align 4
  br label %107

38:                                               ; preds = %31
  %39 = load %struct.ucred*, %struct.ucred** %6, align 8
  %40 = icmp eq %struct.ucred* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load %struct.ucred*, %struct.ucred** %43, align 8
  store %struct.ucred* %44, %struct.ucred** %6, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = call i32 @fdisp_init(%struct.fuse_dispatcher* %11, i32 12)
  %47 = load i32, i32* @FUSE_SETATTR, align 4
  %48 = load %struct.vnode*, %struct.vnode** %5, align 8
  %49 = load %struct.thread*, %struct.thread** %9, align 8
  %50 = load %struct.ucred*, %struct.ucred** %6, align 8
  %51 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %11, i32 %47, %struct.vnode* %48, %struct.thread* %49, %struct.ucred* %50)
  %52 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %11, i32 0, i32 0
  %53 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %52, align 8
  store %struct.fuse_setattr_in* %53, %struct.fuse_setattr_in** %12, align 8
  %54 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %12, align 8
  %55 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %8, align 8
  %57 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FN_SIZECHANGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @MPASS(i32 %62)
  %64 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %8, align 8
  %65 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %12, align 8
  %69 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @FATTR_SIZE, align 4
  %71 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %12, align 8
  %72 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.vnode*, %struct.vnode** %5, align 8
  %76 = load i32, i32* @FWRITE, align 4
  %77 = load %struct.ucred*, %struct.ucred** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @fuse_filehandle_getrw(%struct.vnode* %75, i32 %76, %struct.fuse_filehandle** %10, %struct.ucred* %77, i32 %78)
  %80 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %10, align 8
  %81 = icmp ne %struct.fuse_filehandle* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %45
  %83 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %10, align 8
  %84 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %12, align 8
  %87 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @FATTR_FH, align 4
  %89 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %12, align 8
  %90 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %82, %45
  %94 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %11)
  store i32 %94, i32* %13, align 4
  %95 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %11)
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* @FN_SIZECHANGE, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %8, align 8
  %102 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %93
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %36, %29, %22
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @vnode_vtype(%struct.vnode*) #1

declare dso_local i64 @vfs_isrdonly(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @fuse_filehandle_getrw(%struct.vnode*, i32, %struct.fuse_filehandle**, %struct.ucred*, i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
