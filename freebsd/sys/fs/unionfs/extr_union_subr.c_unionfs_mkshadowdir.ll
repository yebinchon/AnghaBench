; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_mkshadowdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_mkshadowdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.unionfs_mount = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, %struct.ucred*, i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i32 }
%struct.mount = type { i32 }
%struct.uidinfo = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@VNON = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_mkshadowdir(%struct.unionfs_mount* %0, %struct.vnode* %1, %struct.unionfs_node* %2, %struct.componentname* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.unionfs_mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.unionfs_node*, align 8
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vattr, align 4
  %16 = alloca %struct.vattr, align 4
  %17 = alloca %struct.componentname, align 8
  %18 = alloca %struct.mount*, align 8
  %19 = alloca %struct.ucred*, align 8
  %20 = alloca %struct.ucred*, align 8
  %21 = alloca %struct.uidinfo*, align 8
  store %struct.unionfs_mount* %0, %struct.unionfs_mount** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store %struct.unionfs_node* %2, %struct.unionfs_node** %9, align 8
  store %struct.componentname* %3, %struct.componentname** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load %struct.unionfs_node*, %struct.unionfs_node** %9, align 8
  %23 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %22, i32 0, i32 1
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  %25 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %26 = icmp ne %struct.vnode* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @EEXIST, align 4
  store i32 %28, i32* %6, align 4
  br label %155

29:                                               ; preds = %5
  %30 = load %struct.unionfs_node*, %struct.unionfs_node** %9, align 8
  %31 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %30, i32 0, i32 0
  %32 = load %struct.vnode*, %struct.vnode** %31, align 8
  store %struct.vnode* %32, %struct.vnode** %13, align 8
  %33 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %33, %struct.vnode** %14, align 8
  %34 = load %struct.componentname*, %struct.componentname** %10, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 1
  %36 = load %struct.ucred*, %struct.ucred** %35, align 8
  store %struct.ucred* %36, %struct.ucred** %20, align 8
  %37 = call %struct.uidinfo* @uifind(i32 0)
  store %struct.uidinfo* %37, %struct.uidinfo** %21, align 8
  %38 = load %struct.componentname*, %struct.componentname** %10, align 8
  %39 = getelementptr inbounds %struct.componentname, %struct.componentname* %38, i32 0, i32 1
  %40 = load %struct.ucred*, %struct.ucred** %39, align 8
  %41 = call %struct.ucred* @crdup(%struct.ucred* %40)
  store %struct.ucred* %41, %struct.ucred** %19, align 8
  %42 = load %struct.ucred*, %struct.ucred** %19, align 8
  %43 = getelementptr inbounds %struct.ucred, %struct.ucred* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @chgproccnt(i32 %44, i32 1, i32 0)
  %46 = load %struct.ucred*, %struct.ucred** %19, align 8
  %47 = load %struct.uidinfo*, %struct.uidinfo** %21, align 8
  %48 = call i32 @change_euid(%struct.ucred* %46, %struct.uidinfo* %47)
  %49 = load %struct.ucred*, %struct.ucred** %19, align 8
  %50 = load %struct.uidinfo*, %struct.uidinfo** %21, align 8
  %51 = call i32 @change_ruid(%struct.ucred* %49, %struct.uidinfo* %50)
  %52 = load %struct.ucred*, %struct.ucred** %19, align 8
  %53 = call i32 @change_svuid(%struct.ucred* %52, i32 0)
  %54 = load %struct.uidinfo*, %struct.uidinfo** %21, align 8
  %55 = call i32 @uifree(%struct.uidinfo* %54)
  %56 = load %struct.ucred*, %struct.ucred** %19, align 8
  %57 = load %struct.componentname*, %struct.componentname** %10, align 8
  %58 = getelementptr inbounds %struct.componentname, %struct.componentname* %57, i32 0, i32 1
  store %struct.ucred* %56, %struct.ucred** %58, align 8
  %59 = call i32 @memset(%struct.componentname* %17, i32 0, i32 32)
  %60 = load %struct.vnode*, %struct.vnode** %13, align 8
  %61 = load %struct.componentname*, %struct.componentname** %10, align 8
  %62 = getelementptr inbounds %struct.componentname, %struct.componentname* %61, i32 0, i32 1
  %63 = load %struct.ucred*, %struct.ucred** %62, align 8
  %64 = call i32 @VOP_GETATTR(%struct.vnode* %60, %struct.vattr* %16, %struct.ucred* %63)
  store i32 %64, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %29
  br label %144

67:                                               ; preds = %29
  %68 = load %struct.vnode*, %struct.vnode** %8, align 8
  %69 = load %struct.componentname*, %struct.componentname** %10, align 8
  %70 = load %struct.thread*, %struct.thread** %11, align 8
  %71 = load %struct.componentname*, %struct.componentname** %10, align 8
  %72 = getelementptr inbounds %struct.componentname, %struct.componentname* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.componentname*, %struct.componentname** %10, align 8
  %75 = getelementptr inbounds %struct.componentname, %struct.componentname* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CREATE, align 4
  %78 = call i32 @unionfs_relookup(%struct.vnode* %68, %struct.vnode** %14, %struct.componentname* %69, %struct.componentname* %17, %struct.thread* %70, i32 %73, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %144

81:                                               ; preds = %67
  %82 = load %struct.vnode*, %struct.vnode** %14, align 8
  %83 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %84 = icmp ne %struct.vnode* %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.vnode*, %struct.vnode** %8, align 8
  %87 = load %struct.vnode*, %struct.vnode** %14, align 8
  %88 = icmp eq %struct.vnode* %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.vnode*, %struct.vnode** %14, align 8
  %91 = call i32 @vrele(%struct.vnode* %90)
  br label %95

92:                                               ; preds = %85
  %93 = load %struct.vnode*, %struct.vnode** %14, align 8
  %94 = call i32 @vput(%struct.vnode* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @EEXIST, align 4
  store i32 %96, i32* %12, align 4
  br label %127

97:                                               ; preds = %81
  %98 = load %struct.vnode*, %struct.vnode** %8, align 8
  %99 = load i32, i32* @V_WAIT, align 4
  %100 = load i32, i32* @PCATCH, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @vn_start_write(%struct.vnode* %98, %struct.mount** %18, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %127

105:                                              ; preds = %97
  %106 = load %struct.unionfs_mount*, %struct.unionfs_mount** %7, align 8
  %107 = load %struct.thread*, %struct.thread** %11, align 8
  %108 = call i32 @unionfs_create_uppervattr_core(%struct.unionfs_mount* %106, %struct.vattr* %16, %struct.vattr* %15, %struct.thread* %107)
  %109 = load %struct.vnode*, %struct.vnode** %8, align 8
  %110 = call i32 @VOP_MKDIR(%struct.vnode* %109, %struct.vnode** %14, %struct.componentname* %17, %struct.vattr* %15)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %105
  %114 = load %struct.unionfs_node*, %struct.unionfs_node** %9, align 8
  %115 = load %struct.vnode*, %struct.vnode** %14, align 8
  %116 = load %struct.thread*, %struct.thread** %11, align 8
  %117 = call i32 @unionfs_node_update(%struct.unionfs_node* %114, %struct.vnode* %115, %struct.thread* %116)
  %118 = load i32, i32* @VNON, align 4
  %119 = getelementptr inbounds %struct.vattr, %struct.vattr* %15, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.vnode*, %struct.vnode** %14, align 8
  %121 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 1
  %122 = load %struct.ucred*, %struct.ucred** %121, align 8
  %123 = call i32 @VOP_SETATTR(%struct.vnode* %120, %struct.vattr* %15, %struct.ucred* %122)
  br label %124

124:                                              ; preds = %113, %105
  %125 = load %struct.mount*, %struct.mount** %18, align 8
  %126 = call i32 @vn_finished_write(%struct.mount* %125)
  br label %127

127:                                              ; preds = %124, %104, %95
  %128 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HASBUF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i32, i32* @namei_zone, align 4
  %135 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @uma_zfree(i32 %134, i32 %136)
  %138 = load i32, i32* @HASBUF, align 4
  %139 = xor i32 %138, -1
  %140 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %139
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %133, %127
  br label %144

144:                                              ; preds = %143, %80, %66
  %145 = load %struct.ucred*, %struct.ucred** %20, align 8
  %146 = load %struct.componentname*, %struct.componentname** %10, align 8
  %147 = getelementptr inbounds %struct.componentname, %struct.componentname* %146, i32 0, i32 1
  store %struct.ucred* %145, %struct.ucred** %147, align 8
  %148 = load %struct.ucred*, %struct.ucred** %19, align 8
  %149 = getelementptr inbounds %struct.ucred, %struct.ucred* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @chgproccnt(i32 %150, i32 -1, i32 0)
  %152 = load %struct.ucred*, %struct.ucred** %19, align 8
  %153 = call i32 @crfree(%struct.ucred* %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %144, %27
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local %struct.uidinfo* @uifind(i32) #1

declare dso_local %struct.ucred* @crdup(%struct.ucred*) #1

declare dso_local i32 @chgproccnt(i32, i32, i32) #1

declare dso_local i32 @change_euid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @change_ruid(%struct.ucred*, %struct.uidinfo*) #1

declare dso_local i32 @change_svuid(%struct.ucred*, i32) #1

declare dso_local i32 @uifree(%struct.uidinfo*) #1

declare dso_local i32 @memset(%struct.componentname*, i32, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @unionfs_relookup(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.componentname*, %struct.thread*, i32, i32, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @unionfs_create_uppervattr_core(%struct.unionfs_mount*, %struct.vattr*, %struct.vattr*, %struct.thread*) #1

declare dso_local i32 @VOP_MKDIR(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.vattr*) #1

declare dso_local i32 @unionfs_node_update(%struct.unionfs_node*, %struct.vnode*, %struct.thread*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @uma_zfree(i32, i32) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
