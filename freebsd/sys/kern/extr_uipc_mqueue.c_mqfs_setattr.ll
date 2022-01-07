; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_setattr_args = type { %struct.TYPE_7__*, %struct.vnode*, %struct.vattr* }
%struct.TYPE_7__ = type { i64 }
%struct.vnode = type { i32 }
%struct.vattr = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mqfs_node = type { i64, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__ }

@curthread = common dso_local global %struct.thread* null, align 8
@VNON = common dso_local global i64 0, align 8
@VNOVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@PRIV_MQ_ADMIN = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @mqfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca %struct.mqfs_node*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %7, align 8
  %13 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %13, i32 0, i32 2
  %15 = load %struct.vattr*, %struct.vattr** %14, align 8
  store %struct.vattr* %15, %struct.vattr** %5, align 8
  %16 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %16, i32 0, i32 1
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %6, align 8
  %19 = load %struct.vattr*, %struct.vattr** %5, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VNON, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %78, label %24

24:                                               ; preds = %1
  %25 = load %struct.vattr*, %struct.vattr** %5, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VNOVAL, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %78, label %30

30:                                               ; preds = %24
  %31 = load %struct.vattr*, %struct.vattr** %5, align 8
  %32 = getelementptr inbounds %struct.vattr, %struct.vattr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VNOVAL, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %78, label %36

36:                                               ; preds = %30
  %37 = load %struct.vattr*, %struct.vattr** %5, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VNOVAL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %78, label %42

42:                                               ; preds = %36
  %43 = load %struct.vattr*, %struct.vattr** %5, align 8
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VNOVAL, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = load %struct.vattr*, %struct.vattr** %5, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VNOVAL, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.vattr*, %struct.vattr** %5, align 8
  %56 = getelementptr inbounds %struct.vattr, %struct.vattr* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.vattr*, %struct.vattr** %5, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VNOVAL, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = load %struct.vattr*, %struct.vattr** %5, align 8
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %66, i32 0, i32 14
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @VNOVAL, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.vattr*, %struct.vattr** %5, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VNOVAL, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %65, %59, %54, %42, %36, %30, %24, %1
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %2, align 4
  br label %286

80:                                               ; preds = %72
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = call %struct.mqfs_node* @VTON(%struct.vnode* %81)
  store %struct.mqfs_node* %82, %struct.mqfs_node** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %83 = load %struct.vattr*, %struct.vattr** %5, align 8
  %84 = getelementptr inbounds %struct.vattr, %struct.vattr* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @VNOVAL, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %91 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %10, align 8
  br label %97

93:                                               ; preds = %80
  %94 = load %struct.vattr*, %struct.vattr** %5, align 8
  %95 = getelementptr inbounds %struct.vattr, %struct.vattr* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.vattr*, %struct.vattr** %5, align 8
  %99 = getelementptr inbounds %struct.vattr, %struct.vattr* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @VNOVAL, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %106 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %11, align 8
  br label %112

108:                                              ; preds = %97
  %109 = load %struct.vattr*, %struct.vattr** %5, align 8
  %110 = getelementptr inbounds %struct.vattr, %struct.vattr* %109, i32 0, i32 9
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %115 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %121 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %178

124:                                              ; preds = %118, %112
  %125 = load %struct.vnode*, %struct.vnode** %6, align 8
  %126 = load i32, i32* @VADMIN, align 4
  %127 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %128 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load %struct.thread*, %struct.thread** %7, align 8
  %131 = call i32 @VOP_ACCESS(%struct.vnode* %125, i32 %126, %struct.TYPE_7__* %129, %struct.thread* %130)
  store i32 %131, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %286

135:                                              ; preds = %124
  %136 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %137 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %142 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %164, label %145

145:                                              ; preds = %135
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %148 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %164, label %151

