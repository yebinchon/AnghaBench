; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_nodeget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_nodeget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i32, %struct.unionfs_node*, i32 }
%struct.unionfs_node = type { i8*, %struct.vnode*, %struct.vnode*, %struct.vnode*, %struct.vnode*, i32, i32 }
%struct.mount = type { i32 }
%struct.componentname = type { i32, i8*, i32, i32 }
%struct.thread = type { i32 }
%struct.unionfs_mount = type { %struct.vnode*, %struct.vnode* }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"unionfs_nodeget: upper and lower is null\00", align 1
@ISLASTCN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_UNIONFSNODE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unionfs\00", align 1
@unionfs_vnodeops = common dso_local global i32 0, align 4
@NUNIONFSNODECACHE = common dso_local global i32 0, align 4
@M_UNIONFSHASH = common dso_local global i32 0, align 4
@M_UNIONFSPATH = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@LK_TYPE_MASK = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_nodeget(%struct.mount* %0, %struct.vnode* %1, %struct.vnode* %2, %struct.vnode* %3, %struct.vnode** %4, %struct.componentname* %5, %struct.thread* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.vnode**, align 8
  %14 = alloca %struct.componentname*, align 8
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.unionfs_mount*, align 8
  %17 = alloca %struct.unionfs_node*, align 8
  %18 = alloca %struct.vnode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.mount* %0, %struct.mount** %9, align 8
  store %struct.vnode* %1, %struct.vnode** %10, align 8
  store %struct.vnode* %2, %struct.vnode** %11, align 8
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.vnode** %4, %struct.vnode*** %13, align 8
  store %struct.componentname* %5, %struct.componentname** %14, align 8
  store %struct.thread* %6, %struct.thread** %15, align 8
  %23 = load %struct.mount*, %struct.mount** %9, align 8
  %24 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount* %23)
  store %struct.unionfs_mount* %24, %struct.unionfs_mount** %16, align 8
  %25 = load %struct.componentname*, %struct.componentname** %14, align 8
  %26 = icmp ne %struct.componentname* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load %struct.componentname*, %struct.componentname** %14, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %32

31:                                               ; preds = %7
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %20, align 4
  %34 = load %struct.componentname*, %struct.componentname** %14, align 8
  %35 = icmp ne %struct.componentname* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.componentname*, %struct.componentname** %14, align 8
  %38 = getelementptr inbounds %struct.componentname, %struct.componentname* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ null, %40 ]
  store i8* %42, i8** %22, align 8
  %43 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %44 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode* %43, %struct.vnode** %44, align 8
  %45 = load %struct.vnode*, %struct.vnode** %10, align 8
  %46 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %47 = icmp eq %struct.vnode* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.vnode*, %struct.vnode** %11, align 8
  %50 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %51 = icmp eq %struct.vnode* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48, %41
  %55 = load %struct.vnode*, %struct.vnode** %10, align 8
  %56 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %57 = icmp ne %struct.vnode* %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.vnode*, %struct.vnode** %10, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.vnode*, %struct.vnode** %11, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %61, %58 ], [ %65, %62 ]
  store i32 %67, i32* %21, align 4
  %68 = load %struct.componentname*, %struct.componentname** %14, align 8
  %69 = icmp ne %struct.componentname* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.componentname*, %struct.componentname** %14, align 8
  %72 = getelementptr inbounds %struct.componentname, %struct.componentname* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ISLASTCN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i8* null, i8** %22, align 8
  br label %78

78:                                               ; preds = %77, %70, %66
  %79 = load i8*, i8** %22, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load %struct.vnode*, %struct.vnode** %12, align 8
  %83 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %84 = icmp ne %struct.vnode* %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* @VDIR, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load %struct.vnode*, %struct.vnode** %10, align 8
  %91 = load %struct.vnode*, %struct.vnode** %11, align 8
  %92 = load %struct.vnode*, %struct.vnode** %12, align 8
  %93 = load i8*, i8** %22, align 8
  %94 = call %struct.vnode* @unionfs_get_cached_vnode(%struct.vnode* %90, %struct.vnode* %91, %struct.vnode* %92, i8* %93)
  store %struct.vnode* %94, %struct.vnode** %18, align 8
  %95 = load %struct.vnode*, %struct.vnode** %18, align 8
  %96 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %97 = icmp ne %struct.vnode* %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.vnode*, %struct.vnode** %18, align 8
  %100 = call i32 @vref(%struct.vnode* %99)
  %101 = load %struct.vnode*, %struct.vnode** %18, align 8
  %102 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode* %101, %struct.vnode** %102, align 8
  br label %347

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %85, %81, %78
  %105 = load %struct.vnode*, %struct.vnode** %10, align 8
  %106 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %107 = icmp eq %struct.vnode* %105, %106
  br i1 %107, label %124, label %108

