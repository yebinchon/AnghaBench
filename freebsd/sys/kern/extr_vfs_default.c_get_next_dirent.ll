; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_get_next_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_get_next_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.dirent = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, i32, %struct.thread*, i32, i32, %struct.iovec* }
%struct.iovec = type { i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"vp %p is not locked\00", align 1
@VDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"vp %p is not a directory\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DIRENT_MINSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.dirent**, i8*, i32, i32*, i8**, i32*, i32*, %struct.thread*)* @get_next_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_dirent(%struct.vnode* %0, %struct.dirent** %1, i8* %2, i32 %3, i32* %4, i8** %5, i32* %6, i32* %7, %struct.thread* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.dirent**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.thread*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.uio, align 8
  %23 = alloca %struct.iovec, align 8
  %24 = alloca %struct.dirent*, align 8
  store %struct.vnode* %0, %struct.vnode** %11, align 8
  store %struct.dirent** %1, %struct.dirent*** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i8** %5, i8*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store %struct.thread* %8, %struct.thread** %19, align 8
  %25 = load %struct.vnode*, %struct.vnode** %11, align 8
  %26 = call i32 @VOP_ISLOCKED(%struct.vnode* %25)
  %27 = load %struct.vnode*, %struct.vnode** %11, align 8
  %28 = bitcast %struct.vnode* %27 to i8*
  %29 = call i32 @KASSERT(i32 %26, i8* %28)
  %30 = load %struct.vnode*, %struct.vnode** %11, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VDIR, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.vnode*, %struct.vnode** %11, align 8
  %37 = bitcast %struct.vnode* %36 to i8*
  %38 = call i32 @KASSERT(i32 %35, i8* %37)
  %39 = load i32*, i32** %17, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %9
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 6
  store %struct.iovec* %23, %struct.iovec** %47, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %14, align 4
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @UIO_SYSSPACE, align 4
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @UIO_READ, align 4
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 4
  store i32 %56, i32* %57, align 8
  %58 = load %struct.thread*, %struct.thread** %19, align 8
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 3
  store %struct.thread* %58, %struct.thread** %59, align 8
  %60 = load i32*, i32** %18, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.vnode*, %struct.vnode** %11, align 8
  %62 = load %struct.thread*, %struct.thread** %19, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @VOP_READDIR(%struct.vnode* %61, %struct.uio* %22, i32 %64, i32* %65, i32* null, i32* null)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %42
  %70 = load i32, i32* %20, align 4
  store i32 %70, i32* %10, align 4
  br label %112

71:                                               ; preds = %42
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %15, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load i8**, i8*** %16, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = load i32*, i32** %17, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @ENOENT, align 4
  store i32 %86, i32* %10, align 4
  br label %112

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %9
  %89 = load i8**, i8*** %16, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to %struct.dirent*
  store %struct.dirent* %91, %struct.dirent** %24, align 8
  %92 = load %struct.dirent*, %struct.dirent** %24, align 8
  %93 = getelementptr inbounds %struct.dirent, %struct.dirent* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %21, align 4
  %95 = load %struct.dirent*, %struct.dirent** %24, align 8
  %96 = load %struct.dirent**, %struct.dirent*** %12, align 8
  store %struct.dirent* %95, %struct.dirent** %96, align 8
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* @DIRENT_MINSIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %10, align 4
  br label %112

102:                                              ; preds = %88
  %103 = load i32, i32* %21, align 4
  %104 = load i8**, i8*** %16, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %104, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load i32*, i32** %17, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, %108
  store i32 %111, i32* %109, align 4
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %102, %100, %85, %69
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_READDIR(%struct.vnode*, %struct.uio*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
