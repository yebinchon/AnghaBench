; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.tmpfs_node = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chflags\00", align 1
@SF_APPEND = common dso_local global i32 0, align 4
@SF_ARCHIVED = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_NOUNLINK = common dso_local global i32 0, align 4
@UF_APPEND = common dso_local global i32 0, align 4
@UF_ARCHIVE = common dso_local global i32 0, align 4
@UF_HIDDEN = common dso_local global i32 0, align 4
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@UF_NODUMP = common dso_local global i32 0, align 4
@UF_NOUNLINK = common dso_local global i32 0, align 4
@UF_OFFLINE = common dso_local global i32 0, align 4
@UF_OPAQUE = common dso_local global i32 0, align 4
@UF_READONLY = common dso_local global i32 0, align 4
@UF_REPARSE = common dso_local global i32 0, align 4
@UF_SPARSE = common dso_local global i32 0, align 4
@UF_SYSTEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@PRIV_VFS_SYSFLAGS = common dso_local global i32 0, align 4
@SF_SETTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"chflags2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_chflags(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %14)
  store %struct.tmpfs_node* %15, %struct.tmpfs_node** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SF_APPEND, align 4
  %18 = load i32, i32* @SF_ARCHIVED, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SF_IMMUTABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SF_NOUNLINK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UF_APPEND, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UF_ARCHIVE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UF_HIDDEN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UF_IMMUTABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UF_NODUMP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UF_NOUNLINK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UF_OFFLINE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @UF_OPAQUE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UF_READONLY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @UF_REPARSE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @UF_SPARSE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UF_SYSTEM, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %16, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %4
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %52, i32* %5, align 4
  br label %132

53:                                               ; preds = %4
  %54 = load %struct.vnode*, %struct.vnode** %6, align 8
  %55 = getelementptr inbounds %struct.vnode, %struct.vnode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MNT_RDONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @EROFS, align 4
  store i32 %63, i32* %5, align 4
  br label %132

64:                                               ; preds = %53
  %65 = load %struct.vnode*, %struct.vnode** %6, align 8
  %66 = load i32, i32* @VADMIN, align 4
  %67 = load %struct.ucred*, %struct.ucred** %8, align 8
  %68 = load %struct.thread*, %struct.thread** %9, align 8
  %69 = call i32 @VOP_ACCESS(%struct.vnode* %65, i32 %66, %struct.ucred* %67, %struct.thread* %68)
  store i32 %69, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %132

73:                                               ; preds = %64
  %74 = load %struct.ucred*, %struct.ucred** %8, align 8
  %75 = load i32, i32* @PRIV_VFS_SYSFLAGS, align 4
  %76 = call i32 @priv_check_cred(%struct.ucred* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %80 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SF_NOUNLINK, align 4
  %83 = load i32, i32* @SF_IMMUTABLE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SF_APPEND, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %81, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load %struct.ucred*, %struct.ucred** %8, align 8
  %91 = call i32 @securelevel_gt(%struct.ucred* %90, i32 0)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %132

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %78
  br label %121

98:                                               ; preds = %73
  %99 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %100 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SF_NOUNLINK, align 4
  %103 = load i32, i32* @SF_IMMUTABLE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @SF_APPEND, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %101, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %112 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %110, %113
  %115 = load i32, i32* @SF_SETTABLE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109, %98
  %119 = load i32, i32* @EPERM, align 4
  store i32 %119, i32* %5, align 4
  br label %132

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %124 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %126 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %127 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.vnode*, %struct.vnode** %6, align 8
  %131 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %121, %118, %94, %71, %62, %51
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @securelevel_gt(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