151:                                              ; preds = %145
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %154 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %160 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = call i32 @groupmember(i64 %158, %struct.TYPE_7__* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %157, %145, %135
  %165 = load %struct.thread*, %struct.thread** %7, align 8
  %166 = load i32, i32* @PRIV_MQ_ADMIN, align 4
  %167 = call i32 @priv_check(%struct.thread* %165, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %2, align 4
  br label %286

171:                                              ; preds = %164, %157, %151
  %172 = load i64, i64* %10, align 8
  %173 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %174 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %177 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  store i32 1, i32* %8, align 4
  br label %178

178:                                              ; preds = %171, %118
  %179 = load %struct.vattr*, %struct.vattr** %5, align 8
  %180 = getelementptr inbounds %struct.vattr, %struct.vattr* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @VNOVAL, align 4
  %183 = sext i32 %182 to i64
  %184 = icmp ne i64 %181, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %178
  %186 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %187 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %192 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %185
  %196 = load %struct.thread*, %struct.thread** %7, align 8
  %197 = load i32, i32* @PRIV_MQ_ADMIN, align 4
  %198 = call i32 @priv_check(%struct.thread* %196, i32 %197)
  store i32 %198, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %2, align 4
  br label %286

202:                                              ; preds = %195, %185
  %203 = load %struct.vattr*, %struct.vattr** %5, align 8
  %204 = getelementptr inbounds %struct.vattr, %struct.vattr* %203, i32 0, i32 10
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %207 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  store i32 1, i32* %8, align 4
  br label %208

208:                                              ; preds = %202, %178
  %209 = load %struct.vattr*, %struct.vattr** %5, align 8
  %210 = getelementptr inbounds %struct.vattr, %struct.vattr* %209, i32 0, i32 13
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @VNOVAL, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %222, label %215

215:                                              ; preds = %208
  %216 = load %struct.vattr*, %struct.vattr** %5, align 8
  %217 = getelementptr inbounds %struct.vattr, %struct.vattr* %216, i32 0, i32 12
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @VNOVAL, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %278

222:                                              ; preds = %215, %208
  %223 = load %struct.vnode*, %struct.vnode** %6, align 8
  %224 = load i32, i32* @VADMIN, align 4
  %225 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %226 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %225, i32 0, i32 0
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = load %struct.thread*, %struct.thread** %7, align 8
  %229 = call i32 @VOP_ACCESS(%struct.vnode* %223, i32 %224, %struct.TYPE_7__* %227, %struct.thread* %228)
  store i32 %229, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %222
  %232 = load %struct.vattr*, %struct.vattr** %5, align 8
  %233 = getelementptr inbounds %struct.vattr, %struct.vattr* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @VA_UTIMES_NULL, align 4
  %236 = and i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %231
  %239 = load %struct.vnode*, %struct.vnode** %6, align 8
  %240 = load i32, i32* @VWRITE, align 4
  %241 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %242 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %241, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load %struct.thread*, %struct.thread** %7, align 8
  %245 = call i32 @VOP_ACCESS(%struct.vnode* %239, i32 %240, %struct.TYPE_7__* %243, %struct.thread* %244)
  store i32 %245, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %238, %231
  %248 = load i32, i32* %9, align 4
  store i32 %248, i32* %2, align 4
  br label %286

249:                                              ; preds = %238, %222
  %250 = load %struct.vattr*, %struct.vattr** %5, align 8
  %251 = getelementptr inbounds %struct.vattr, %struct.vattr* %250, i32 0, i32 13
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @VNOVAL, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %249
  %257 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %258 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %257, i32 0, i32 5
  %259 = load %struct.vattr*, %struct.vattr** %5, align 8
  %260 = getelementptr inbounds %struct.vattr, %struct.vattr* %259, i32 0, i32 13
  %261 = bitcast %struct.TYPE_5__* %258 to i8*
  %262 = bitcast %struct.TYPE_5__* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 4, i1 false)
  br label %263

263:                                              ; preds = %256, %249
  %264 = load %struct.vattr*, %struct.vattr** %5, align 8
  %265 = getelementptr inbounds %struct.vattr, %struct.vattr* %264, i32 0, i32 12
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @VNOVAL, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %277

270:                                              ; preds = %263
  %271 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %272 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %271, i32 0, i32 4
  %273 = load %struct.vattr*, %struct.vattr** %5, align 8
  %274 = getelementptr inbounds %struct.vattr, %struct.vattr* %273, i32 0, i32 12
  %275 = bitcast %struct.TYPE_6__* %272 to i8*
  %276 = bitcast %struct.TYPE_6__* %274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %275, i8* align 4 %276, i64 4, i1 false)
  br label %277

277:                                              ; preds = %270, %263
  store i32 1, i32* %8, align 4
  br label %278

278:                                              ; preds = %277, %215
  %279 = load i32, i32* %8, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %283 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %282, i32 0, i32 3
  %284 = call i32 @vfs_timestamp(i32* %283)
  br label %285

285:                                              ; preds = %281, %278
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %285, %247, %200, %169, %133, %78
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local %struct.mqfs_node* @VTON(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.TYPE_7__*, %struct.thread*) #1

declare dso_local i32 @groupmember(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfs_timestamp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
