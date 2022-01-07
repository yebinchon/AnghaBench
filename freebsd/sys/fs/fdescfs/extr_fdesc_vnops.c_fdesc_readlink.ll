; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_readlink_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i32 }
%struct.vnode = type { i64 }
%struct.file = type { i32, %struct.vnode* }
%struct.TYPE_2__ = type { i64 }
%struct.fdescnode = type { i32 }

@Fdesc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"fdesc_readlink: not fdescfs link\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@cap_no_rights = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"anon_inode:[unknown]\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readlink_args*)* @fdesc_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_readlink(%struct.vop_readlink_args* %0) #0 {
  %2 = alloca %struct.vop_readlink_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vop_readlink_args* %0, %struct.vop_readlink_args** %2, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %2, align 8
  %15 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @Fdesc, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.fdescnode*
  %30 = getelementptr inbounds %struct.fdescnode, %struct.fdescnode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call i32 @VOP_ISLOCKED(%struct.vnode* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call i32 @VOP_UNLOCK(%struct.vnode* %34, i32 0)
  %36 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %36, %struct.thread** %5, align 8
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @fget_cap(%struct.thread* %37, i32 %38, i32* @cap_no_rights, %struct.file** %7, i32* null)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %79

43:                                               ; preds = %25
  %44 = load %struct.file*, %struct.file** %7, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %54 [
    i32 128, label %47
  ]

47:                                               ; preds = %43
  %48 = load %struct.file*, %struct.file** %7, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  store %struct.vnode* %50, %struct.vnode** %3, align 8
  %51 = load %struct.thread*, %struct.thread** %5, align 8
  %52 = load %struct.vnode*, %struct.vnode** %3, align 8
  %53 = call i32 @vn_fullpath(%struct.thread* %51, %struct.vnode* %52, i8** %9, i8** %8)
  store i32 %53, i32* %13, align 4
  br label %55

54:                                               ; preds = %43
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %2, align 8
  %60 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %59, i32 0, i32 0
  %61 = load %struct.uio*, %struct.uio** %60, align 8
  store %struct.uio* %61, %struct.uio** %6, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %10, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.uio*, %struct.uio** %6, align 8
  %67 = call i32 @uiomove(i8* %64, i64 %65, %struct.uio* %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* @M_TEMP, align 4
  %74 = call i32 @free(i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.file*, %struct.file** %7, align 8
  %77 = load %struct.thread*, %struct.thread** %5, align 8
  %78 = call i32 @fdrop(%struct.file* %76, %struct.thread* %77)
  br label %79

79:                                               ; preds = %75, %42
  %80 = load %struct.vnode*, %struct.vnode** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @LK_RETRY, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @vn_lock(%struct.vnode* %80, i32 %83)
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_2__* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @fget_cap(%struct.thread*, i32, i32*, %struct.file**, i32*) #1

declare dso_local i32 @vn_fullpath(%struct.thread*, %struct.vnode*, i8**, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
