; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_open_vnode_advlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_open_vnode_advlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.file = type { i64, i32 }
%struct.flock = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"vn_open_vnode_advlock\00", align 1
@O_EXLOCK = common dso_local global i32 0, align 4
@O_SHLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"open with flock requires fp\00", align 1
@DTYPE_NONE = common dso_local global i64 0, align 8
@DTYPE_VNODE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@F_WAIT = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@FHASLOCK = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, %struct.file*)* @vn_open_vnode_advlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_open_vnode_advlock(%struct.vnode* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.flock, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file* %2, %struct.file** %7, align 8
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @O_EXLOCK, align 4
  %16 = load i32, i32* @O_SHLOCK, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

21:                                               ; preds = %3
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = icmp ne %struct.file* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DTYPE_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.file*, %struct.file** %7, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DTYPE_VNODE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %38, i32* %4, align 4
  br label %102

39:                                               ; preds = %31, %21
  %40 = load %struct.vnode*, %struct.vnode** %5, align 8
  %41 = call i32 @VOP_ISLOCKED(%struct.vnode* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.vnode*, %struct.vnode** %5, align 8
  %43 = call i32 @VOP_UNLOCK(%struct.vnode* %42, i32 0)
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @O_EXLOCK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @F_WRLCK, align 4
  br label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @F_RDLCK, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @F_FLOCK, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @FNONBLOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @F_WAIT, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %56
  %69 = load %struct.vnode*, %struct.vnode** %5, align 8
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = ptrtoint %struct.file* %70 to i32
  %72 = load i32, i32* @F_SETLK, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @VOP_ADVLOCK(%struct.vnode* %69, i32 %71, i32 %72, %struct.flock* %8, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i32, i32* @FHASLOCK, align 4
  %79 = load %struct.file*, %struct.file** %7, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %68
  %84 = load %struct.vnode*, %struct.vnode** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @LK_RETRY, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @vn_lock(%struct.vnode* %84, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load %struct.vnode*, %struct.vnode** %5, align 8
  %93 = getelementptr inbounds %struct.vnode, %struct.vnode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VI_DOOMED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @ENOENT, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %91, %83
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %37, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ADVLOCK(%struct.vnode*, i32, i32, %struct.flock*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
