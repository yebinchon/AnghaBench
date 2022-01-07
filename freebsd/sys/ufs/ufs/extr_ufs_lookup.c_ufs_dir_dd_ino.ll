; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_lookup.c_ufs_dir_dd_ino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_lookup.c_ufs_dir_dd_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i64 }
%struct.ucred = type { i32 }
%struct.dirtemplate = type { i32, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ufs_dir_dd_ino\00", align 1
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ufs_dir_dd_ino: Unexpected mount point crossing\00", align 1
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@IO_NOMACCHECK = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.ucred*, i32*, %struct.vnode**)* @ufs_dir_dd_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_dir_dd_ino(%struct.vnode* %0, %struct.ucred* %1, i32* %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.dirtemplate, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* null, %struct.vnode** %16, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDIR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOTDIR, align 4
  store i32 %23, i32* %5, align 4
  br label %93

24:                                               ; preds = %4
  %25 = load %struct.vnode*, %struct.vnode** %6, align 8
  %26 = call %struct.vnode* @vn_dir_dd_ino(%struct.vnode* %25)
  store %struct.vnode* %26, %struct.vnode** %11, align 8
  %27 = icmp ne %struct.vnode* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.vnode*, %struct.vnode** %11, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vnode*, %struct.vnode** %6, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.vnode*, %struct.vnode** %11, align 8
  %39 = call %struct.TYPE_2__* @VTOI(%struct.vnode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vnode*, %struct.vnode** %11, align 8
  %44 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %43, %struct.vnode** %44, align 8
  store i32 0, i32* %5, align 4
  br label %93

45:                                               ; preds = %24
  %46 = load i32, i32* @UIO_READ, align 4
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = ptrtoint %struct.dirtemplate* %10 to i32
  %49 = load i32, i32* @UIO_SYSSPACE, align 4
  %50 = load i32, i32* @IO_NODELOCKED, align 4
  %51 = load i32, i32* @IO_NOMACCHECK, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.ucred*, %struct.ucred** %7, align 8
  %54 = load i32, i32* @NOCRED, align 4
  %55 = call i32 @vn_rdwr(i32 %46, %struct.vnode* %47, i32 %48, i32 24, i32 0, i32 %49, i32 %52, %struct.ucred* %53, i32 %54, i32* null, i32* null)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %93

60:                                               ; preds = %45
  %61 = load %struct.vnode*, %struct.vnode** %6, align 8
  %62 = call i64 @OFSFMT(%struct.vnode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %13, align 4
  br label %70

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %87, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %10, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 46
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %10, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 46
  br i1 %86, label %87, label %89

87:                                               ; preds = %80, %73, %70
  %88 = load i32, i32* @ENOTDIR, align 4
  store i32 %88, i32* %5, align 4
  br label %93

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %10, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %87, %58, %28, %22
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.vnode* @vn_dir_dd_ino(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i32, i32, i32, i32, i32, %struct.ucred*, i32, i32*, i32*) #1

declare dso_local i64 @OFSFMT(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
