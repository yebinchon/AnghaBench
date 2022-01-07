; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_vptocnp_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_vptocnp_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.tmpfs_node = type { i32 }
%struct.tmpfs_dirent = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@tmpfs_vn_get_ino_alloc = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.tmpfs_node*, %struct.tmpfs_node*, i8*, i32*, %struct.vnode**)* @tmpfs_vptocnp_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_vptocnp_fill(%struct.vnode* %0, %struct.tmpfs_node* %1, %struct.tmpfs_node* %2, i8* %3, i32* %4, %struct.vnode** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.tmpfs_node*, align 8
  %10 = alloca %struct.tmpfs_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vnode**, align 8
  %14 = alloca %struct.tmpfs_dirent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %9, align 8
  store %struct.tmpfs_node* %2, %struct.tmpfs_node** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.vnode** %5, %struct.vnode*** %13, align 8
  %17 = load %struct.vnode*, %struct.vnode** %8, align 8
  %18 = load i32, i32* @tmpfs_vn_get_ino_alloc, align 4
  %19 = load %struct.tmpfs_node*, %struct.tmpfs_node** %10, align 8
  %20 = load i32, i32* @LK_SHARED, align 4
  %21 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %22 = call i32 @vn_vget_ino_gen(%struct.vnode* %17, i32 %18, %struct.tmpfs_node* %19, i32 %20, %struct.vnode** %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %91

27:                                               ; preds = %6
  %28 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %29 = load %struct.tmpfs_node*, %struct.tmpfs_node** %10, align 8
  %30 = call i32 @tmpfs_vptocnp_dir(%struct.tmpfs_node* %28, %struct.tmpfs_node* %29, %struct.tmpfs_dirent** %14)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %14, align 8
  %37 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %15, align 4
  br label %62

47:                                               ; preds = %33
  %48 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %14, align 8
  %49 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %14, align 8
  %57 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @bcopy(i32 %51, i8* %55, i64 %58)
  %60 = load i32, i32* %16, align 4
  %61 = load i32*, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %47, %45
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.vnode*, %struct.vnode** %8, align 8
  %68 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  %70 = icmp ne %struct.vnode* %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %73 = load %struct.vnode*, %struct.vnode** %72, align 8
  %74 = call i32 @VOP_UNLOCK(%struct.vnode* %73, i32 0)
  br label %75

75:                                               ; preds = %71, %66
  br label %89

76:                                               ; preds = %63
  %77 = load %struct.vnode*, %struct.vnode** %8, align 8
  %78 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %79 = load %struct.vnode*, %struct.vnode** %78, align 8
  %80 = icmp ne %struct.vnode* %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %83 = load %struct.vnode*, %struct.vnode** %82, align 8
  %84 = call i32 @vput(%struct.vnode* %83)
  br label %88

85:                                               ; preds = %76
  %86 = load %struct.vnode*, %struct.vnode** %8, align 8
  %87 = call i32 @vrele(%struct.vnode* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %25
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @vn_vget_ino_gen(%struct.vnode*, i32, %struct.tmpfs_node*, i32, %struct.vnode**) #1

declare dso_local i32 @tmpfs_vptocnp_dir(%struct.tmpfs_node*, %struct.tmpfs_node*, %struct.tmpfs_dirent**) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
