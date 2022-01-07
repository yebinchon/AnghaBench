; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_copy_file_range(%struct.vnode* %0, i64* %1, %struct.vnode* %2, i64* %3, i64* %4, i32 %5, %struct.ucred* %6, %struct.ucred* %7, %struct.thread* %8) #0 {
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca %struct.ucred*, align 8
  %18 = alloca %struct.thread*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %10, align 8
  store i64* %1, i64** %11, align 8
  store %struct.vnode* %2, %struct.vnode** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ucred* %6, %struct.ucred** %16, align 8
  store %struct.ucred* %7, %struct.ucred** %17, align 8
  store %struct.thread* %8, %struct.thread** %18, align 8
  %23 = load i64*, i64** %14, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %20, align 8
  %25 = load i64*, i64** %14, align 8
  store i64 0, i64* %25, align 8
  store i32 0, i32* %19, align 4
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* %20, align 8
  %29 = load i64, i64* %21, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %21, align 8
  %31 = load i64*, i64** %13, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %22, align 8
  %33 = load i64, i64* %20, align 8
  %34 = load i64, i64* %22, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %22, align 8
  %36 = load %struct.vnode*, %struct.vnode** %10, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VDIR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %9
  %42 = load %struct.vnode*, %struct.vnode** %12, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VDIR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %9
  %48 = load i32, i32* @EISDIR, align 4
  store i32 %48, i32* %19, align 4
  br label %90

49:                                               ; preds = %41
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %21, align 8
  %55 = load i64, i64* @INT64_MAX, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %87, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %21, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %87, label %62

62:                                               ; preds = %57
  %63 = load i64*, i64** %13, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %22, align 8
  %68 = load i64, i64* @INT64_MAX, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %22, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load %struct.vnode*, %struct.vnode** %10, align 8
  %77 = getelementptr inbounds %struct.vnode, %struct.vnode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VREG, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.vnode*, %struct.vnode** %12, align 8
  %83 = getelementptr inbounds %struct.vnode, %struct.vnode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VREG, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %75, %70, %66, %62, %57, %53, %49
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %87, %81
  br label %90

90:                                               ; preds = %89, %47
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %127

94:                                               ; preds = %90
  %95 = load i64, i64* %20, align 8
  %96 = load i64*, i64** %14, align 8
  store i64 %95, i64* %96, align 8
  %97 = load %struct.vnode*, %struct.vnode** %10, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.vnode*, %struct.vnode** %12, align 8
  %101 = getelementptr inbounds %struct.vnode, %struct.vnode* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %94
  %105 = load %struct.vnode*, %struct.vnode** %10, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = load %struct.vnode*, %struct.vnode** %12, align 8
  %108 = load i64*, i64** %13, align 8
  %109 = load i64*, i64** %14, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.ucred*, %struct.ucred** %16, align 8
  %112 = load %struct.ucred*, %struct.ucred** %17, align 8
  %113 = load %struct.thread*, %struct.thread** %18, align 8
  %114 = call i32 @VOP_COPY_FILE_RANGE(%struct.vnode* %105, i64* %106, %struct.vnode* %107, i64* %108, i64* %109, i32 %110, %struct.ucred* %111, %struct.ucred* %112, %struct.thread* %113)
  store i32 %114, i32* %19, align 4
  br label %126

115:                                              ; preds = %94
  %116 = load %struct.vnode*, %struct.vnode** %10, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load %struct.vnode*, %struct.vnode** %12, align 8
  %119 = load i64*, i64** %13, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.ucred*, %struct.ucred** %16, align 8
  %123 = load %struct.ucred*, %struct.ucred** %17, align 8
  %124 = load %struct.thread*, %struct.thread** %18, align 8
  %125 = call i32 @vn_generic_copy_file_range(%struct.vnode* %116, i64* %117, %struct.vnode* %118, i64* %119, i64* %120, i32 %121, %struct.ucred* %122, %struct.ucred* %123, %struct.thread* %124)
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %115, %104
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i32, i32* %19, align 4
  ret i32 %128
}

declare dso_local i32 @VOP_COPY_FILE_RANGE(%struct.vnode*, i64*, %struct.vnode*, i64*, i64*, i32, %struct.ucred*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @vn_generic_copy_file_range(%struct.vnode*, i64*, %struct.vnode*, i64*, i64*, i32, %struct.ucred*, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
