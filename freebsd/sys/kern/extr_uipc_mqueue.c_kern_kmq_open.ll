; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_kern_kmq_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_kern_kmq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.thread = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.mq_attr = type { i64, i64 }
%struct.mqfs_node = type { i32, i32, i32, %struct.mqueue* }
%struct.mqueue = type { i32 }
%struct.file = type { i32 }

@MQFS_NAMELEN = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@maxmsg = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@maxmsgsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@mqfs_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@DTYPE_MQUEUE = common dso_local global i32 0, align 4
@mqueueops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, i32, %struct.mq_attr*)* @kern_kmq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_kmq_open(%struct.thread* %0, i8* %1, i32 %2, i32 %3, %struct.mq_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mq_attr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mqfs_node*, align 8
  %15 = alloca %struct.filedesc*, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca %struct.mqueue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mq_attr* %4, %struct.mq_attr** %11, align 8
  %24 = load i32, i32* @MQFS_NAMELEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @AUDIT_ARG_FFLAGS(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @AUDIT_ARG_MODE(i32 %31)
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.filedesc*, %struct.filedesc** %36, align 8
  store %struct.filedesc* %37, %struct.filedesc** %15, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.filedesc*, %struct.filedesc** %15, align 8
  %40 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = load i32, i32* @ALLPERMS, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @S_ISTXT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %21, align 4
  store %struct.mqueue* null, %struct.mqueue** %17, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @O_CREAT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %5
  %54 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %55 = icmp ne %struct.mq_attr* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %58 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %63 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @maxmsg, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %56
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

69:                                               ; preds = %61
  %70 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %71 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %76 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @maxmsgsize, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %69
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %53, %5
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @MQFS_NAMELEN, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @copyinstr(i8* %84, i8* %28, i32 %86, i32* null)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %19, align 4
  store i32 %91, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

92:                                               ; preds = %83
  %93 = call i32 @strlen(i8* %28)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, i8* %28, i64 0
  %98 = load i8, i8* %97, align 16
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 47
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, i8* %28, i64 1
  %103 = call i32* @strchr(i8* %102, i8 signext 47)
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %96, %92
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

107:                                              ; preds = %101
  %108 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %107
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

115:                                              ; preds = %110
  %116 = call i32 @AUDIT_ARG_UPATH1_CANON(i8* %28)
  %117 = load %struct.thread*, %struct.thread** %7, align 8
  %118 = load i32, i32* @O_CLOEXEC, align 4
  %119 = call i32 @falloc(%struct.thread* %117, %struct.file** %16, i32* %18, i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %19, align 4
  store i32 %123, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

124:                                              ; preds = %115
  %125 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mqfs_data, i32 0, i32 0))
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mqfs_data, i32 0, i32 1), align 4
  %127 = getelementptr inbounds i8, i8* %28, i64 1
  %128 = load i32, i32* %20, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load %struct.thread*, %struct.thread** %7, align 8
  %131 = getelementptr inbounds %struct.thread, %struct.thread* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call %struct.mqfs_node* @mqfs_search(i32 %126, i8* %127, i32 %129, i32 %132)
  store %struct.mqfs_node* %133, %struct.mqfs_node** %14, align 8
  %134 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %135 = icmp eq %struct.mqfs_node* %134, null
  br i1 %135, label %136, label %176

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @O_CREAT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @ENOENT, align 4
  store i32 %142, i32* %19, align 4
  br label %168

143:                                              ; preds = %136
  %144 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %145 = call %struct.mqueue* @mqueue_alloc(%struct.mq_attr* %144)
  store %struct.mqueue* %145, %struct.mqueue** %17, align 8
  %146 = load %struct.mqueue*, %struct.mqueue** %17, align 8
  %147 = icmp eq %struct.mqueue* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @ENFILE, align 4
  store i32 %149, i32* %19, align 4
  br label %167

150:                                              ; preds = %143
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mqfs_data, i32 0, i32 1), align 4
  %152 = getelementptr inbounds i8, i8* %28, i64 1
  %153 = load i32, i32* %20, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.thread*, %struct.thread** %7, align 8
  %156 = getelementptr inbounds %struct.thread, %struct.thread* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %21, align 4
  %159 = call %struct.mqfs_node* @mqfs_create_file(i32 %151, i8* %152, i32 %154, i32 %157, i32 %158)
  store %struct.mqfs_node* %159, %struct.mqfs_node** %14, align 8
  %160 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %161 = icmp eq %struct.mqfs_node* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %150
  %163 = load i32, i32* @ENOSPC, align 4
  store i32 %163, i32* %19, align 4
  %164 = load %struct.mqueue*, %struct.mqueue** %17, align 8
  %165 = call i32 @mqueue_free(%struct.mqueue* %164)
  br label %166

