; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32 }
%struct.devfs_dirent = type { i32, i64, i32*, %struct.vnode* }
%struct.vnode = type { i32 }

@DE_DOOMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"devfs_delete doomed dirent\00", align 1
@DEVFS_DEL_NORECURSE = common dso_local global i32 0, align 4
@DE_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"devfs_delete: NULL dd\00", align 1
@devfs_de_interlock = common dso_local global i32 0, align 4
@DEVFS_DEL_VNLOCKED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@M_DEVFS = common dso_local global i32 0, align 4
@DEVFS_ROOTINO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_delete(%struct.devfs_mount* %0, %struct.devfs_dirent* %1, i32 %2) #0 {
  %4 = alloca %struct.devfs_mount*, align 8
  %5 = alloca %struct.devfs_dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca %struct.vnode*, align 8
  store %struct.devfs_mount* %0, %struct.devfs_mount** %4, align 8
  store %struct.devfs_dirent* %1, %struct.devfs_dirent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %10 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DE_DOOMED, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @DE_DOOMED, align 4
  %18 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %19 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %3
  %27 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %28 = call %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent* %27)
  store %struct.devfs_dirent* %28, %struct.devfs_dirent** %7, align 8
  %29 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %30 = icmp ne %struct.devfs_dirent* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %33 = call i32 @DEVFS_DE_HOLD(%struct.devfs_dirent* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %36 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DE_USER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %43 = icmp ne %struct.devfs_dirent* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %47 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %48 = call i32 @devfs_dir_unref_de(%struct.devfs_mount* %46, %struct.devfs_dirent* %47)
  br label %49

49:                                               ; preds = %41, %34
  br label %51

50:                                               ; preds = %3
  store %struct.devfs_dirent* null, %struct.devfs_dirent** %7, align 8
  br label %51

51:                                               ; preds = %50, %49
  %52 = call i32 @mtx_lock(i32* @devfs_de_interlock)
  %53 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %54 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %53, i32 0, i32 3
  %55 = load %struct.vnode*, %struct.vnode** %54, align 8
  store %struct.vnode* %55, %struct.vnode** %8, align 8
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = icmp ne %struct.vnode* %56, null
  br i1 %57, label %58, label %98

58:                                               ; preds = %51
  %59 = load %struct.vnode*, %struct.vnode** %8, align 8
  %60 = call i32 @VI_LOCK(%struct.vnode* %59)
  %61 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  %62 = load %struct.vnode*, %struct.vnode** %8, align 8
  %63 = call i32 @vholdl(%struct.vnode* %62)
  %64 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %65 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %64, i32 0, i32 0
  %66 = call i32 @sx_unlock(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @DEVFS_DEL_VNLOCKED, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %58
  %72 = load %struct.vnode*, %struct.vnode** %8, align 8
  %73 = load i32, i32* @LK_EXCLUSIVE, align 4
  %74 = load i32, i32* @LK_INTERLOCK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @LK_RETRY, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @vn_lock(%struct.vnode* %72, i32 %77)
  br label %82

79:                                               ; preds = %58
  %80 = load %struct.vnode*, %struct.vnode** %8, align 8
  %81 = call i32 @VI_UNLOCK(%struct.vnode* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.vnode*, %struct.vnode** %8, align 8
  %84 = call i32 @vgone(%struct.vnode* %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DEVFS_DEL_VNLOCKED, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.vnode*, %struct.vnode** %8, align 8
  %91 = call i32 @VOP_UNLOCK(%struct.vnode* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load %struct.vnode*, %struct.vnode** %8, align 8
  %94 = call i32 @vdrop(%struct.vnode* %93)
  %95 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %96 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %95, i32 0, i32 0
  %97 = call i32 @sx_xlock(i32* %96)
  br label %100

98:                                               ; preds = %51
  %99 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  br label %100

100:                                              ; preds = %98, %92
  %101 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %102 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %107 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @M_DEVFS, align 4
  %110 = call i32 @free(i32* %108, i32 %109)
  %111 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %112 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %105, %100
  %114 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %115 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DEVFS_ROOTINO, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %121 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @devfs_free_cdp_inode(i64 %122)
  %124 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %125 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %128 = call i64 @DEVFS_DE_DROP(%struct.devfs_dirent* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %132 = call i32 @devfs_dirent_free(%struct.devfs_dirent* %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %135 = icmp ne %struct.devfs_dirent* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %138 = call i64 @DEVFS_DE_DROP(%struct.devfs_dirent* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %142 = call i32 @devfs_dirent_free(%struct.devfs_dirent* %141)
  br label %147

143:                                              ; preds = %136
  %144 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %145 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %146 = call i32 @devfs_rmdir_empty(%struct.devfs_mount* %144, %struct.devfs_dirent* %145)
  br label %147

147:                                              ; preds = %143, %140
  br label %148

148:                                              ; preds = %147, %133
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent*) #1

declare dso_local i32 @DEVFS_DE_HOLD(%struct.devfs_dirent*) #1

declare dso_local i32 @devfs_dir_unref_de(%struct.devfs_mount*, %struct.devfs_dirent*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @devfs_free_cdp_inode(i64) #1

declare dso_local i64 @DEVFS_DE_DROP(%struct.devfs_dirent*) #1

declare dso_local i32 @devfs_dirent_free(%struct.devfs_dirent*) #1

declare dso_local i32 @devfs_rmdir_empty(%struct.devfs_mount*, %struct.devfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
