; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_treeconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_treeconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i8*, i32, i32, i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smb_vc = type { i32, i8*, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.smb_rq = type { i32, %struct.mbchain, %struct.smb_vc* }
%struct.mbchain = type { i32 }

@SMB_FLAGS2_UNICODE = common dso_local global i32 0, align 4
@SMB_TID_UNKNOWN = common dso_local global i32 0, align 4
@SMB_COM_TREE_CONNECT_ANDX = common dso_local global i32 0, align 4
@SMB_CS_NONE = common dso_local global i32 0, align 4
@SMB_SM_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMB_MAXPASSWORDLEN = common dso_local global i32 0, align 4
@M_SMBTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SMB_SM_ENCRYPT = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@SMBS_CONNECTED = common dso_local global i32 0, align 4
@SMBV_UNICODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_smb_treeconnect(%struct.smb_share* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_share*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  %6 = alloca %struct.smb_vc*, align 8
  %7 = alloca %struct.smb_rq, align 8
  %8 = alloca %struct.smb_rq*, align 8
  %9 = alloca %struct.mbchain*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %4, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %5, align 8
  store %struct.smb_rq* %7, %struct.smb_rq** %8, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %253, %2
  %18 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %19 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %18)
  %20 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SMB_FLAGS2_UNICODE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %27 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %26)
  store %struct.smb_vc* %27, %struct.smb_vc** %6, align 8
  %28 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %29 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %32 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %34 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %37 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @SMB_FLAGS2_UNICODE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %41 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %25, %17
  %45 = load i32, i32* @SMB_TID_UNKNOWN, align 4
  %46 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %47 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %49 = call i32 @SSTOCP(%struct.smb_share* %48)
  %50 = load i32, i32* @SMB_COM_TREE_CONNECT_ANDX, align 4
  %51 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %52 = call i32 @smb_rq_alloc(i32 %49, i32 %50, %struct.smb_cred* %51, %struct.smb_rq** %8)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %256

57:                                               ; preds = %44
  %58 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %59 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %58, i32 0, i32 2
  %60 = load %struct.smb_vc*, %struct.smb_vc** %59, align 8
  store %struct.smb_vc* %60, %struct.smb_vc** %6, align 8
  %61 = load i32, i32* @SMB_CS_NONE, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %63 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SMB_SM_USER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %122

70:                                               ; preds = %57
  %71 = load i32, i32* @SMB_MAXPASSWORDLEN, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* @M_SMBTEMP, align 4
  %74 = load i32, i32* @M_WAITOK, align 4
  %75 = call i8* @malloc(i32 %72, i32 %73, i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* @M_SMBTEMP, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call i8* @malloc(i32 24, i32 %76, i32 %77)
  store i8* %78, i8** %12, align 8
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %84 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %88 = call i32 @smb_share_getpass(%struct.smb_share* %87)
  %89 = call i32 @iconv_convstr(i32 %85, i8* %86, i32 %88)
  br label %100

90:                                               ; preds = %70
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %93 = call i32 @smb_share_getpass(%struct.smb_share* %92)
  %94 = load i32, i32* @SMB_MAXPASSWORDLEN, align 4
  %95 = call i32 @strncpy(i8* %91, i32 %93, i32 %94)
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* @SMB_MAXPASSWORDLEN, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %90, %82
  %101 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %102 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SMB_SM_ENCRYPT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  store i32 24, i32* %14, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %111 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @smb_encrypt(i8* %109, i32 %112, i8* %113)
  %115 = load i8*, i8** %12, align 8
  store i8* %115, i8** %10, align 8
  br label %121

116:                                              ; preds = %100
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load i8*, i8** %11, align 8
  store i8* %120, i8** %10, align 8
  br label %121

121:                                              ; preds = %116, %108
  br label %122

122:                                              ; preds = %121, %69
  %123 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %124 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %123, i32 0, i32 1
  store %struct.mbchain* %124, %struct.mbchain** %9, align 8
  %125 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %126 = call i32 @smb_rq_wstart(%struct.smb_rq* %125)
  %127 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %128 = call i32 @mb_put_uint8(%struct.mbchain* %127, i32 255)
  %129 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %130 = call i32 @mb_put_uint8(%struct.mbchain* %129, i32 0)
  %131 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %132 = call i32 @mb_put_uint16le(%struct.mbchain* %131, i32 0)
  %133 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %134 = call i32 @mb_put_uint16le(%struct.mbchain* %133, i32 0)
  %135 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @mb_put_uint16le(%struct.mbchain* %135, i32 %136)
  %138 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %139 = call i32 @smb_rq_wend(%struct.smb_rq* %138)
  %140 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %141 = call i32 @smb_rq_bstart(%struct.smb_rq* %140)
  %142 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @MB_MSYSTEM, align 4
  %146 = call i32 @mb_put_mem(%struct.mbchain* %142, i8* %143, i32 %144, i32 %145)
  %147 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %148 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @smb_put_dmem(%struct.mbchain* %147, %struct.smb_vc* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %149)
  %151 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %152 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %10, align 8
  %154 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %155 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @smb_put_dmem(%struct.mbchain* %154, %struct.smb_vc* %155, i8* %156, i32 %158, i32 %159)
  %161 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %162 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @smb_put_dmem(%struct.mbchain* %161, %struct.smb_vc* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %163)
  %165 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %166 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %10, align 8
  %168 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %169 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @smb_put_dstring(%struct.mbchain* %168, %struct.smb_vc* %169, i8* %170, i32 %171)
  %173 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %174 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @smb_share_typename(i32 %175)
  store i8* %176, i8** %10, align 8
  %177 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %178 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @smb_put_dstring(%struct.mbchain* %177, %struct.smb_vc* %178, i8* %179, i32 %180)
  %182 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %183 = call i32 @smb_rq_bend(%struct.smb_rq* %182)
  %184 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %185 = call i32 @smb_rq_simple(%struct.smb_rq* %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %122
  br label %231

191:                                              ; preds = %122
  %192 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %193 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %196 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  %197 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %198 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %201 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @SMBS_CONNECTED, align 4
  %203 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %204 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %208 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SMBV_UNICODE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %191
  %215 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %216 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %219 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %218, i32 0, i32 5
  store i32 %217, i32* %219, align 4
  %220 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %221 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %224 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @SMB_FLAGS2_UNICODE, align 4
  %226 = load %struct.smb_vc*, %struct.smb_vc** %6, align 8
  %227 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %214, %191
  br label %231

231:                                              ; preds = %230, %190
  %232 = load i8*, i8** %12, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i8*, i8** %12, align 8
  %236 = load i32, i32* @M_SMBTEMP, align 4
  %237 = call i32 @free(i8* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i8*, i8** %11, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i8*, i8** %11, align 8
  %243 = load i32, i32* @M_SMBTEMP, align 4
  %244 = call i32 @free(i8* %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %247 = call i32 @smb_rq_done(%struct.smb_rq* %246)
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* %16, align 4
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  br label %17

254:                                              ; preds = %250, %245
  %255 = load i32, i32* %13, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %254, %55
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local %struct.smb_vc* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @iconv_convstr(i32, i8*, i32) #1

declare dso_local i32 @smb_share_getpass(%struct.smb_share*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @smb_encrypt(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i8*, i32, i32) #1

declare dso_local i32 @smb_put_dmem(%struct.mbchain*, %struct.smb_vc*, i8*, i32, i32) #1

declare dso_local i32 @smb_put_dstring(%struct.mbchain*, %struct.smb_vc*, i8*, i32) #1

declare dso_local i8* @smb_share_typename(i32) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @SMBSDEBUG(i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
