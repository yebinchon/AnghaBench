; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_nsmb_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_nsmb_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.smb_dev = type { %struct.smb_share*, i8*, %struct.smb_vc* }
%struct.smb_share = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smb_vc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smbioc_flags = type { i8*, i32, i32 }
%struct.smbioc_rw = type { i32, i32, i32, i32 }
%struct.uio = type { i32, i32, %struct.thread*, i32, i32, i32, %struct.iovec* }
%struct.iovec = type { i32, i32 }
%struct.smbioc_ossn = type { i32 }
%struct.smbioc_oshare = type { i32 }
%struct.smbioc_rq = type { i32 }
%struct.smbioc_t2rq = type { i32 }
%struct.smbioc_lookup = type { i32 }

@M_NSMBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@SMBL_VC = common dso_local global i8* null, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SMBL_SHARE = common dso_local global i8* null, align 8
@SMBV_PERMANENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMBS_PERMANENT = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @nsmb_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsmb_dev_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.smb_dev*, align 8
  %13 = alloca %struct.smb_vc*, align 8
  %14 = alloca %struct.smb_share*, align 8
  %15 = alloca %struct.smb_cred*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.smbioc_flags*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.smbioc_rw*, align 8
  %20 = alloca %struct.uio, align 8
  %21 = alloca %struct.iovec, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %16, align 4
  %22 = bitcast %struct.smb_dev** %12 to i8**
  %23 = call i32 @devfs_get_cdevpriv(i8** %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %6, align 4
  br label %413

28:                                               ; preds = %5
  %29 = load i32, i32* @M_NSMBDEV, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.smb_cred* @malloc(i32 4, i32 %29, i32 %30)
  store %struct.smb_cred* %31, %struct.smb_cred** %15, align 8
  %32 = call i32 (...) @SMB_LOCK()
  %33 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %34 = load %struct.thread*, %struct.thread** %11, align 8
  %35 = call i32 @smb_makescred(%struct.smb_cred* %33, %struct.thread* %34, i32* null)
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %404 [
    i32 134, label %37
    i32 133, label %61
    i32 131, label %95
    i32 129, label %110
    i32 130, label %125
    i32 135, label %295
    i32 132, label %340
    i32 128, label %340
  ]

37:                                               ; preds = %28
  %38 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %39 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %38, i32 0, i32 2
  %40 = load %struct.smb_vc*, %struct.smb_vc** %39, align 8
  %41 = icmp ne %struct.smb_vc* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @EISCONN, align 4
  store i32 %43, i32* %16, align 4
  br label %407

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = inttoptr i64 %45 to %struct.smbioc_ossn*
  %47 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %48 = call i32 @smb_usr_opensession(%struct.smbioc_ossn* %46, %struct.smb_cred* %47, %struct.smb_vc** %13)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %406

52:                                               ; preds = %44
  %53 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %54 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %55 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %54, i32 0, i32 2
  store %struct.smb_vc* %53, %struct.smb_vc** %55, align 8
  %56 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %57 = call i32 @smb_vc_unlock(%struct.smb_vc* %56)
  %58 = load i8*, i8** @SMBL_VC, align 8
  %59 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %60 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %406

61:                                               ; preds = %28
  %62 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %63 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %62, i32 0, i32 0
  %64 = load %struct.smb_share*, %struct.smb_share** %63, align 8
  %65 = icmp ne %struct.smb_share* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @EISCONN, align 4
  store i32 %67, i32* %16, align 4
  br label %407

68:                                               ; preds = %61
  %69 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %70 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %69, i32 0, i32 2
  %71 = load %struct.smb_vc*, %struct.smb_vc** %70, align 8
  %72 = icmp eq %struct.smb_vc* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOTCONN, align 4
  store i32 %74, i32* %16, align 4
  br label %407

75:                                               ; preds = %68
  %76 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %77 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %76, i32 0, i32 2
  %78 = load %struct.smb_vc*, %struct.smb_vc** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = inttoptr i64 %79 to %struct.smbioc_oshare*
  %81 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %82 = call i32 @smb_usr_openshare(%struct.smb_vc* %78, %struct.smbioc_oshare* %80, %struct.smb_cred* %81, %struct.smb_share** %14)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %406

86:                                               ; preds = %75
  %87 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %88 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %89 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %88, i32 0, i32 0
  store %struct.smb_share* %87, %struct.smb_share** %89, align 8
  %90 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %91 = call i32 @smb_share_unlock(%struct.smb_share* %90)
  %92 = load i8*, i8** @SMBL_SHARE, align 8
  %93 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %94 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %406

95:                                               ; preds = %28
  %96 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %97 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %96, i32 0, i32 0
  %98 = load %struct.smb_share*, %struct.smb_share** %97, align 8
  %99 = icmp eq %struct.smb_share* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @ENOTCONN, align 4
  store i32 %101, i32* %16, align 4
  br label %407

102:                                              ; preds = %95
  %103 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %104 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %103, i32 0, i32 0
  %105 = load %struct.smb_share*, %struct.smb_share** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = inttoptr i64 %106 to %struct.smbioc_rq*
  %108 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %109 = call i32 @smb_usr_simplerequest(%struct.smb_share* %105, %struct.smbioc_rq* %107, %struct.smb_cred* %108)
  store i32 %109, i32* %16, align 4
  br label %406

110:                                              ; preds = %28
  %111 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %112 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %111, i32 0, i32 0
  %113 = load %struct.smb_share*, %struct.smb_share** %112, align 8
  %114 = icmp eq %struct.smb_share* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @ENOTCONN, align 4
  store i32 %116, i32* %16, align 4
  br label %407

117:                                              ; preds = %110
  %118 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %119 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %118, i32 0, i32 0
  %120 = load %struct.smb_share*, %struct.smb_share** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = inttoptr i64 %121 to %struct.smbioc_t2rq*
  %123 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %124 = call i32 @smb_usr_t2request(%struct.smb_share* %120, %struct.smbioc_t2rq* %122, %struct.smb_cred* %123)
  store i32 %124, i32* %16, align 4
  br label %406

125:                                              ; preds = %28
  %126 = load i64, i64* %9, align 8
  %127 = inttoptr i64 %126 to %struct.smbioc_flags*
  store %struct.smbioc_flags* %127, %struct.smbioc_flags** %17, align 8
  %128 = load %struct.smbioc_flags*, %struct.smbioc_flags** %17, align 8
  %129 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @SMBL_VC, align 8
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %133, label %209

133:                                              ; preds = %125
  %134 = load %struct.smbioc_flags*, %struct.smbioc_flags** %17, align 8
  %135 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SMBV_PERMANENT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %206

140:                                              ; preds = %133
  %141 = load %struct.smbioc_flags*, %struct.smbioc_flags** %17, align 8
  %142 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SMBV_PERMANENT, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %18, align 4
  %146 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %147 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %146, i32 0, i32 2
  %148 = load %struct.smb_vc*, %struct.smb_vc** %147, align 8
  store %struct.smb_vc* %148, %struct.smb_vc** %13, align 8
  %149 = icmp eq %struct.smb_vc* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = load i32, i32* @ENOTCONN, align 4
  store i32 %151, i32* %16, align 4
  br label %407

152:                                              ; preds = %140
  %153 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %154 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %155 = call i32 @smb_vc_get(%struct.smb_vc* %153, %struct.smb_cred* %154)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %406

159:                                              ; preds = %152
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  %163 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %164 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SMBV_PERMANENT, align 4
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %162
  %171 = load i32, i32* @SMBV_PERMANENT, align 4
  %172 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %173 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %178 = call i32 @smb_vc_ref(%struct.smb_vc* %177)
  br label %202

179:                                              ; preds = %162, %159
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %179
  %183 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %184 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SMBV_PERMANENT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %182
  %191 = load i32, i32* @SMBV_PERMANENT, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %194 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %192
  store i32 %197, i32* %195, align 4
  %198 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %199 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %200 = call i32 @smb_vc_rele(%struct.smb_vc* %198, %struct.smb_cred* %199)
  br label %201

201:                                              ; preds = %190, %182, %179
  br label %202

202:                                              ; preds = %201, %170
  %203 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %204 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %205 = call i32 @smb_vc_put(%struct.smb_vc* %203, %struct.smb_cred* %204)
  br label %208

206:                                              ; preds = %133
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* %16, align 4
  br label %208

208:                                              ; preds = %206, %202
  br label %294

209:                                              ; preds = %125
  %210 = load %struct.smbioc_flags*, %struct.smbioc_flags** %17, align 8
  %211 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** @SMBL_SHARE, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %291

215:                                              ; preds = %209
  %216 = load %struct.smbioc_flags*, %struct.smbioc_flags** %17, align 8
  %217 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @SMBS_PERMANENT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %288

222:                                              ; preds = %215
  %223 = load %struct.smbioc_flags*, %struct.smbioc_flags** %17, align 8
  %224 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @SMBS_PERMANENT, align 4
  %227 = and i32 %225, %226
  store i32 %227, i32* %18, align 4
  %228 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %229 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %228, i32 0, i32 0
  %230 = load %struct.smb_share*, %struct.smb_share** %229, align 8
  store %struct.smb_share* %230, %struct.smb_share** %14, align 8
  %231 = icmp eq %struct.smb_share* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = load i32, i32* @ENOTCONN, align 4
  store i32 %233, i32* %16, align 4
  br label %407

234:                                              ; preds = %222
  %235 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %236 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %237 = call i32 @smb_share_get(%struct.smb_share* %235, %struct.smb_cred* %236)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %406

241:                                              ; preds = %234
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %261

244:                                              ; preds = %241
  %245 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %246 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SMBS_PERMANENT, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %244
  %253 = load i32, i32* @SMBS_PERMANENT, align 4
  %254 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %255 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %253
  store i32 %258, i32* %256, align 4
  %259 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %260 = call i32 @smb_share_ref(%struct.smb_share* %259)
  br label %284

261:                                              ; preds = %244, %241
  %262 = load i32, i32* %18, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %283, label %264

264:                                              ; preds = %261
  %265 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %266 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @SMBS_PERMANENT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %264
  %273 = load i32, i32* @SMBS_PERMANENT, align 4
  %274 = xor i32 %273, -1
  %275 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %276 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, %274
  store i32 %279, i32* %277, align 4
  %280 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %281 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %282 = call i32 @smb_share_rele(%struct.smb_share* %280, %struct.smb_cred* %281)
  br label %283

283:                                              ; preds = %272, %264, %261
  br label %284

284:                                              ; preds = %283, %252
  %285 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %286 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %287 = call i32 @smb_share_put(%struct.smb_share* %285, %struct.smb_cred* %286)
  br label %290

288:                                              ; preds = %215
  %289 = load i32, i32* @EINVAL, align 4
  store i32 %289, i32* %16, align 4
  br label %290

290:                                              ; preds = %288, %284
  br label %406

291:                                              ; preds = %209
  %292 = load i32, i32* @EINVAL, align 4
  store i32 %292, i32* %16, align 4
  br label %293

293:                                              ; preds = %291
  br label %294

294:                                              ; preds = %293, %208
  br label %406

295:                                              ; preds = %28
  %296 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %297 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %296, i32 0, i32 2
  %298 = load %struct.smb_vc*, %struct.smb_vc** %297, align 8
  %299 = icmp ne %struct.smb_vc* %298, null
  br i1 %299, label %305, label %300

300:                                              ; preds = %295
  %301 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %302 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %301, i32 0, i32 0
  %303 = load %struct.smb_share*, %struct.smb_share** %302, align 8
  %304 = icmp ne %struct.smb_share* %303, null
  br i1 %304, label %305, label %307

305:                                              ; preds = %300, %295
  %306 = load i32, i32* @EISCONN, align 4
  store i32 %306, i32* %16, align 4
  br label %407

307:                                              ; preds = %300
  store %struct.smb_vc* null, %struct.smb_vc** %13, align 8
  store %struct.smb_share* null, %struct.smb_share** %14, align 8
  %308 = load i64, i64* %9, align 8
  %309 = inttoptr i64 %308 to %struct.smbioc_lookup*
  %310 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %311 = call i32 @smb_usr_lookup(%struct.smbioc_lookup* %309, %struct.smb_cred* %310, %struct.smb_vc** %13, %struct.smb_share** %14)
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* %16, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  br label %406

315:                                              ; preds = %307
  %316 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %317 = icmp ne %struct.smb_vc* %316, null
  br i1 %317, label %318, label %327

318:                                              ; preds = %315
  %319 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %320 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %321 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %320, i32 0, i32 2
  store %struct.smb_vc* %319, %struct.smb_vc** %321, align 8
  %322 = load %struct.smb_vc*, %struct.smb_vc** %13, align 8
  %323 = call i32 @smb_vc_unlock(%struct.smb_vc* %322)
  %324 = load i8*, i8** @SMBL_VC, align 8
  %325 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %326 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %325, i32 0, i32 1
  store i8* %324, i8** %326, align 8
  br label %327

327:                                              ; preds = %318, %315
  %328 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %329 = icmp ne %struct.smb_share* %328, null
  br i1 %329, label %330, label %339

330:                                              ; preds = %327
  %331 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %332 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %333 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %332, i32 0, i32 0
  store %struct.smb_share* %331, %struct.smb_share** %333, align 8
  %334 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %335 = call i32 @smb_share_unlock(%struct.smb_share* %334)
  %336 = load i8*, i8** @SMBL_SHARE, align 8
  %337 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %338 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %337, i32 0, i32 1
  store i8* %336, i8** %338, align 8
  br label %339

339:                                              ; preds = %330, %327
  br label %406

340:                                              ; preds = %28, %28
  %341 = load i64, i64* %9, align 8
  %342 = inttoptr i64 %341 to %struct.smbioc_rw*
  store %struct.smbioc_rw* %342, %struct.smbioc_rw** %19, align 8
  %343 = load %struct.smb_dev*, %struct.smb_dev** %12, align 8
  %344 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %343, i32 0, i32 0
  %345 = load %struct.smb_share*, %struct.smb_share** %344, align 8
  store %struct.smb_share* %345, %struct.smb_share** %14, align 8
  %346 = icmp eq %struct.smb_share* %345, null
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = load i32, i32* @ENOTCONN, align 4
  store i32 %348, i32* %16, align 4
  br label %407

349:                                              ; preds = %340
  %350 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %351 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 1
  store i32 %352, i32* %353, align 4
  %354 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %355 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  store i32 %356, i32* %357, align 4
  %358 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 6
  store %struct.iovec* %21, %struct.iovec** %358, align 8
  %359 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  store i32 1, i32* %359, align 8
  %360 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %361 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 5
  store i32 %362, i32* %363, align 8
  %364 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %365 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 1
  store i32 %366, i32* %367, align 4
  %368 = load i32, i32* @UIO_USERSPACE, align 4
  %369 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 4
  store i32 %368, i32* %369, align 4
  %370 = load i32, i32* %8, align 4
  %371 = icmp eq i32 %370, 132
  br i1 %371, label %372, label %374

372:                                              ; preds = %349
  %373 = load i32, i32* @UIO_READ, align 4
  br label %376

374:                                              ; preds = %349
  %375 = load i32, i32* @UIO_WRITE, align 4
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i32 [ %373, %372 ], [ %375, %374 ]
  %378 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 3
  store i32 %377, i32* %378, align 8
  %379 = load %struct.thread*, %struct.thread** %11, align 8
  %380 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 2
  store %struct.thread* %379, %struct.thread** %380, align 8
  %381 = load i32, i32* %8, align 4
  %382 = icmp eq i32 %381, 132
  br i1 %382, label %383, label %390

383:                                              ; preds = %376
  %384 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %385 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %386 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %389 = call i32 @smb_read(%struct.smb_share* %384, i32 %387, %struct.uio* %20, %struct.smb_cred* %388)
  store i32 %389, i32* %16, align 4
  br label %397

390:                                              ; preds = %376
  %391 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %392 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %393 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %396 = call i32 @smb_write(%struct.smb_share* %391, i32 %394, %struct.uio* %20, %struct.smb_cred* %395)
  store i32 %396, i32* %16, align 4
  br label %397

397:                                              ; preds = %390, %383
  %398 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.smbioc_rw*, %struct.smbioc_rw** %19, align 8
  %401 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %402, %399
  store i32 %403, i32* %401, align 4
  br label %406

404:                                              ; preds = %28
  %405 = load i32, i32* @ENODEV, align 4
  store i32 %405, i32* %16, align 4
  br label %406

406:                                              ; preds = %404, %397, %339, %314, %294, %290, %240, %158, %117, %102, %86, %85, %52, %51
  br label %407

407:                                              ; preds = %406, %347, %305, %232, %150, %115, %100, %73, %66, %42
  %408 = load %struct.smb_cred*, %struct.smb_cred** %15, align 8
  %409 = load i32, i32* @M_NSMBDEV, align 4
  %410 = call i32 @free(%struct.smb_cred* %408, i32 %409)
  %411 = call i32 (...) @SMB_UNLOCK()
  %412 = load i32, i32* %16, align 4
  store i32 %412, i32* %6, align 4
  br label %413

413:                                              ; preds = %407, %26
  %414 = load i32, i32* %6, align 4
  ret i32 %414
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local %struct.smb_cred* @malloc(i32, i32, i32) #1

declare dso_local i32 @SMB_LOCK(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, i32*) #1

declare dso_local i32 @smb_usr_opensession(%struct.smbioc_ossn*, %struct.smb_cred*, %struct.smb_vc**) #1

declare dso_local i32 @smb_vc_unlock(%struct.smb_vc*) #1

declare dso_local i32 @smb_usr_openshare(%struct.smb_vc*, %struct.smbioc_oshare*, %struct.smb_cred*, %struct.smb_share**) #1

declare dso_local i32 @smb_share_unlock(%struct.smb_share*) #1

declare dso_local i32 @smb_usr_simplerequest(%struct.smb_share*, %struct.smbioc_rq*, %struct.smb_cred*) #1

declare dso_local i32 @smb_usr_t2request(%struct.smb_share*, %struct.smbioc_t2rq*, %struct.smb_cred*) #1

declare dso_local i32 @smb_vc_get(%struct.smb_vc*, %struct.smb_cred*) #1

declare dso_local i32 @smb_vc_ref(%struct.smb_vc*) #1

declare dso_local i32 @smb_vc_rele(%struct.smb_vc*, %struct.smb_cred*) #1

declare dso_local i32 @smb_vc_put(%struct.smb_vc*, %struct.smb_cred*) #1

declare dso_local i32 @smb_share_get(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @smb_share_ref(%struct.smb_share*) #1

declare dso_local i32 @smb_share_rele(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @smb_share_put(%struct.smb_share*, %struct.smb_cred*) #1

declare dso_local i32 @smb_usr_lookup(%struct.smbioc_lookup*, %struct.smb_cred*, %struct.smb_vc**, %struct.smb_share**) #1

declare dso_local i32 @smb_read(%struct.smb_share*, i32, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @smb_write(%struct.smb_share*, i32, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @free(%struct.smb_cred*, i32) #1

declare dso_local i32 @SMB_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
