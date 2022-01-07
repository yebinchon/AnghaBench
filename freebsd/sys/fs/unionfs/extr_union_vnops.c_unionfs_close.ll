; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_close_args = type { i32, %struct.thread*, %struct.ucred*, %struct.vnode* }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.unionfs_node_status = type { i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unionfs_close: enter\0A\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@UNS_OPENL_4_READDIR = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unionfs_close: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @unionfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca %struct.vop_close_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.unionfs_node_status*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  store %struct.vop_close_args* %0, %struct.vop_close_args** %2, align 8
  %11 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %12, i32 0, i32 3
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  %15 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %14)
  store i32 0, i32* %4, align 4
  %16 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %16, i32 0, i32 3
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %9, align 8
  %19 = load %struct.vnode*, %struct.vnode** %9, align 8
  %20 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %19)
  store %struct.unionfs_node* %20, %struct.unionfs_node** %5, align 8
  %21 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %22 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %21, i32 0, i32 2
  %23 = load %struct.ucred*, %struct.ucred** %22, align 8
  store %struct.ucred* %23, %struct.ucred** %7, align 8
  %24 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %25 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %24, i32 0, i32 1
  %26 = load %struct.thread*, %struct.thread** %25, align 8
  store %struct.thread* %26, %struct.thread** %8, align 8
  %27 = load %struct.vnode*, %struct.vnode** %9, align 8
  %28 = call i32 @VOP_ISLOCKED(%struct.vnode* %27)
  %29 = load i32, i32* @LK_EXCLUSIVE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %1
  %32 = load %struct.vnode*, %struct.vnode** %9, align 8
  %33 = load i32, i32* @LK_UPGRADE, align 4
  %34 = call i64 @vn_lock(%struct.vnode* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.vnode*, %struct.vnode** %9, align 8
  %38 = load i32, i32* @LK_EXCLUSIVE, align 4
  %39 = load i32, i32* @LK_RETRY, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @vn_lock(%struct.vnode* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %45 = load %struct.thread*, %struct.thread** %8, align 8
  %46 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %44, %struct.thread* %45, %struct.unionfs_node_status** %6)
  %47 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %48 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %53 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %58 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %57, i32 0, i32 1
  %59 = load %struct.vnode*, %struct.vnode** %58, align 8
  %60 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %61 = icmp ne %struct.vnode* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %64 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %63, i32 0, i32 1
  %65 = load %struct.vnode*, %struct.vnode** %64, align 8
  store %struct.vnode* %65, %struct.vnode** %10, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %68 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %67, i32 0, i32 0
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  store %struct.vnode* %69, %struct.vnode** %10, align 8
  br label %70

70:                                               ; preds = %66, %62
  br label %85

71:                                               ; preds = %51, %43
  %72 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %73 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %78 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %77, i32 0, i32 1
  %79 = load %struct.vnode*, %struct.vnode** %78, align 8
  store %struct.vnode* %79, %struct.vnode** %10, align 8
  br label %84

80:                                               ; preds = %71
  %81 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %82 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %81, i32 0, i32 0
  %83 = load %struct.vnode*, %struct.vnode** %82, align 8
  store %struct.vnode* %83, %struct.vnode** %10, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.vnode*, %struct.vnode** %10, align 8
  %87 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %88 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ucred*, %struct.ucred** %7, align 8
  %91 = load %struct.thread*, %struct.thread** %8, align 8
  %92 = call i32 @VOP_CLOSE(%struct.vnode* %86, i32 %89, %struct.ucred* %90, %struct.thread* %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %162

96:                                               ; preds = %85
  %97 = load %struct.vnode*, %struct.vnode** %10, align 8
  %98 = getelementptr inbounds %struct.vnode, %struct.vnode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vnode*, %struct.vnode** %9, align 8
  %101 = getelementptr inbounds %struct.vnode, %struct.vnode* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.vnode*, %struct.vnode** %10, align 8
  %103 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %104 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %103, i32 0, i32 1
  %105 = load %struct.vnode*, %struct.vnode** %104, align 8
  %106 = icmp eq %struct.vnode* %102, %105
  br i1 %106, label %107, label %156

107:                                              ; preds = %96
  %108 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %109 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %113 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %107
  %117 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %118 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @UNS_OPENL_4_READDIR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %116
  %124 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %125 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %124, i32 0, i32 0
  %126 = load %struct.vnode*, %struct.vnode** %125, align 8
  %127 = load i32, i32* @FREAD, align 4
  %128 = load %struct.ucred*, %struct.ucred** %7, align 8
  %129 = load %struct.thread*, %struct.thread** %8, align 8
  %130 = call i32 @VOP_CLOSE(%struct.vnode* %126, i32 %127, %struct.ucred* %128, %struct.thread* %129)
  %131 = load i32, i32* @UNS_OPENL_4_READDIR, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %134 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %138 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, -1
  store i64 %140, i64* %138, align 8
  br label %141

141:                                              ; preds = %123, %116
  %142 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %143 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %148 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %147, i32 0, i32 0
  %149 = load %struct.vnode*, %struct.vnode** %148, align 8
  %150 = getelementptr inbounds %struct.vnode, %struct.vnode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.vnode*, %struct.vnode** %9, align 8
  %153 = getelementptr inbounds %struct.vnode, %struct.vnode* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %146, %141
  br label %155

155:                                              ; preds = %154, %107
  br label %161

156:                                              ; preds = %96
  %157 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %158 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, -1
  store i64 %160, i64* %158, align 8
  br label %161

161:                                              ; preds = %156, %155
  br label %162

162:                                              ; preds = %161, %95
  %163 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %164 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %165 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %163, %struct.unionfs_node_status* %164)
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load %struct.vnode*, %struct.vnode** %9, align 8
  %170 = load i32, i32* @LK_DOWNGRADE, align 4
  %171 = load i32, i32* @LK_RETRY, align 4
  %172 = or i32 %170, %171
  %173 = call i64 @vn_lock(%struct.vnode* %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %162
  %175 = load i32, i32* %3, align 4
  %176 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, %struct.thread*, %struct.unionfs_node_status**) #1

declare dso_local i32 @VOP_CLOSE(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