166:                                              ; preds = %162, %150
  br label %167

167:                                              ; preds = %166, %148
  br label %168

168:                                              ; preds = %167, %141
  %169 = load i32, i32* %19, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load %struct.mqueue*, %struct.mqueue** %17, align 8
  %173 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %174 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %173, i32 0, i32 3
  store %struct.mqueue* %172, %struct.mqueue** %174, align 8
  br label %175

175:                                              ; preds = %171, %168
  br label %223

176:                                              ; preds = %124
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @O_CREAT, align 4
  %179 = load i32, i32* @O_EXCL, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %177, %180
  %182 = load i32, i32* @O_CREAT, align 4
  %183 = load i32, i32* @O_EXCL, align 4
  %184 = or i32 %182, %183
  %185 = icmp eq i32 %181, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i32, i32* @EEXIST, align 4
  store i32 %187, i32* %19, align 4
  br label %222

188:                                              ; preds = %176
  store i32 0, i32* %23, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @FREAD, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i32, i32* @VREAD, align 4
  %195 = load i32, i32* %23, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %23, align 4
  br label %197

197:                                              ; preds = %193, %188
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @FWRITE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* @VWRITE, align 4
  %204 = load i32, i32* %23, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %23, align 4
  br label %206

206:                                              ; preds = %202, %197
  %207 = load i32, i32* @VREG, align 4
  %208 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %209 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %212 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %215 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %23, align 4
  %218 = load %struct.thread*, %struct.thread** %7, align 8
  %219 = getelementptr inbounds %struct.thread, %struct.thread* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @vaccess(i32 %207, i32 %210, i32 %213, i32 %216, i32 %217, i32 %220, i32* null)
  store i32 %221, i32* %19, align 4
  br label %222

222:                                              ; preds = %206, %186
  br label %223

223:                                              ; preds = %222, %175
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %223
  %227 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mqfs_data, i32 0, i32 0))
  %228 = load %struct.thread*, %struct.thread** %7, align 8
  %229 = load %struct.file*, %struct.file** %16, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @fdclose(%struct.thread* %228, %struct.file* %229, i32 %230)
  %232 = load %struct.file*, %struct.file** %16, align 8
  %233 = load %struct.thread*, %struct.thread** %7, align 8
  %234 = call i32 @fdrop(%struct.file* %232, %struct.thread* %233)
  %235 = load i32, i32* %19, align 4
  store i32 %235, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

236:                                              ; preds = %223
  %237 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %238 = call i32 @mqnode_addref(%struct.mqfs_node* %237)
  %239 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mqfs_data, i32 0, i32 0))
  %240 = load %struct.file*, %struct.file** %16, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @FREAD, align 4
  %243 = load i32, i32* @FWRITE, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @O_NONBLOCK, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %241, %246
  %248 = load i32, i32* @DTYPE_MQUEUE, align 4
  %249 = load %struct.mqfs_node*, %struct.mqfs_node** %14, align 8
  %250 = call i32 @finit(%struct.file* %240, i32 %247, i32 %248, %struct.mqfs_node* %249, i32* @mqueueops)
  %251 = load i32, i32* %18, align 4
  %252 = load %struct.thread*, %struct.thread** %7, align 8
  %253 = getelementptr inbounds %struct.thread, %struct.thread* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  store i32 %251, i32* %255, align 4
  %256 = load %struct.file*, %struct.file** %16, align 8
  %257 = load %struct.thread*, %struct.thread** %7, align 8
  %258 = call i32 @fdrop(%struct.file* %256, %struct.thread* %257)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %259

259:                                              ; preds = %236, %226, %122, %113, %105, %90, %80, %67
  %260 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #2

declare dso_local i32 @AUDIT_ARG_MODE(i32) #2

declare dso_local i32 @copyinstr(i8*, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AUDIT_ARG_UPATH1_CANON(i8*) #2

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #2

declare dso_local i32 @sx_xlock(i32*) #2

declare dso_local %struct.mqfs_node* @mqfs_search(i32, i8*, i32, i32) #2

declare dso_local %struct.mqueue* @mqueue_alloc(%struct.mq_attr*) #2

declare dso_local %struct.mqfs_node* @mqfs_create_file(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @mqueue_free(%struct.mqueue*) #2

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @sx_xunlock(i32*) #2

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #2

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #2

declare dso_local i32 @mqnode_addref(%struct.mqfs_node*) #2

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.mqfs_node*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
