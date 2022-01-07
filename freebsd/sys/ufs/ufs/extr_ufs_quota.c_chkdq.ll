; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkdq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.dquot = type { i64, i64, i32, i64 }
%struct.inode = type { %struct.dquot**, i64, i64 }
%struct.vnode = type { i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NOCRED = common dso_local global %struct.ucred* null, align 8
@FORCE = common dso_local global i32 0, align 4
@VV_SYSTEM = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@NODQUOT = common dso_local global %struct.dquot* null, align 8
@PINOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"chkdq1\00", align 1
@DQ_BLKS = common dso_local global i32 0, align 4
@DQ_MOD = common dso_local global i32 0, align 4
@PRIV_VFS_EXCEEDQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"chkdq2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"chkdq3\00", align 1
@time_second = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"\0A%s: warning, %s disk quota exceeded\0A\00", align 1
@quotatypes = common dso_local global i32* null, align 8
@CHOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chkdq(%struct.inode* %0, i64 %1, %struct.ucred* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dquot*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.vnode* @ITOV(%struct.inode* %17)
  store %struct.vnode* %18, %struct.vnode** %12, align 8
  %19 = load %struct.ucred*, %struct.ucred** %8, align 8
  %20 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %21 = icmp ne %struct.ucred* %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FORCE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %4
  %28 = phi i1 [ true, %4 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.vnode*, %struct.vnode** %12, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VV_SYSTEM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %277

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  store i32 0, i32* %5, align 4
  br label %277

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %277

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %113

58:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %109, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @MAXQUOTAS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %59
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.dquot**, %struct.dquot*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.dquot*, %struct.dquot** %66, i64 %68
  %70 = load %struct.dquot*, %struct.dquot** %69, align 8
  store %struct.dquot* %70, %struct.dquot** %10, align 8
  %71 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %72 = icmp eq %struct.dquot* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %109

74:                                               ; preds = %63
  %75 = load %struct.dquot*, %struct.dquot** %10, align 8
  %76 = call i32 @DQI_LOCK(%struct.dquot* %75)
  %77 = load %struct.dquot*, %struct.dquot** %10, align 8
  %78 = load i64, i64* @PINOD, align 8
  %79 = add nsw i64 %78, 1
  %80 = call i32 @DQI_WAIT(%struct.dquot* %77, i64 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.dquot*, %struct.dquot** %10, align 8
  %82 = getelementptr inbounds %struct.dquot, %struct.dquot* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %83, %84
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.dquot*, %struct.dquot** %10, align 8
  %91 = getelementptr inbounds %struct.dquot, %struct.dquot* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %95

92:                                               ; preds = %74
  %93 = load %struct.dquot*, %struct.dquot** %10, align 8
  %94 = getelementptr inbounds %struct.dquot, %struct.dquot* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* @DQ_BLKS, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.dquot*, %struct.dquot** %10, align 8
  %99 = getelementptr inbounds %struct.dquot, %struct.dquot* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @DQ_MOD, align 4
  %103 = load %struct.dquot*, %struct.dquot** %10, align 8
  %104 = getelementptr inbounds %struct.dquot, %struct.dquot* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.dquot*, %struct.dquot** %10, align 8
  %108 = call i32 @DQI_UNLOCK(%struct.dquot* %107)
  br label %109

109:                                              ; preds = %95, %73
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %59

112:                                              ; preds = %59
  store i32 0, i32* %5, align 4
  br label %277

113:                                              ; preds = %55
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @FORCE, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.ucred*, %struct.ucred** %8, align 8
  %120 = load i32, i32* @PRIV_VFS_EXCEEDQUOTA, align 4
  %121 = call i64 @priv_check_cred(%struct.ucred* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 1, i32* %16, align 4
  br label %125

124:                                              ; preds = %118, %113
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %124, %123
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %273, %125
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @MAXQUOTAS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %276

130:                                              ; preds = %126
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load %struct.dquot**, %struct.dquot*** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.dquot*, %struct.dquot** %133, i64 %135
  %137 = load %struct.dquot*, %struct.dquot** %136, align 8
  store %struct.dquot* %137, %struct.dquot** %10, align 8
  %138 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %139 = icmp eq %struct.dquot* %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %273

141:                                              ; preds = %130
  store i32 0, i32* %15, align 4
  %142 = load %struct.dquot*, %struct.dquot** %10, align 8
  %143 = call i32 @DQI_LOCK(%struct.dquot* %142)
  %144 = load %struct.dquot*, %struct.dquot** %10, align 8
  %145 = load i64, i64* @PINOD, align 8
  %146 = add nsw i64 %145, 1
  %147 = call i32 @DQI_WAIT(%struct.dquot* %144, i64 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %214

150:                                              ; preds = %141
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.ucred*, %struct.ucred** %8, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @chkdqchg(%struct.inode* %151, i64 %152, %struct.ucred* %153, i32 %154, i32* %15)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %213

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %197, %175, %158
  %160 = load i32, i32* %13, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %211

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %13, align 4
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  %167 = load %struct.dquot**, %struct.dquot*** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.dquot*, %struct.dquot** %167, i64 %169
  %171 = load %struct.dquot*, %struct.dquot** %170, align 8
  store %struct.dquot* %171, %struct.dquot** %10, align 8
  %172 = load %struct.dquot*, %struct.dquot** %10, align 8
  %173 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %174 = icmp eq %struct.dquot* %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %159

176:                                              ; preds = %162
  %177 = load %struct.dquot*, %struct.dquot** %10, align 8
  %178 = call i32 @DQI_LOCK(%struct.dquot* %177)
  %179 = load %struct.dquot*, %struct.dquot** %10, align 8
  %180 = load i64, i64* @PINOD, align 8
  %181 = add nsw i64 %180, 1
  %182 = call i32 @DQI_WAIT(%struct.dquot* %179, i64 %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %183 = load %struct.dquot*, %struct.dquot** %10, align 8
  %184 = getelementptr inbounds %struct.dquot, %struct.dquot* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %7, align 8
  %187 = sub nsw i64 %185, %186
  store i64 %187, i64* %11, align 8
  %188 = load i64, i64* %11, align 8
  %189 = icmp sge i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %176
  %191 = load i64, i64* %11, align 8
  %192 = load %struct.dquot*, %struct.dquot** %10, align 8
  %193 = getelementptr inbounds %struct.dquot, %struct.dquot* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  br label %197

194:                                              ; preds = %176
  %195 = load %struct.dquot*, %struct.dquot** %10, align 8
  %196 = getelementptr inbounds %struct.dquot, %struct.dquot* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32, i32* @DQ_BLKS, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.dquot*, %struct.dquot** %10, align 8
  %201 = getelementptr inbounds %struct.dquot, %struct.dquot* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @DQ_MOD, align 4
  %205 = load %struct.dquot*, %struct.dquot** %10, align 8
  %206 = getelementptr inbounds %struct.dquot, %struct.dquot* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.dquot*, %struct.dquot** %10, align 8
  %210 = call i32 @DQI_UNLOCK(%struct.dquot* %209)
  br label %159

211:                                              ; preds = %159
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %5, align 4
  br label %277

213:                                              ; preds = %150
  br label %214

214:                                              ; preds = %213, %141
  %215 = load %struct.dquot*, %struct.dquot** %10, align 8
  %216 = getelementptr inbounds %struct.dquot, %struct.dquot* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %7, align 8
  %219 = add nsw i64 %217, %218
  %220 = load %struct.dquot*, %struct.dquot** %10, align 8
  %221 = getelementptr inbounds %struct.dquot, %struct.dquot* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp sge i64 %219, %222
  br i1 %223, label %224, label %245

224:                                              ; preds = %214
  %225 = load %struct.dquot*, %struct.dquot** %10, align 8
  %226 = getelementptr inbounds %struct.dquot, %struct.dquot* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.dquot*, %struct.dquot** %10, align 8
  %229 = getelementptr inbounds %struct.dquot, %struct.dquot* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp slt i64 %227, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %224
  %233 = load i64, i64* @time_second, align 8
  %234 = load %struct.inode*, %struct.inode** %6, align 8
  %235 = call %struct.TYPE_6__* @ITOUMP(%struct.inode* %234)
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %233, %241
  %243 = load %struct.dquot*, %struct.dquot** %10, align 8
  %244 = getelementptr inbounds %struct.dquot, %struct.dquot* %243, i32 0, i32 3
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %232, %224, %214
  %246 = load i64, i64* %7, align 8
  %247 = load %struct.dquot*, %struct.dquot** %10, align 8
  %248 = getelementptr inbounds %struct.dquot, %struct.dquot* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, %246
  store i64 %250, i64* %248, align 8
  %251 = load i32, i32* @DQ_MOD, align 4
  %252 = load %struct.dquot*, %struct.dquot** %10, align 8
  %253 = getelementptr inbounds %struct.dquot, %struct.dquot* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load %struct.dquot*, %struct.dquot** %10, align 8
  %257 = call i32 @DQI_UNLOCK(%struct.dquot* %256)
  %258 = load i32, i32* %15, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %245
  %261 = load %struct.inode*, %struct.inode** %6, align 8
  %262 = call %struct.TYPE_5__* @ITOVFS(%struct.inode* %261)
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** @quotatypes, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %265, i32 %270)
  br label %272

272:                                              ; preds = %260, %245
  br label %273

273:                                              ; preds = %272, %140
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %13, align 4
  br label %126

276:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %277

277:                                              ; preds = %276, %211, %112, %54, %50, %37
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @DQI_LOCK(%struct.dquot*) #1

declare dso_local i32 @DQI_WAIT(%struct.dquot*, i64, i8*) #1

declare dso_local i32 @DQI_UNLOCK(%struct.dquot*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @chkdqchg(%struct.inode*, i64, %struct.ucred*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @ITOUMP(%struct.inode*) #1

declare dso_local i32 @uprintf(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ITOVFS(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
