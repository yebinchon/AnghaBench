; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vnops.c_smbfs_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vnops.c_smbfs_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getextattr_args = type { i8*, %struct.uio*, %struct.ucred*, %struct.thread*, %struct.vnode* }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.smbnode = type { i32 }
%struct.vattr = type { i32 }

@VREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dosattr\00", align 1
@smbfs_atl = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getextattr_args*)* @smbfs_getextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_getextattr(%struct.vop_getextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getextattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smbnode*, align 8
  %10 = alloca %struct.vattr, align 4
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vop_getextattr_args* %0, %struct.vop_getextattr_args** %3, align 8
  %15 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %15, i32 0, i32 4
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %4, align 8
  %18 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %18, i32 0, i32 3
  %20 = load %struct.thread*, %struct.thread** %19, align 8
  store %struct.thread* %20, %struct.thread** %5, align 8
  %21 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %21, i32 0, i32 2
  %23 = load %struct.ucred*, %struct.ucred** %22, align 8
  store %struct.ucred* %23, %struct.ucred** %6, align 8
  %24 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %24, i32 0, i32 1
  %26 = load %struct.uio*, %struct.uio** %25, align 8
  store %struct.uio* %26, %struct.uio** %7, align 8
  %27 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = call %struct.smbnode* @VTOSMB(%struct.vnode* %30)
  store %struct.smbnode* %31, %struct.smbnode** %9, align 8
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = load i32, i32* @VREAD, align 4
  %34 = load %struct.ucred*, %struct.ucred** %6, align 8
  %35 = load %struct.thread*, %struct.thread** %5, align 8
  %36 = call i32 @VOP_ACCESS(%struct.vnode* %32, i32 %33, %struct.ucred* %34, %struct.thread* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %2, align 4
  br label %95

41:                                               ; preds = %1
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = load %struct.ucred*, %struct.ucred** %6, align 8
  %44 = call i32 @VOP_GETATTR(%struct.vnode* %42, %struct.vattr* %10, %struct.ucred* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %2, align 4
  br label %95

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %55 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %78, %53
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8*, i8** @smbfs_atl, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  br label %72

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %70, %64 ], [ 45, %71 ]
  %74 = trunc i32 %73 to i8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 %76
  store i8 %74, i8* %77, align 1
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.uio*, %struct.uio** %7, align 8
  %90 = call i32 @uiomove(i8* %87, i32 %88, %struct.uio* %89)
  store i32 %90, i32* %14, align 4
  br label %93

91:                                               ; preds = %49
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %83
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %47, %39
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