108:                                              ; preds = %104
  %109 = load %struct.unionfs_mount*, %struct.unionfs_mount** %16, align 8
  %110 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %109, i32 0, i32 1
  %111 = load %struct.vnode*, %struct.vnode** %110, align 8
  %112 = load %struct.vnode*, %struct.vnode** %10, align 8
  %113 = icmp ne %struct.vnode* %111, %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %108
  %115 = load %struct.vnode*, %struct.vnode** %11, align 8
  %116 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %117 = icmp eq %struct.vnode* %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = load %struct.unionfs_mount*, %struct.unionfs_mount** %16, align 8
  %120 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %119, i32 0, i32 0
  %121 = load %struct.vnode*, %struct.vnode** %120, align 8
  %122 = load %struct.vnode*, %struct.vnode** %11, align 8
  %123 = icmp ne %struct.vnode* %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118, %114, %108, %104
  %125 = load %struct.vnode*, %struct.vnode** %12, align 8
  %126 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %127 = icmp eq %struct.vnode* %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %8, align 4
  br label %359

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i32, i32* @M_UNIONFSNODE, align 4
  %133 = load i32, i32* @M_WAITOK, align 4
  %134 = load i32, i32* @M_ZERO, align 4
  %135 = or i32 %133, %134
  %136 = call %struct.unionfs_node* @malloc(i32 48, i32 %132, i32 %135)
  store %struct.unionfs_node* %136, %struct.unionfs_node** %17, align 8
  %137 = load %struct.mount*, %struct.mount** %9, align 8
  %138 = call i32 @getnewvnode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.mount* %137, i32* @unionfs_vnodeops, %struct.vnode** %18)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %143 = load i32, i32* @M_UNIONFSNODE, align 4
  %144 = call i32 @free(%struct.unionfs_node* %142, i32 %143)
  %145 = load i32, i32* %19, align 4
  store i32 %145, i32* %8, align 4
  br label %359

146:                                              ; preds = %131
  %147 = load %struct.vnode*, %struct.vnode** %18, align 8
  %148 = load %struct.mount*, %struct.mount** %9, align 8
  %149 = call i32 @insmntque(%struct.vnode* %147, %struct.mount* %148)
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %154 = load i32, i32* @M_UNIONFSNODE, align 4
  %155 = call i32 @free(%struct.unionfs_node* %153, i32 %154)
  %156 = load i32, i32* %19, align 4
  store i32 %156, i32* %8, align 4
  br label %359

