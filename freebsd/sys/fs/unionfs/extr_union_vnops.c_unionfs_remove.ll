; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i64, i32, i32* }
%struct.vop_remove_args = type { %struct.vnode*, %struct.componentname*, %struct.vnode* }
%struct.componentname = type { i8*, i32 }
%struct.unionfs_node = type { i8*, %struct.vnode*, %struct.vnode* }
%struct.unionfs_mount = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"unionfs_remove: enter\0A\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@unionfs_vnodeops = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@LK_RELEASE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@UNIONFS_WHITE_ALWAYS = common dso_local global i64 0, align 8
@DOWHITEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_remove: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @unionfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_remove_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.unionfs_node*, align 8
  %7 = alloca %struct.unionfs_node*, align 8
  %8 = alloca %struct.unionfs_mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.componentname*, align 8
  %14 = alloca %struct.componentname, align 8
  %15 = alloca %struct.thread*, align 8
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %3, align 8
  %16 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %17, i32 0, i32 2
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  %20 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %19)
  store i32 0, i32* %4, align 4
  %21 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %21, i32 0, i32 2
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  %24 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %23)
  store %struct.unionfs_node* %24, %struct.unionfs_node** %6, align 8
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %6, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 2
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %9, align 8
  %28 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %28, i32 0, i32 1
  %30 = load %struct.componentname*, %struct.componentname** %29, align 8
  store %struct.componentname* %30, %struct.componentname** %13, align 8
  %31 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %31, %struct.thread** %15, align 8
  %32 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %32, i32 0, i32 0
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, @unionfs_vnodeops
  br i1 %37, label %38, label %127

38:                                               ; preds = %1
  %39 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %40 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %39, i32 0, i32 0
  %41 = load %struct.vnode*, %struct.vnode** %40, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VSOCK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %2, align 4
  br label %196

