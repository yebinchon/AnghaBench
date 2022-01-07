; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_copyfile_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_copyfile_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, i8*, i32, %struct.iovec*, i32, %struct.thread* }
%struct.iovec = type { i8*, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i8* null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode*, %struct.ucred*, %struct.thread*)* @unionfs_copyfile_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_copyfile_core(%struct.vnode* %0, %struct.vnode* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.uio, align 8
  %15 = alloca %struct.iovec, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = call i32 @memset(%struct.uio* %14, i32 0, i32 48)
  %17 = load %struct.thread*, %struct.thread** %8, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 6
  store %struct.thread* %17, %struct.thread** %18, align 8
  %19 = load i32, i32* @UIO_SYSSPACE, align 4
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 2
  store i8* null, i8** %21, align 8
  %22 = load i8*, i8** @MAXBSIZE, align 8
  %23 = load i32, i32* @M_TEMP, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call i8* @malloc(i8* %22, i32 %23, i32 %24)
  store i8* %25, i8** %13, align 8
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 4
  store %struct.iovec* %15, %struct.iovec** %32, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** @MAXBSIZE, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @UIO_READ, align 4
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = load %struct.ucred*, %struct.ucred** %7, align 8
  %46 = call i32 @VOP_READ(%struct.vnode* %44, %struct.uio* %14, i32 0, %struct.ucred* %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %106

49:                                               ; preds = %29
  %50 = load i8*, i8** @MAXBSIZE, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr i8, i8* %50, i64 %54
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %106

59:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %91, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 4
  store %struct.iovec* %15, %struct.iovec** %65, align 8
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %72, %73
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @UIO_WRITE, align 4
  %85 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 3
  store i32 %84, i32* %85, align 8
  %86 = load %struct.vnode*, %struct.vnode** %6, align 8
  %87 = load %struct.ucred*, %struct.ucred** %7, align 8
  %88 = call i32 @VOP_WRITE(%struct.vnode* %86, %struct.uio* %14, i32 0, %struct.ucred* %87)
  store i32 %88, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %64
  br label %100

91:                                               ; preds = %64
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %92, %93
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %94, %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %60

100:                                              ; preds = %90, %60
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  %105 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 2
  store i8* %104, i8** %105, align 8
  br label %26

106:                                              ; preds = %58, %48, %26
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* @M_TEMP, align 4
  %109 = call i32 @free(i8* %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%struct.uio*, i32, i32) #1

declare dso_local i8* @malloc(i8*, i32, i32) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
