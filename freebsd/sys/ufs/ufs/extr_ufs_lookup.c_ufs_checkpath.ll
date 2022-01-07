; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_lookup.c_ufs_checkpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_lookup.c_ufs_checkpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { %struct.mount* }
%struct.TYPE_2__ = type { i64 }

@EEXIST = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"directory %ju reparented\0A\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"checkpath: .. not a directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_checkpath(i64 %0, i64 %1, %struct.inode* %2, %struct.ucred* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = call %struct.vnode* @ITOV(%struct.inode* %18)
  store %struct.vnode* %19, %struct.vnode** %13, align 8
  store %struct.vnode* %19, %struct.vnode** %14, align 8
  %20 = load %struct.vnode*, %struct.vnode** %14, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.mount*, %struct.mount** %21, align 8
  store %struct.mount* %22, %struct.mount** %12, align 8
  %23 = load i64*, i64** %11, align 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @EEXIST, align 4
  store i32 %30, i32* %6, align 4
  br label %130

31:                                               ; preds = %5
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %130

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UFS_ROOTINO, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %130

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %107, %45
  %47 = load %struct.vnode*, %struct.vnode** %14, align 8
  %48 = load %struct.ucred*, %struct.ucred** %10, align 8
  %49 = call i32 @ufs_dir_dd_ino(%struct.vnode* %47, %struct.ucred* %48, i64* %17, %struct.vnode** %15)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %109

53:                                               ; preds = %46
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %16, align 4
  br label %109

59:                                               ; preds = %53
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @UFS_ROOTINO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %109

64:                                               ; preds = %59
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %109

69:                                               ; preds = %64
  %70 = load %struct.vnode*, %struct.vnode** %15, align 8
  %71 = icmp eq %struct.vnode* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.mount*, %struct.mount** %12, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i32, i32* @LK_SHARED, align 4
  %76 = load i32, i32* @LK_NOWAIT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @VFS_VGET(%struct.mount* %73, i64 %74, i32 %77, %struct.vnode** %15)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i64, i64* %17, align 8
  %83 = load i64*, i64** %11, align 8
  store i64 %82, i64* %83, align 8
  br label %109

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.vnode*, %struct.vnode** %15, align 8
  %88 = call %struct.TYPE_2__* @VTOI(%struct.vnode* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %86, %90
  %92 = zext i1 %91 to i32
  %93 = load %struct.vnode*, %struct.vnode** %15, align 8
  %94 = call %struct.TYPE_2__* @VTOI(%struct.vnode* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KASSERT(i32 %92, i8* %99)
  %101 = load %struct.vnode*, %struct.vnode** %14, align 8
  %102 = load %struct.vnode*, %struct.vnode** %13, align 8
  %103 = icmp ne %struct.vnode* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %85
  %105 = load %struct.vnode*, %struct.vnode** %14, align 8
  %106 = call i32 @vput(%struct.vnode* %105)
  br label %107

107:                                              ; preds = %104, %85
  %108 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %108, %struct.vnode** %14, align 8
  br label %46

109:                                              ; preds = %81, %68, %63, %57, %52
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @ENOTDIR, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %109
  %116 = load %struct.vnode*, %struct.vnode** %15, align 8
  %117 = icmp ne %struct.vnode* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.vnode*, %struct.vnode** %15, align 8
  %120 = call i32 @vput(%struct.vnode* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.vnode*, %struct.vnode** %14, align 8
  %123 = load %struct.vnode*, %struct.vnode** %13, align 8
  %124 = icmp ne %struct.vnode* %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.vnode*, %struct.vnode** %14, align 8
  %127 = call i32 @vput(%struct.vnode* %126)
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %44, %37, %29
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i32 @ufs_dir_dd_ino(%struct.vnode*, %struct.ucred*, i64*, %struct.vnode**) #1

declare dso_local i32 @VFS_VGET(%struct.mount*, i64, i32, %struct.vnode**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
