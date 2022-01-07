; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chtimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chtimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vattr = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.tmpfs_node = type { i32, %struct.TYPE_6__, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chtimes\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"chtimes2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_chtimes(%struct.vnode* %0, %struct.vattr* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vattr* %1, %struct.vattr** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %14)
  store %struct.tmpfs_node* %15, %struct.tmpfs_node** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MNT_RDONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @EROFS, align 4
  store i32 %25, i32* %5, align 4
  br label %109

26:                                               ; preds = %4
  %27 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %28 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IMMUTABLE, align 4
  %31 = load i32, i32* @APPEND, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EPERM, align 4
  store i32 %36, i32* %5, align 4
  br label %109

37:                                               ; preds = %26
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = load %struct.vattr*, %struct.vattr** %7, align 8
  %40 = load %struct.ucred*, %struct.ucred** %8, align 8
  %41 = load %struct.thread*, %struct.thread** %9, align 8
  %42 = call i32 @vn_utimes_perm(%struct.vnode* %38, %struct.vattr* %39, %struct.ucred* %40, %struct.thread* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %109

47:                                               ; preds = %37
  %48 = load %struct.vattr*, %struct.vattr** %7, align 8
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VNOVAL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %56 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %57 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.vattr*, %struct.vattr** %7, align 8
  %62 = getelementptr inbounds %struct.vattr, %struct.vattr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VNOVAL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %69 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %70 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.vattr*, %struct.vattr** %7, align 8
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VNOVAL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %82 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %83 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = load %struct.vattr*, %struct.vattr** %7, align 8
  %89 = getelementptr inbounds %struct.vattr, %struct.vattr* %88, i32 0, i32 2
  %90 = load %struct.vattr*, %struct.vattr** %7, align 8
  %91 = getelementptr inbounds %struct.vattr, %struct.vattr* %90, i32 0, i32 1
  %92 = call i32 @tmpfs_itimes(%struct.vnode* %87, %struct.TYPE_7__* %89, %struct.TYPE_8__* %91)
  %93 = load %struct.vattr*, %struct.vattr** %7, align 8
  %94 = getelementptr inbounds %struct.vattr, %struct.vattr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VNOVAL, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %86
  %100 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %101 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %100, i32 0, i32 1
  %102 = load %struct.vattr*, %struct.vattr** %7, align 8
  %103 = getelementptr inbounds %struct.vattr, %struct.vattr* %102, i32 0, i32 0
  %104 = bitcast %struct.TYPE_6__* %101 to i8*
  %105 = bitcast %struct.TYPE_6__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 8, i1 false)
  br label %106

106:                                              ; preds = %99, %86
  %107 = load %struct.vnode*, %struct.vnode** %6, align 8
  %108 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %45, %35, %24
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @vn_utimes_perm(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @tmpfs_itimes(%struct.vnode*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