157:                                              ; preds = %146
  %158 = load %struct.vnode*, %struct.vnode** %12, align 8
  %159 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %160 = icmp ne %struct.vnode* %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %struct.vnode*, %struct.vnode** %12, align 8
  %163 = call i32 @vref(%struct.vnode* %162)
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.vnode*, %struct.vnode** %10, align 8
  %166 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %167 = icmp ne %struct.vnode* %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load %struct.vnode*, %struct.vnode** %10, align 8
  %170 = call i32 @vref(%struct.vnode* %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = load %struct.vnode*, %struct.vnode** %11, align 8
  %173 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %174 = icmp ne %struct.vnode* %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.vnode*, %struct.vnode** %11, align 8
  %177 = call i32 @vref(%struct.vnode* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* @VDIR, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load i32, i32* @NUNIONFSNODECACHE, align 4
  %184 = load i32, i32* @M_UNIONFSHASH, align 4
  %185 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %186 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %185, i32 0, i32 5
  %187 = call i32 @hashinit(i32 %183, i32 %184, i32* %186)
  %188 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %189 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %182, %178
  %191 = load %struct.vnode*, %struct.vnode** %18, align 8
  %192 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %193 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %192, i32 0, i32 4
  store %struct.vnode* %191, %struct.vnode** %193, align 8
  %194 = load %struct.vnode*, %struct.vnode** %10, align 8
  %195 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %196 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %195, i32 0, i32 3
  store %struct.vnode* %194, %struct.vnode** %196, align 8
  %197 = load %struct.vnode*, %struct.vnode** %11, align 8
  %198 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %199 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %198, i32 0, i32 2
  store %struct.vnode* %197, %struct.vnode** %199, align 8
  %200 = load %struct.vnode*, %struct.vnode** %12, align 8
  %201 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %202 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %201, i32 0, i32 1
  store %struct.vnode* %200, %struct.vnode** %202, align 8
  %203 = load %struct.vnode*, %struct.vnode** %10, align 8
  %204 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %205 = icmp ne %struct.vnode* %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %190
  %207 = load %struct.vnode*, %struct.vnode** %10, align 8
  %208 = getelementptr inbounds %struct.vnode, %struct.vnode* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.vnode*, %struct.vnode** %18, align 8
  %211 = getelementptr inbounds %struct.vnode, %struct.vnode* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 8
  br label %218

212:                                              ; preds = %190
  %213 = load %struct.vnode*, %struct.vnode** %11, align 8
  %214 = getelementptr inbounds %struct.vnode, %struct.vnode* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.vnode*, %struct.vnode** %18, align 8
  %217 = getelementptr inbounds %struct.vnode, %struct.vnode* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %212, %206
  %219 = load i8*, i8** %22, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %252

221:                                              ; preds = %218
  %222 = load %struct.componentname*, %struct.componentname** %14, align 8
  %223 = getelementptr inbounds %struct.componentname, %struct.componentname* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* @M_UNIONFSPATH, align 4
  %227 = load i32, i32* @M_WAITOK, align 4
  %228 = load i32, i32* @M_ZERO, align 4
  %229 = or i32 %227, %228
  %230 = call %struct.unionfs_node* @malloc(i32 %225, i32 %226, i32 %229)
  %231 = bitcast %struct.unionfs_node* %230 to i8*
  %232 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %233 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.componentname*, %struct.componentname** %14, align 8
  %235 = getelementptr inbounds %struct.componentname, %struct.componentname* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %238 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.componentname*, %struct.componentname** %14, align 8
  %241 = getelementptr inbounds %struct.componentname, %struct.componentname* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @bcopy(i8* %236, i8* %239, i32 %242)
  %244 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %245 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.componentname*, %struct.componentname** %14, align 8
  %248 = getelementptr inbounds %struct.componentname, %struct.componentname* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %246, i64 %250
  store i8 0, i8* %251, align 1
  br label %252

252:                                              ; preds = %221, %218
  %253 = load i32, i32* %21, align 4
  %254 = load %struct.vnode*, %struct.vnode** %18, align 8
  %255 = getelementptr inbounds %struct.vnode, %struct.vnode* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %257 = load %struct.vnode*, %struct.vnode** %18, align 8
  %258 = getelementptr inbounds %struct.vnode, %struct.vnode* %257, i32 0, i32 2
  store %struct.unionfs_node* %256, %struct.unionfs_node** %258, align 8
  %259 = load %struct.vnode*, %struct.vnode** %10, align 8
  %260 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %261 = icmp ne %struct.vnode* %259, %260
  br i1 %261, label %262, label %284

262:                                              ; preds = %252
  %263 = load %struct.unionfs_mount*, %struct.unionfs_mount** %16, align 8
  %264 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %263, i32 0, i32 1
  %265 = load %struct.vnode*, %struct.vnode** %264, align 8
  %266 = load %struct.vnode*, %struct.vnode** %10, align 8
  %267 = icmp eq %struct.vnode* %265, %266
  br i1 %267, label %268, label %284

268:                                              ; preds = %262
  %269 = load %struct.vnode*, %struct.vnode** %11, align 8
  %270 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %271 = icmp ne %struct.vnode* %269, %270
  br i1 %271, label %272, label %284

272:                                              ; preds = %268
  %273 = load %struct.unionfs_mount*, %struct.unionfs_mount** %16, align 8
  %274 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %273, i32 0, i32 0
  %275 = load %struct.vnode*, %struct.vnode** %274, align 8
  %276 = load %struct.vnode*, %struct.vnode** %11, align 8
  %277 = icmp eq %struct.vnode* %275, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load i32, i32* @VV_ROOT, align 4
  %280 = load %struct.vnode*, %struct.vnode** %18, align 8
  %281 = getelementptr inbounds %struct.vnode, %struct.vnode* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %278, %272, %268, %262, %252
  %285 = load i8*, i8** %22, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = load %struct.vnode*, %struct.vnode** %12, align 8
  %289 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %290 = icmp ne %struct.vnode* %288, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %287
  %292 = load i32, i32* %21, align 4
  %293 = load i32, i32* @VDIR, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %297 = load %struct.vnode*, %struct.vnode** %12, align 8
  %298 = load i8*, i8** %22, align 8
  %299 = call %struct.vnode* @unionfs_ins_cached_vnode(%struct.unionfs_node* %296, %struct.vnode* %297, i8* %298)
  %300 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode* %299, %struct.vnode** %300, align 8
  br label %301

301:                                              ; preds = %295, %291, %287, %284
  %302 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %303 = load %struct.vnode*, %struct.vnode** %302, align 8
  %304 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %305 = icmp ne %struct.vnode* %303, %304
  br i1 %305, label %306, label %343

306:                                              ; preds = %301
  %307 = load %struct.vnode*, %struct.vnode** %12, align 8
  %308 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %309 = icmp ne %struct.vnode* %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load %struct.vnode*, %struct.vnode** %12, align 8
  %312 = call i32 @vrele(%struct.vnode* %311)
  br label %313

313:                                              ; preds = %310, %306
  %314 = load %struct.vnode*, %struct.vnode** %10, align 8
  %315 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %316 = icmp ne %struct.vnode* %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load %struct.vnode*, %struct.vnode** %10, align 8
  %319 = call i32 @vrele(%struct.vnode* %318)
  br label %320

320:                                              ; preds = %317, %313
  %321 = load %struct.vnode*, %struct.vnode** %11, align 8
  %322 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %323 = icmp ne %struct.vnode* %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load %struct.vnode*, %struct.vnode** %11, align 8
  %326 = call i32 @vrele(%struct.vnode* %325)
  br label %327

327:                                              ; preds = %324, %320
  %328 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %329 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %330 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %329, i32 0, i32 3
  store %struct.vnode* %328, %struct.vnode** %330, align 8
  %331 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %332 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %333 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %332, i32 0, i32 2
  store %struct.vnode* %331, %struct.vnode** %333, align 8
  %334 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %335 = load %struct.unionfs_node*, %struct.unionfs_node** %17, align 8
  %336 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %335, i32 0, i32 1
  store %struct.vnode* %334, %struct.vnode** %336, align 8
  %337 = load %struct.vnode*, %struct.vnode** %18, align 8
  %338 = call i32 @vrele(%struct.vnode* %337)
  %339 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %340 = load %struct.vnode*, %struct.vnode** %339, align 8
  store %struct.vnode* %340, %struct.vnode** %18, align 8
  %341 = load %struct.vnode*, %struct.vnode** %18, align 8
  %342 = call i32 @vref(%struct.vnode* %341)
  br label %346

343:                                              ; preds = %301
  %344 = load %struct.vnode*, %struct.vnode** %18, align 8
  %345 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode* %344, %struct.vnode** %345, align 8
  br label %346

346:                                              ; preds = %343, %327
  br label %347

347:                                              ; preds = %346, %98
  %348 = load i32, i32* %20, align 4
  %349 = load i32, i32* @LK_TYPE_MASK, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.vnode*, %struct.vnode** %18, align 8
  %354 = load i32, i32* %20, align 4
  %355 = load i32, i32* @LK_RETRY, align 4
  %356 = or i32 %354, %355
  %357 = call i32 @vn_lock(%struct.vnode* %353, i32 %356)
  br label %358

358:                                              ; preds = %352, %347
  store i32 0, i32* %8, align 4
  br label %359

359:                                              ; preds = %358, %152, %141, %128
  %360 = load i32, i32* %8, align 4
  ret i32 %360
}

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.mount*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.vnode* @unionfs_get_cached_vnode(%struct.vnode*, %struct.vnode*, %struct.vnode*, i8*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @malloc(i32, i32, i32) #1

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, i32*, %struct.vnode**) #1

declare dso_local i32 @free(%struct.unionfs_node*, i32) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local %struct.vnode* @unionfs_ins_cached_vnode(%struct.unionfs_node*, %struct.vnode*, i8*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
