; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vcspec = type { i64, i64, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.smb_cred = type { %struct.ucred* }
%struct.ucred = type { i64, i64* }
%struct.smb_vc = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i64, i64, i64, i32*, i64, i32*, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SMBM_ANY_OWNER = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@SMBM_ANY_GROUP = common dso_local global i64 0, align 8
@M_SMBCONN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SMBL_VC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"smb_vc ilock\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"smb_vc\00", align 1
@smb_vc_free = common dso_local global i32 0, align 4
@smb_vc_gone = common dso_local global i32 0, align 4
@smb_vcnext = common dso_local global i32 0, align 4
@SMB_DEFRQTIMO = common dso_local global i32 0, align 4
@SMB_UID_UNKNOWN = common dso_local global i32 0, align 4
@SMBM_MASK = common dso_local global i32 0, align 4
@SMBV_PRIVATE = common dso_local global i32 0, align 4
@SMBV_SINGLESHARE = common dso_local global i32 0, align 4
@smb_tran_nbtcp_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vcstlock\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"NODOMAIN\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tolower\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"toupper\00", align 1
@ENCODING_UNICODE = common dso_local global i8* null, align 8
@SMB_UNICODE_NAME = common dso_local global i8* null, align 8
@smb_vclist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_vc_create(%struct.smb_vcspec* %0, %struct.smb_cred* %1, %struct.smb_vc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_vcspec*, align 8
  %6 = alloca %struct.smb_cred*, align 8
  %7 = alloca %struct.smb_vc**, align 8
  %8 = alloca %struct.smb_vc*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.smb_vcspec* %0, %struct.smb_vcspec** %5, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %6, align 8
  store %struct.smb_vc** %2, %struct.smb_vc*** %7, align 8
  %16 = load %struct.smb_cred*, %struct.smb_cred** %6, align 8
  %17 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %16, i32 0, i32 0
  %18 = load %struct.ucred*, %struct.ucred** %17, align 8
  store %struct.ucred* %18, %struct.ucred** %9, align 8
  %19 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %20 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %23 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.ucred*, %struct.ucred** %9, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %29 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = load %struct.ucred*, %struct.ucred** %9, align 8
  %32 = call i64 @smb_suser(%struct.ucred* %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @SMBM_ANY_OWNER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @EPERM, align 4
  store i32 %46, i32* %4, align 4
  br label %360

47:                                               ; preds = %42, %38, %3
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @SMBM_ANY_GROUP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.ucred*, %struct.ucred** %9, align 8
  %54 = call i32 @groupmember(i64 %52, %struct.ucred* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @EPERM, align 4
  store i32 %60, i32* %4, align 4
  br label %360

61:                                               ; preds = %56, %51, %47
  %62 = load i32, i32* @M_SMBCONN, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = call %struct.smb_vc* @smb_zmalloc(i32 208, i32 %62, i32 %63)
  store %struct.smb_vc* %64, %struct.smb_vc** %8, align 8
  %65 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %66 = call i32 @VCTOCP(%struct.smb_vc* %65)
  %67 = load i32, i32* @SMBL_VC, align 4
  %68 = call i32 @smb_co_init(i32 %66, i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @smb_vc_free, align 4
  %70 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %71 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %70, i32 0, i32 22
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @smb_vc_gone, align 4
  %74 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %75 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %74, i32 0, i32 22
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @smb_vcnext, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @smb_vcnext, align 4
  %79 = sext i32 %77 to i64
  %80 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %81 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %80, i32 0, i32 25
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @SMB_DEFRQTIMO, align 4
  %83 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %84 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %83, i32 0, i32 24
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @SMB_UID_UNKNOWN, align 4
  %86 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %87 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %86, i32 0, i32 23
  store i32 %85, i32* %87, align 4
  %88 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %89 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SMBM_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %94 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %96 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SMBV_PRIVATE, align 4
  %99 = load i32, i32* @SMBV_SINGLESHARE, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %103 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %102, i32 0, i32 22
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %106 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %105, i32 0, i32 21
  store i32* @smb_tran_nbtcp_desc, i32** %106, align 8
  %107 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %108 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %107, i32 0, i32 20
  store i64 0, i64* %108, align 8
  %109 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %110 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %109, i32 0, i32 19
  store i32* null, i32** %110, align 8
  %111 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %112 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %111, i32 0, i32 18
  store i64 0, i64* %112, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @SMBM_ANY_OWNER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %61
  %117 = load i64, i64* %12, align 8
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %116, %61
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @SMBM_ANY_GROUP, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.ucred*, %struct.ucred** %9, align 8
  %124 = getelementptr inbounds %struct.ucred, %struct.ucred* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %11, align 8
  br label %128

128:                                              ; preds = %122, %118
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %131 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %130, i32 0, i32 17
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %134 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %133, i32 0, i32 16
  store i64 %132, i64* %134, align 8
  %135 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %136 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %135, i32 0, i32 15
  %137 = call i32 @smb_sl_init(i32* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @ENOMEM, align 4
  store i32 %138, i32* %14, align 4
  %139 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %140 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @M_WAITOK, align 4
  %143 = call i8* @sodupsockaddr(i32 %141, i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %146 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %145, i32 0, i32 14
  store i32* %144, i32** %146, align 8
  %147 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %148 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %147, i32 0, i32 14
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %128
  br label %355

152:                                              ; preds = %128
  %153 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %154 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = call i8* @sodupsockaddr(i32 %155, i32 %156)
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %160 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %159, i32 0, i32 13
  store i32* %158, i32** %160, align 8
  %161 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %162 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %161, i32 0, i32 13
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %355

166:                                              ; preds = %152
  %167 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %168 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @smb_strdup(i8* %169)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %173 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %172, i32 0, i32 12
  store i32* %171, i32** %173, align 8
  %174 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %175 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %174, i32 0, i32 12
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  br label %355

179:                                              ; preds = %166
  %180 = load i8*, i8** %13, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load i8*, i8** %13, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i8*, i8** %13, align 8
  br label %191

190:                                              ; preds = %182, %179
  br label %191

191:                                              ; preds = %190, %188
  %192 = phi i8* [ %189, %188 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %190 ]
  %193 = call i8* @smb_strdup(i8* %192)
  %194 = bitcast i8* %193 to i32*
  %195 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %196 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %195, i32 0, i32 11
  store i32* %194, i32** %196, align 8
  %197 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %198 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %197, i32 0, i32 11
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  br label %355

202:                                              ; preds = %191
  %203 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %204 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %203, i32 0, i32 6
  %205 = load i8*, i8** %204, align 8
  %206 = call i8* @smb_strdup(i8* %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %209 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %208, i32 0, i32 10
  store i32* %207, i32** %209, align 8
  %210 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %211 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %210, i32 0, i32 10
  %212 = load i32*, i32** %211, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %355

215:                                              ; preds = %202
  %216 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %217 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %216, i32 0, i32 7
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @smb_strdup(i8* %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %222 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %221, i32 0, i32 9
  store i32* %220, i32** %222, align 8
  %223 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %224 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %223, i32 0, i32 9
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %215
  br label %355

228:                                              ; preds = %215
  %229 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %230 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %229, i32 0, i32 8
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %233 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %232, i32 0, i32 8
  %234 = call i64 @iconv_open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %231, i32** %233)
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %228
  br label %355

239:                                              ; preds = %228
  %240 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %241 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %240, i32 0, i32 8
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %244 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %243, i32 0, i32 7
  %245 = call i64 @iconv_open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %242, i32** %244)
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %239
  br label %355

250:                                              ; preds = %239
  %251 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %252 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %251, i32 0, i32 9
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = icmp ne i8 %255, 0
  br i1 %256, label %257, label %342

257:                                              ; preds = %250
  %258 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %259 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %258, i32 0, i32 9
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %262 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %261, i32 0, i32 8
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %265 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %264, i32 0, i32 5
  %266 = call i64 @iconv_open(i8* %260, i8* %263, i32** %265)
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %14, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %257
  br label %355

271:                                              ; preds = %257
  %272 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %273 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %272, i32 0, i32 8
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %276 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %275, i32 0, i32 9
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %279 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %278, i32 0, i32 3
  %280 = call i64 @iconv_open(i8* %274, i8* %277, i32** %279)
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* %14, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %271
  br label %355

285:                                              ; preds = %271
  %286 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %287 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %286, i32 0, i32 5
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %290 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %289, i32 0, i32 6
  store i32* %288, i32** %290, align 8
  %291 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %292 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %295 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %294, i32 0, i32 4
  store i32* %293, i32** %295, align 8
  %296 = load i8*, i8** @ENCODING_UNICODE, align 8
  %297 = load i8*, i8** @ENCODING_UNICODE, align 8
  %298 = load i8*, i8** @SMB_UNICODE_NAME, align 8
  %299 = call i32 @iconv_add(i8* %296, i8* %297, i8* %298)
  %300 = load i8*, i8** @ENCODING_UNICODE, align 8
  %301 = load i8*, i8** @SMB_UNICODE_NAME, align 8
  %302 = load i8*, i8** @ENCODING_UNICODE, align 8
  %303 = call i32 @iconv_add(i8* %300, i8* %301, i8* %302)
  %304 = load i8*, i8** @SMB_UNICODE_NAME, align 8
  %305 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %306 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %305, i32 0, i32 8
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %309 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %308, i32 0, i32 2
  %310 = call i64 @iconv_open(i8* %304, i8* %307, i32** %309)
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* %14, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %323, label %314

314:                                              ; preds = %285
  %315 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %316 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %315, i32 0, i32 8
  %317 = load i8*, i8** %316, align 8
  %318 = load i8*, i8** @SMB_UNICODE_NAME, align 8
  %319 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %320 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %319, i32 0, i32 1
  %321 = call i64 @iconv_open(i8* %317, i8* %318, i32** %320)
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %14, align 4
  br label %323

323:                                              ; preds = %314, %285
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %341

326:                                              ; preds = %323
  %327 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %328 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = icmp ne i32* %329, null
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  %332 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %333 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @iconv_close(i32* %334)
  br label %336

336:                                              ; preds = %331, %326
  %337 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %338 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %337, i32 0, i32 2
  store i32* null, i32** %338, align 8
  %339 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %340 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %339, i32 0, i32 1
  store i32* null, i32** %340, align 8
  br label %341

341:                                              ; preds = %336, %323
  br label %342

342:                                              ; preds = %341, %250
  %343 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %344 = call i64 @smb_iod_create(%struct.smb_vc* %343)
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %14, align 4
  %346 = load i32, i32* %14, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  br label %355

349:                                              ; preds = %342
  %350 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %351 = load %struct.smb_vc**, %struct.smb_vc*** %7, align 8
  store %struct.smb_vc* %350, %struct.smb_vc** %351, align 8
  %352 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %353 = call i32 @VCTOCP(%struct.smb_vc* %352)
  %354 = call i32 @smb_co_addchild(i32* @smb_vclist, i32 %353)
  store i32 0, i32* %4, align 4
  br label %360

355:                                              ; preds = %348, %284, %270, %249, %238, %227, %214, %201, %178, %165, %151
  %356 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %357 = load %struct.smb_cred*, %struct.smb_cred** %6, align 8
  %358 = call i32 @smb_vc_put(%struct.smb_vc* %356, %struct.smb_cred* %357)
  %359 = load i32, i32* %14, align 4
  store i32 %359, i32* %4, align 4
  br label %360

360:                                              ; preds = %355, %349, %59, %45
  %361 = load i32, i32* %4, align 4
  ret i32 %361
}

declare dso_local i64 @smb_suser(%struct.ucred*) #1

declare dso_local i32 @groupmember(i64, %struct.ucred*) #1

declare dso_local %struct.smb_vc* @smb_zmalloc(i32, i32, i32) #1

declare dso_local i32 @smb_co_init(i32, i32, i8*, i8*) #1

declare dso_local i32 @VCTOCP(%struct.smb_vc*) #1

declare dso_local i32 @smb_sl_init(i32*, i8*) #1

declare dso_local i8* @sodupsockaddr(i32, i32) #1

declare dso_local i8* @smb_strdup(i8*) #1

declare dso_local i64 @iconv_open(i8*, i8*, i32**) #1

declare dso_local i32 @iconv_add(i8*, i8*, i8*) #1

declare dso_local i32 @iconv_close(i32*) #1

declare dso_local i64 @smb_iod_create(%struct.smb_vc*) #1

declare dso_local i32 @smb_co_addchild(i32*, i32) #1

declare dso_local i32 @smb_vc_put(%struct.smb_vc*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
