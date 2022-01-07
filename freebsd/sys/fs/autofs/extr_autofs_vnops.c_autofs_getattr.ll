; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getattr_args = type { i32, %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i32, i32, i64, i64, i8*, i64, i64, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64 }
%struct.vnode = type { i64, %struct.mount*, %struct.autofs_node* }
%struct.mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.autofs_node = type { i32, i32 }

@VDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"!VDIR\00", align 1
@autofs_mount_on_stat = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NODEV = common dso_local global i64 0, align 8
@S_BLKSIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @autofs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.autofs_node*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.vattr*, align 8
  %9 = alloca i32, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %3, align 8
  %10 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 2
  %15 = load %struct.autofs_node*, %struct.autofs_node** %14, align 8
  store %struct.autofs_node* %15, %struct.autofs_node** %6, align 8
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 1
  %18 = load %struct.mount*, %struct.mount** %17, align 8
  store %struct.mount* %18, %struct.mount** %7, align 8
  %19 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %19, i32 0, i32 1
  %21 = load %struct.vattr*, %struct.vattr** %20, align 8
  store %struct.vattr* %21, %struct.vattr** %8, align 8
  %22 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %22, i32 0, i32 2
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VDIR, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @autofs_mount_on_stat, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %1
  %34 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %35 = call i32 @autofs_cached(%struct.autofs_node* %34, i32* null, i32 0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i32, i32* @curthread, align 4
  %39 = call i32 @autofs_ignore_thread(i32 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = call i32 @autofs_trigger_vn(%struct.vnode* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.vnode** %5)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %132

48:                                               ; preds = %41
  %49 = load %struct.vnode*, %struct.vnode** %5, align 8
  %50 = icmp ne %struct.vnode* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.vnode*, %struct.vnode** %5, align 8
  %53 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %53, i32 0, i32 1
  %55 = load %struct.vattr*, %struct.vattr** %54, align 8
  %56 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @VOP_GETATTR(%struct.vnode* %52, %struct.vattr* %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.vnode*, %struct.vnode** %5, align 8
  %61 = call i32 @vput(%struct.vnode* %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %132

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %37, %33, %1
  %65 = load i64, i64* @VDIR, align 8
  %66 = load %struct.vattr*, %struct.vattr** %8, align 8
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %66, i32 0, i32 18
  store i64 %65, i64* %67, align 8
  %68 = load %struct.vattr*, %struct.vattr** %8, align 8
  %69 = getelementptr inbounds %struct.vattr, %struct.vattr* %68, i32 0, i32 0
  store i32 493, i32* %69, align 8
  %70 = load %struct.vattr*, %struct.vattr** %8, align 8
  %71 = getelementptr inbounds %struct.vattr, %struct.vattr* %70, i32 0, i32 1
  store i32 3, i32* %71, align 4
  %72 = load %struct.vattr*, %struct.vattr** %8, align 8
  %73 = getelementptr inbounds %struct.vattr, %struct.vattr* %72, i32 0, i32 17
  store i64 0, i64* %73, align 8
  %74 = load %struct.vattr*, %struct.vattr** %8, align 8
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %74, i32 0, i32 16
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* @NODEV, align 8
  %77 = load %struct.vattr*, %struct.vattr** %8, align 8
  %78 = getelementptr inbounds %struct.vattr, %struct.vattr* %77, i32 0, i32 5
  store i64 %76, i64* %78, align 8
  %79 = load %struct.mount*, %struct.mount** %7, align 8
  %80 = getelementptr inbounds %struct.mount, %struct.mount* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vattr*, %struct.vattr** %8, align 8
  %87 = getelementptr inbounds %struct.vattr, %struct.vattr* %86, i32 0, i32 15
  store i32 %85, i32* %87, align 4
  %88 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %89 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vattr*, %struct.vattr** %8, align 8
  %92 = getelementptr inbounds %struct.vattr, %struct.vattr* %91, i32 0, i32 14
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @S_BLKSIZE, align 8
  %94 = load %struct.vattr*, %struct.vattr** %8, align 8
  %95 = getelementptr inbounds %struct.vattr, %struct.vattr* %94, i32 0, i32 13
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @S_BLKSIZE, align 8
  %97 = load %struct.vattr*, %struct.vattr** %8, align 8
  %98 = getelementptr inbounds %struct.vattr, %struct.vattr* %97, i32 0, i32 12
  store i8* %96, i8** %98, align 8
  %99 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %100 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vattr*, %struct.vattr** %8, align 8
  %103 = getelementptr inbounds %struct.vattr, %struct.vattr* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 4
  %104 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %105 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vattr*, %struct.vattr** %8, align 8
  %108 = getelementptr inbounds %struct.vattr, %struct.vattr* %107, i32 0, i32 10
  store i32 %106, i32* %108, align 8
  %109 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %110 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vattr*, %struct.vattr** %8, align 8
  %113 = getelementptr inbounds %struct.vattr, %struct.vattr* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 4
  %114 = load %struct.autofs_node*, %struct.autofs_node** %6, align 8
  %115 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vattr*, %struct.vattr** %8, align 8
  %118 = getelementptr inbounds %struct.vattr, %struct.vattr* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 8
  %119 = load %struct.vattr*, %struct.vattr** %8, align 8
  %120 = getelementptr inbounds %struct.vattr, %struct.vattr* %119, i32 0, i32 7
  store i64 0, i64* %120, align 8
  %121 = load %struct.vattr*, %struct.vattr** %8, align 8
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %121, i32 0, i32 6
  store i64 0, i64* %122, align 8
  %123 = load %struct.vattr*, %struct.vattr** %8, align 8
  %124 = getelementptr inbounds %struct.vattr, %struct.vattr* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load i8*, i8** @S_BLKSIZE, align 8
  %126 = load %struct.vattr*, %struct.vattr** %8, align 8
  %127 = getelementptr inbounds %struct.vattr, %struct.vattr* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.vattr*, %struct.vattr** %8, align 8
  %129 = getelementptr inbounds %struct.vattr, %struct.vattr* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.vattr*, %struct.vattr** %8, align 8
  %131 = getelementptr inbounds %struct.vattr, %struct.vattr* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %64, %51, %46
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @autofs_cached(%struct.autofs_node*, i32*, i32) #1

declare dso_local i32 @autofs_ignore_thread(i32) #1

declare dso_local i32 @autofs_trigger_vn(%struct.vnode*, i8*, i32, %struct.vnode**) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
