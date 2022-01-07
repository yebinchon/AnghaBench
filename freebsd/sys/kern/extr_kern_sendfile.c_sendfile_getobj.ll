; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile_getobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile_getobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i64, %struct.shmfd*, %struct.vnode* }
%struct.shmfd = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.vnode = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.vattr = type { i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DTYPE_SHM = common dso_local global i64 0, align 8
@OBJ_DEAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.file*, %struct.TYPE_10__**, %struct.vnode**, %struct.shmfd**, i32*, i32*)* @sendfile_getobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendfile_getobj(%struct.thread* %0, %struct.file* %1, %struct.TYPE_10__** %2, %struct.vnode** %3, %struct.shmfd** %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.shmfd**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.vattr, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.shmfd*, align 8
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.file* %1, %struct.file** %9, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %10, align 8
  store %struct.vnode** %3, %struct.vnode*** %11, align 8
  store %struct.shmfd** %4, %struct.shmfd*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* null, %struct.vnode** %20, align 8
  store %struct.vnode* null, %struct.vnode** %17, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %21 = load %struct.shmfd**, %struct.shmfd*** %12, align 8
  store %struct.shmfd* null, %struct.shmfd** %21, align 8
  store %struct.shmfd* null, %struct.shmfd** %18, align 8
  %22 = load i32*, i32** %14, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.file*, %struct.file** %9, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DTYPE_VNODE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %7
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 2
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %17, align 8
  %32 = load %struct.vnode*, %struct.vnode** %17, align 8
  %33 = load i32, i32* @LK_SHARED, align 4
  %34 = load i32, i32* @LK_RETRY, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @vn_lock(%struct.vnode* %32, i32 %35)
  %37 = load %struct.vnode*, %struct.vnode** %17, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VREG, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %19, align 4
  br label %116

44:                                               ; preds = %28
  %45 = load %struct.vnode*, %struct.vnode** %17, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.vnode*, %struct.vnode** %17, align 8
  %53 = load %struct.thread*, %struct.thread** %8, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @VOP_GETATTR(%struct.vnode* %52, %struct.vattr* %15, i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %116

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.vnode*, %struct.vnode** %17, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %16, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %68 = icmp eq %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %19, align 4
  br label %116

71:                                               ; preds = %60
  br label %92

72:                                               ; preds = %7
  %73 = load %struct.file*, %struct.file** %9, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DTYPE_SHM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  store i32 0, i32* %19, align 4
  %79 = load %struct.file*, %struct.file** %9, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 1
  %81 = load %struct.shmfd*, %struct.shmfd** %80, align 8
  store %struct.shmfd* %81, %struct.shmfd** %18, align 8
  %82 = load %struct.shmfd*, %struct.shmfd** %18, align 8
  %83 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %16, align 8
  %85 = load %struct.shmfd*, %struct.shmfd** %18, align 8
  %86 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  br label %91

89:                                               ; preds = %72
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %19, align 4
  br label %116

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %94 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @OBJ_DEAD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %103 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %102)
  %104 = load i32, i32* @EBADF, align 4
  store i32 %104, i32* %19, align 4
  br label %116

105:                                              ; preds = %92
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %107 = call i32 @vm_object_reference_locked(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %109 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %111 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %111, align 8
  %112 = load %struct.vnode*, %struct.vnode** %17, align 8
  %113 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %112, %struct.vnode** %113, align 8
  %114 = load %struct.shmfd*, %struct.shmfd** %18, align 8
  %115 = load %struct.shmfd**, %struct.shmfd*** %12, align 8
  store %struct.shmfd* %114, %struct.shmfd** %115, align 8
  br label %116

116:                                              ; preds = %105, %101, %89, %69, %59, %42
  %117 = load %struct.vnode*, %struct.vnode** %17, align 8
  %118 = icmp ne %struct.vnode* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.vnode*, %struct.vnode** %17, align 8
  %121 = call i32 @VOP_UNLOCK(%struct.vnode* %120, i32 0)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %19, align 4
  ret i32 %123
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_reference_locked(%struct.TYPE_10__*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
