; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.tmpfs_node = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@VNOVAL = common dso_local global i64 0, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_RETAINSUGID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"chown2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_chown(%struct.vnode* %0, i64 %1, i64 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tmpfs_node*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %7, align 8
  %17 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %18)
  store %struct.tmpfs_node* %19, %struct.tmpfs_node** %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @VNOVAL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @VNOVAL, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ true, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @VNOVAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %36 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @VNOVAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %44 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @VNOVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @VNOVAL, align 8
  %53 = icmp ne i64 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ false, %46 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @MPASS(i32 %56)
  %58 = load %struct.vnode*, %struct.vnode** %7, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MNT_RDONLY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @EROFS, align 4
  store i32 %67, i32* %6, align 4
  br label %164

68:                                               ; preds = %54
  %69 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %70 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IMMUTABLE, align 4
  %73 = load i32, i32* @APPEND, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @EPERM, align 4
  store i32 %78, i32* %6, align 4
  br label %164

79:                                               ; preds = %68
  %80 = load %struct.vnode*, %struct.vnode** %7, align 8
  %81 = load i32, i32* @VADMIN, align 4
  %82 = load %struct.ucred*, %struct.ucred** %10, align 8
  %83 = load %struct.thread*, %struct.thread** %11, align 8
  %84 = call i32 @VOP_ACCESS(%struct.vnode* %80, i32 %81, %struct.ucred* %82, %struct.thread* %83)
  store i32 %84, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %164

88:                                               ; preds = %79
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %91 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %97 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %94
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.ucred*, %struct.ucred** %10, align 8
  %103 = call i32 @groupmember(i64 %101, %struct.ucred* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100, %88
  %106 = load %struct.ucred*, %struct.ucred** %10, align 8
  %107 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %108 = call i32 @priv_check_cred(%struct.ucred* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %6, align 4
  br label %164

112:                                              ; preds = %105, %100, %94
  %113 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %114 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %15, align 8
  %116 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %117 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %121 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %124 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %126 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %127 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %131 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @S_ISUID, align 4
  %134 = load i32, i32* @S_ISGID, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %112
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %142, %138
  %147 = load %struct.ucred*, %struct.ucred** %10, align 8
  %148 = load i32, i32* @PRIV_VFS_RETAINSUGID, align 4
  %149 = call i32 @priv_check_cred(%struct.ucred* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i32, i32* @S_ISUID, align 4
  %153 = load i32, i32* @S_ISGID, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.tmpfs_node*, %struct.tmpfs_node** %13, align 8
  %157 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %151, %146
  br label %161

161:                                              ; preds = %160, %142, %112
  %162 = load %struct.vnode*, %struct.vnode** %7, align 8
  %163 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %161, %110, %86, %77, %66
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @groupmember(i64, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
