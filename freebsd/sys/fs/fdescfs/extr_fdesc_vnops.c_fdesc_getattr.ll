; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getattr_args = type { %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i32, i32, i32, i32, i32, i8*, i64, i64, i64, i64, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i8*, i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.vnode = type { i32, i32 }
%struct.timeval = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@S_IRUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i8* null, align 8
@VDIR = common dso_local global i32 0, align 4
@NODEV = common dso_local global i32 0, align 4
@VV_READLINK = common dso_local global i32 0, align 4
@VCHR = common dso_local global i32 0, align 4
@VLNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fdesc_getattr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @fdesc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca %struct.vop_getattr_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %2, align 8
  %6 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %9, i32 0, i32 0
  %11 = load %struct.vattr*, %struct.vattr** %10, align 8
  store %struct.vattr* %11, %struct.vattr** %4, align 8
  %12 = call i32 @getboottime(%struct.timeval* %5)
  %13 = load i32, i32* @S_IRUSR, align 4
  %14 = load i32, i32* @S_IXUSR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRGRP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S_IXGRP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IROTH, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @S_IXOTH, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.vattr*, %struct.vattr** %4, align 8
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = call %struct.TYPE_4__* @VTOFDESC(%struct.vnode* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vattr*, %struct.vattr** %4, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vattr*, %struct.vattr** %4, align 8
  %33 = getelementptr inbounds %struct.vattr, %struct.vattr* %32, i32 0, i32 15
  store i64 0, i64* %33, align 8
  %34 = load %struct.vattr*, %struct.vattr** %4, align 8
  %35 = getelementptr inbounds %struct.vattr, %struct.vattr* %34, i32 0, i32 14
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** @DEV_BSIZE, align 8
  %37 = load %struct.vattr*, %struct.vattr** %4, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vattr*, %struct.vattr** %4, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.vattr*, %struct.vattr** %4, align 8
  %45 = getelementptr inbounds %struct.vattr, %struct.vattr* %44, i32 0, i32 12
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.vattr*, %struct.vattr** %4, align 8
  %48 = getelementptr inbounds %struct.vattr, %struct.vattr* %47, i32 0, i32 10
  %49 = load %struct.vattr*, %struct.vattr** %4, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 12
  %51 = bitcast %struct.TYPE_3__* %48 to i8*
  %52 = bitcast %struct.TYPE_3__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load %struct.vattr*, %struct.vattr** %4, align 8
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %53, i32 0, i32 11
  %55 = load %struct.vattr*, %struct.vattr** %4, align 8
  %56 = getelementptr inbounds %struct.vattr, %struct.vattr* %55, i32 0, i32 10
  %57 = bitcast %struct.TYPE_3__* %54 to i8*
  %58 = bitcast %struct.TYPE_3__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.vattr*, %struct.vattr** %4, align 8
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %59, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load %struct.vattr*, %struct.vattr** %4, align 8
  %62 = getelementptr inbounds %struct.vattr, %struct.vattr* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.vattr*, %struct.vattr** %4, align 8
  %64 = getelementptr inbounds %struct.vattr, %struct.vattr* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.vattr*, %struct.vattr** %4, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.vnode*, %struct.vnode** %3, align 8
  %68 = call %struct.TYPE_4__* @VTOFDESC(%struct.vnode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %108 [
    i32 128, label %71
    i32 129, label %83
  ]

71:                                               ; preds = %1
  %72 = load i32, i32* @VDIR, align 4
  %73 = load %struct.vattr*, %struct.vattr** %4, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.vattr*, %struct.vattr** %4, align 8
  %76 = getelementptr inbounds %struct.vattr, %struct.vattr* %75, i32 0, i32 1
  store i32 2, i32* %76, align 4
  %77 = load i8*, i8** @DEV_BSIZE, align 8
  %78 = load %struct.vattr*, %struct.vattr** %4, align 8
  %79 = getelementptr inbounds %struct.vattr, %struct.vattr* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @NODEV, align 4
  %81 = load %struct.vattr*, %struct.vattr** %4, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  br label %110

83:                                               ; preds = %1
  %84 = load %struct.vnode*, %struct.vnode** %3, align 8
  %85 = getelementptr inbounds %struct.vnode, %struct.vnode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VV_READLINK, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @VCHR, align 4
  br label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @VLNK, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.vattr*, %struct.vattr** %4, align 8
  %97 = getelementptr inbounds %struct.vattr, %struct.vattr* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.vattr*, %struct.vattr** %4, align 8
  %99 = getelementptr inbounds %struct.vattr, %struct.vattr* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.vattr*, %struct.vattr** %4, align 8
  %101 = getelementptr inbounds %struct.vattr, %struct.vattr* %100, i32 0, i32 5
  store i8* null, i8** %101, align 8
  %102 = load %struct.vattr*, %struct.vattr** %4, align 8
  %103 = getelementptr inbounds %struct.vattr, %struct.vattr* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @makedev(i32 0, i32 %104)
  %106 = load %struct.vattr*, %struct.vattr** %4, align 8
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %110

108:                                              ; preds = %1
  %109 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %94, %71
  %111 = load %struct.vattr*, %struct.vattr** %4, align 8
  %112 = getelementptr inbounds %struct.vattr, %struct.vattr* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.vnode*, %struct.vnode** %3, align 8
  %115 = getelementptr inbounds %struct.vnode, %struct.vnode* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  ret i32 0
}

declare dso_local i32 @getboottime(%struct.timeval*) #1

declare dso_local %struct.TYPE_4__* @VTOFDESC(%struct.vnode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @makedev(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