48:                                               ; preds = %38
  store %struct.unionfs_mount* null, %struct.unionfs_mount** %8, align 8
  %49 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %49, %struct.vnode** %11, align 8
  store %struct.vnode* %49, %struct.vnode** %10, align 8
  store %struct.vnode* %49, %struct.vnode** %12, align 8
  %50 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %50, i32 0, i32 0
  %52 = load %struct.vnode*, %struct.vnode** %51, align 8
  %53 = load i32, i32* @LK_RELEASE, align 4
  %54 = call i32 @VOP_UNLOCK(%struct.vnode* %52, i32 %53)
  %55 = load %struct.vnode*, %struct.vnode** %9, align 8
  %56 = load %struct.componentname*, %struct.componentname** %13, align 8
  %57 = load %struct.thread*, %struct.thread** %15, align 8
  %58 = load %struct.componentname*, %struct.componentname** %13, align 8
  %59 = getelementptr inbounds %struct.componentname, %struct.componentname* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.componentname*, %struct.componentname** %13, align 8
  %62 = getelementptr inbounds %struct.componentname, %struct.componentname* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = load i32, i32* @DELETE, align 4
  %66 = call i32 @unionfs_relookup(%struct.vnode* %55, %struct.vnode** %12, %struct.componentname* %56, %struct.componentname* %14, %struct.thread* %57, i8* %60, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %48
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ENOENT, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %75 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %74, i32 0, i32 0
  %76 = load %struct.vnode*, %struct.vnode** %75, align 8
  %77 = load i32, i32* @LK_EXCLUSIVE, align 4
  %78 = load i32, i32* @LK_RETRY, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @vn_lock(%struct.vnode* %76, i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %196

82:                                               ; preds = %69, %48
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.vnode*, %struct.vnode** %12, align 8
  %87 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %88 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %87, i32 0, i32 0
  %89 = load %struct.vnode*, %struct.vnode** %88, align 8
  %90 = icmp eq %struct.vnode* %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %92, %struct.vnode** %10, align 8
  %93 = load %struct.vnode*, %struct.vnode** %12, align 8
  %94 = call i32 @vrele(%struct.vnode* %93)
  store i8* null, i8** %5, align 8
  br label %126

95:                                               ; preds = %85, %82
  %96 = load %struct.vnode*, %struct.vnode** %12, align 8
  %97 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %98 = icmp ne %struct.vnode* %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.vnode*, %struct.vnode** %9, align 8
  %101 = load %struct.vnode*, %struct.vnode** %12, align 8
  %102 = icmp eq %struct.vnode* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.vnode*, %struct.vnode** %12, align 8
  %105 = call i32 @vrele(%struct.vnode* %104)
  br label %109

106:                                              ; preds = %99
  %107 = load %struct.vnode*, %struct.vnode** %12, align 8
  %108 = call i32 @vput(%struct.vnode* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %95
  %111 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %112 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %111, i32 0, i32 0
  %113 = load %struct.vnode*, %struct.vnode** %112, align 8
  %114 = load i32, i32* @LK_EXCLUSIVE, align 4
  %115 = load i32, i32* @LK_RETRY, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @vn_lock(%struct.vnode* %113, i32 %116)
  %118 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %119 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %118, i32 0, i32 0
  %120 = load %struct.vnode*, %struct.vnode** %119, align 8
  store %struct.vnode* %120, %struct.vnode** %11, align 8
  %121 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %122 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %121, i32 0, i32 1
  %123 = load %struct.componentname*, %struct.componentname** %122, align 8
  %124 = getelementptr inbounds %struct.componentname, %struct.componentname* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %5, align 8
  br label %126

126:                                              ; preds = %110, %91
  br label %147

127:                                              ; preds = %1
  %128 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %129 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %128, i32 0, i32 0
  %130 = load %struct.vnode*, %struct.vnode** %129, align 8
  %131 = getelementptr inbounds %struct.vnode, %struct.vnode* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i32 %132)
  store %struct.unionfs_mount* %133, %struct.unionfs_mount** %8, align 8
  %134 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %135 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %134, i32 0, i32 0
  %136 = load %struct.vnode*, %struct.vnode** %135, align 8
  %137 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %136)
  store %struct.unionfs_node* %137, %struct.unionfs_node** %7, align 8
  %138 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %139 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %138, i32 0, i32 2
  %140 = load %struct.vnode*, %struct.vnode** %139, align 8
  store %struct.vnode* %140, %struct.vnode** %10, align 8
  %141 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %142 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %141, i32 0, i32 1
  %143 = load %struct.vnode*, %struct.vnode** %142, align 8
  store %struct.vnode* %143, %struct.vnode** %11, align 8
  %144 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %145 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %5, align 8
  br label %147

147:                                              ; preds = %127, %126
  %148 = load %struct.vnode*, %struct.vnode** %9, align 8
  %149 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %150 = icmp eq %struct.vnode* %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @EROFS, align 4
  store i32 %152, i32* %2, align 4
  br label %196

153:                                              ; preds = %147
  %154 = load %struct.vnode*, %struct.vnode** %10, align 8
  %155 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %156 = icmp ne %struct.vnode* %154, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %153
  %158 = load %struct.unionfs_mount*, %struct.unionfs_mount** %8, align 8
  %159 = icmp eq %struct.unionfs_mount* %158, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %157
  %161 = load %struct.unionfs_mount*, %struct.unionfs_mount** %8, align 8
  %162 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @UNIONFS_WHITE_ALWAYS, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %160
  %167 = load %struct.vnode*, %struct.vnode** %11, align 8
  %168 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %169 = icmp ne %struct.vnode* %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166, %160, %157
  %171 = load i32, i32* @DOWHITEOUT, align 4
  %172 = load %struct.componentname*, %struct.componentname** %13, align 8
  %173 = getelementptr inbounds %struct.componentname, %struct.componentname* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %166
  %177 = load %struct.vnode*, %struct.vnode** %9, align 8
  %178 = load %struct.vnode*, %struct.vnode** %10, align 8
  %179 = load %struct.componentname*, %struct.componentname** %13, align 8
  %180 = call i32 @VOP_REMOVE(%struct.vnode* %177, %struct.vnode* %178, %struct.componentname* %179)
  store i32 %180, i32* %4, align 4
  br label %192

181:                                              ; preds = %153
  %182 = load %struct.vnode*, %struct.vnode** %11, align 8
  %183 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %184 = icmp ne %struct.vnode* %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.vnode*, %struct.vnode** %9, align 8
  %187 = load %struct.componentname*, %struct.componentname** %13, align 8
  %188 = load %struct.thread*, %struct.thread** %15, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @unionfs_mkwhiteout(%struct.vnode* %186, %struct.componentname* %187, %struct.thread* %188, i8* %189)
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %185, %181
  br label %192

192:                                              ; preds = %191, %176
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %192, %151, %73, %46
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_relookup(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.componentname*, %struct.thread*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i32) #1

declare dso_local i32 @VOP_REMOVE(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @unionfs_mkwhiteout(%struct.vnode*, %struct.componentname*, %struct.thread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
