; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_write_outvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_write_outvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.mount = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"vn_write_outvp: xfer2=%jd\00", align 1
@V_WAIT = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, i64, i64, i32, i32, i32, %struct.ucred*)* @vn_write_outvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_write_outvp(%struct.vnode* %0, i8* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.ucred* %7) #0 {
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca %struct.mount*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ucred* %7, %struct.ucred** %16, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %19, align 8
  br label %23

23:                                               ; preds = %121, %8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @MIN(i64 %24, i32 %25)
  store i64 %26, i64* %20, align 8
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.vnode*, %struct.vnode** %9, align 8
  %31 = load i64, i64* %20, align 8
  %32 = load %struct.ucred*, %struct.ucred** %16, align 8
  %33 = call i64 @vn_skip_hole(%struct.vnode* %30, i64 %31, i64* %11, i64* %12, i64* %18, i64* %19, %struct.ucred* %32)
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %123

37:                                               ; preds = %29
  %38 = load i64, i64* %19, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i64, i64* %20, align 8
  %43 = icmp sgt i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %20, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %44, i8* %48)
  br label %50

50:                                               ; preds = %41, %23
  %51 = call i32 (...) @bwillwrite()
  store %struct.mount* null, %struct.mount** %17, align 8
  %52 = load %struct.vnode*, %struct.vnode** %9, align 8
  %53 = load i32, i32* @V_WAIT, align 4
  %54 = call i32 @vn_start_write(%struct.vnode* %52, %struct.mount** %17, i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.mount*, %struct.mount** %17, align 8
  %59 = call i64 @MNT_SHARED_WRITES(%struct.mount* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @LK_SHARED, align 4
  store i32 %62, i32* %22, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @LK_EXCLUSIVE, align 4
  store i32 %64, i32* %22, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load %struct.vnode*, %struct.vnode** %9, align 8
  %67 = load i32, i32* %22, align 4
  %68 = call i32 @vn_lock(%struct.vnode* %66, i32 %67)
  store i32 %68, i32* %21, align 4
  br label %69

69:                                               ; preds = %65, %50
  %70 = load i32, i32* %21, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.vnode*, %struct.vnode** %9, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.ucred*, %struct.ucred** %16, align 8
  %81 = call i32 @vn_truncate_locked(%struct.vnode* %76, i64 %79, i32 0, %struct.ucred* %80)
  store i32 %81, i32* %21, align 4
  br label %102

82:                                               ; preds = %72
  %83 = load i32, i32* @UIO_WRITE, align 4
  %84 = load %struct.vnode*, %struct.vnode** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i32, i32* @UIO_SYSSPACE, align 4
  %89 = load i32, i32* @IO_NODELOCKED, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ucred*, %struct.ucred** %16, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %95 = call i32 @vn_rdwr(i32 %83, %struct.vnode* %84, i8* %85, i64 %86, i64 %87, i32 %88, i32 %89, i32 %92, %struct.ucred* %93, i32* null, %struct.TYPE_3__* %94)
  store i32 %95, i32* %21, align 4
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %82, %75
  %103 = load %struct.vnode*, %struct.vnode** %9, align 8
  %104 = call i32 @VOP_UNLOCK(%struct.vnode* %103, i32 0)
  br label %105

105:                                              ; preds = %102, %69
  %106 = load %struct.mount*, %struct.mount** %17, align 8
  %107 = icmp ne %struct.mount* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.mount*, %struct.mount** %17, align 8
  %110 = call i32 @vn_finished_write(%struct.mount* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %12, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %21, align 4
  %120 = icmp eq i32 %119, 0
  br label %121

121:                                              ; preds = %118, %115, %112
  %122 = phi i1 [ false, %115 ], [ false, %112 ], [ %120, %118 ]
  br i1 %122, label %23, label %123

123:                                              ; preds = %121, %36
  %124 = load i32, i32* %21, align 4
  ret i32 %124
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @vn_skip_hole(%struct.vnode*, i64, i64*, i64*, i64*, i64*, %struct.ucred*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i64 @MNT_SHARED_WRITES(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vn_truncate_locked(%struct.vnode*, i64, i32, %struct.ucred*) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i8*, i64, i64, i32, i32, i32, %struct.ucred*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
