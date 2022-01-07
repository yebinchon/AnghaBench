; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_t2_request_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_t2_request_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_t2rq = type { i32, i32, i32, i32, i32*, i32, %struct.mdchain, %struct.mdchain, i32, i32*, %struct.smb_rq*, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.smb_cred*, %struct.smb_vc* }
%struct.mdchain = type { %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.smb_rq = type { i32, i32, %struct.mbchain, %struct.smb_t2rq* }
%struct.mbchain = type { i32 }
%struct.TYPE_4__ = type { %struct.mbuf* }
%struct.TYPE_3__ = type { %struct.mbuf* }
%struct.smb_cred = type { i32 }
%struct.smb_vc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION2 = common dso_local global i32 0, align 4
@SMBR_MULTIPACKET = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@MB_MZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d:%d:%d\0A\00", align 1
@SMBT2_ALLSENT = common dso_local global i32 0, align 4
@SMBT2_SECONDARY = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION_SECONDARY = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION2_SECONDARY = common dso_local global i32 0, align 4
@SMBRQ_NOTSENT = common dso_local global i32 0, align 4
@SMBIOD_EV_NEWRQ = common dso_local global i32 0, align 4
@SMBR_RESTART = common dso_local global i32 0, align 4
@SMBT2_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_t2rq*)* @smb_t2_request_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_t2_request_int(%struct.smb_t2rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_t2rq*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  %6 = alloca %struct.mbchain*, align 8
  %7 = alloca %struct.mdchain*, align 8
  %8 = alloca %struct.mdchain, align 8
  %9 = alloca %struct.mdchain, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.smb_rq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.smb_t2rq* %0, %struct.smb_t2rq** %3, align 8
  %25 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %26 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %25, i32 0, i32 15
  %27 = load %struct.smb_vc*, %struct.smb_vc** %26, align 8
  store %struct.smb_vc* %27, %struct.smb_vc** %4, align 8
  %28 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %29 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %28, i32 0, i32 14
  %30 = load %struct.smb_cred*, %struct.smb_cred** %29, align 8
  store %struct.smb_cred* %30, %struct.smb_cred** %5, align 8
  %31 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %32 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %31, i32 0, i32 13
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  store %struct.mbuf* %34, %struct.mbuf** %10, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = icmp ne %struct.mbuf* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = call i32 @md_initm(%struct.mdchain* %8, %struct.mbuf* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = call i32 @m_fixhdr(%struct.mbuf* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 65535
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %603

46:                                               ; preds = %37
  br label %48

47:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %50 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.mbuf*, %struct.mbuf** %51, align 8
  store %struct.mbuf* %52, %struct.mbuf** %10, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %54 = icmp ne %struct.mbuf* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = call i32 @md_initm(%struct.mdchain* %9, %struct.mbuf* %56)
  %58 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %59 = call i32 @m_fixhdr(%struct.mbuf* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %60, 65535
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %2, align 4
  br label %603

64:                                               ; preds = %55
  br label %66

65:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %13, align 4
  %69 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %70 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  %72 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %73 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %76 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @SMB_COM_TRANSACTION, align 4
  br label %83

81:                                               ; preds = %66
  %82 = load i32, i32* @SMB_COM_TRANSACTION2, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %86 = call i32 @smb_rq_alloc(i32 %74, i32 %84, %struct.smb_cred* %85, %struct.smb_rq** %11)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %19, align 4
  store i32 %90, i32* %2, align 4
  br label %603

91:                                               ; preds = %83
  %92 = load i32, i32* @SMBR_MULTIPACKET, align 4
  %93 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %94 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %98 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %99 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %98, i32 0, i32 10
  store %struct.smb_rq* %97, %struct.smb_rq** %99, align 8
  %100 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %101 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %102 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %101, i32 0, i32 3
  store %struct.smb_t2rq* %100, %struct.smb_t2rq** %102, align 8
  %103 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %104 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %103, i32 0, i32 2
  store %struct.mbchain* %104, %struct.mbchain** %6, align 8
  %105 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %106 = call i32 @smb_rq_wstart(%struct.smb_rq* %105)
  %107 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @mb_put_uint16le(%struct.mbchain* %107, i32 %108)
  %110 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @mb_put_uint16le(%struct.mbchain* %110, i32 %111)
  %113 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %114 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %115 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mb_put_uint16le(%struct.mbchain* %113, i32 %116)
  %118 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %119 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %120 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mb_put_uint16le(%struct.mbchain* %118, i32 %121)
  %123 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %124 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %125 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mb_put_uint8(%struct.mbchain* %123, i32 %126)
  %128 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %129 = call i32 @mb_put_uint8(%struct.mbchain* %128, i32 0)
  %130 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %131 = call i32 @mb_put_uint16le(%struct.mbchain* %130, i32 0)
  %132 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %133 = call i32 @mb_put_uint32le(%struct.mbchain* %132, i32 0)
  %134 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %135 = call i32 @mb_put_uint16le(%struct.mbchain* %134, i32 0)
  %136 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %137 = call i32 @mb_fixhdr(%struct.mbchain* %136)
  store i32 %137, i32* %16, align 4
  %138 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %139 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %138, i32 0, i32 9
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %91
  %143 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %144 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @strlen(i32* %145)
  br label %148

147:                                              ; preds = %91
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i32 [ %146, %142 ], [ 0, %147 ]
  store i32 %149, i32* %24, align 4
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 10
  %152 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %153 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 2
  %156 = add nsw i32 %151, %155
  %157 = add nsw i32 %156, 2
  %158 = load i32, i32* %24, align 4
  %159 = add nsw i32 %157, %158
  %160 = add nsw i32 %159, 1
  %161 = call i32 @ALIGN4(i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %17, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %148
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %16, align 4
  %171 = sub nsw i32 %169, %170
  %172 = call i32 @min(i32 %168, i32 %171)
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %199

174:                                              ; preds = %148
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  br label %181

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32 [ %179, %178 ], [ 0, %180 ]
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %23, align 4
  %185 = add nsw i32 %183, %184
  %186 = call i32 @ALIGN4(i32 %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %16, align 4
  %190 = sub nsw i32 %188, %189
  %191 = call i32 @min(i32 %187, i32 %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %181
  %195 = load i32, i32* %16, align 4
  br label %197

196:                                              ; preds = %181
  br label %197

197:                                              ; preds = %196, %194
  %198 = phi i32 [ %195, %194 ], [ 0, %196 ]
  store i32 %198, i32* %20, align 4
  br label %199

199:                                              ; preds = %197, %167
  %200 = load i32, i32* %23, align 4
  %201 = load i32, i32* %13, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %15, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %15, align 4
  %206 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %207 = load i32, i32* %23, align 4
  %208 = call i32 @mb_put_uint16le(%struct.mbchain* %206, i32 %207)
  %209 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %210 = load i32, i32* %21, align 4
  %211 = call i32 @mb_put_uint16le(%struct.mbchain* %209, i32 %210)
  %212 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %213 = load i32, i32* %22, align 4
  %214 = call i32 @mb_put_uint16le(%struct.mbchain* %212, i32 %213)
  %215 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @mb_put_uint16le(%struct.mbchain* %215, i32 %216)
  %218 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %219 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %220 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @mb_put_uint8(%struct.mbchain* %218, i32 %221)
  %223 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %224 = call i32 @mb_put_uint8(%struct.mbchain* %223, i32 0)
  store i32 0, i32* %18, align 4
  br label %225

225:                                              ; preds = %241, %199
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %228 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %233 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %234 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @mb_put_uint16le(%struct.mbchain* %232, i32 %239)
  br label %241

241:                                              ; preds = %231
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %225

244:                                              ; preds = %225
  %245 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %246 = call i32 @smb_rq_wend(%struct.smb_rq* %245)
  %247 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %248 = call i32 @smb_rq_bstart(%struct.smb_rq* %247)
  %249 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %250 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %249, i32 0, i32 9
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %261

253:                                              ; preds = %244
  %254 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %255 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %256 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %255, i32 0, i32 9
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %24, align 4
  %259 = load i32, i32* @MB_MSYSTEM, align 4
  %260 = call i32 @mb_put_mem(%struct.mbchain* %254, i32* %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %253, %244
  %262 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %263 = call i32 @mb_put_uint8(%struct.mbchain* %262, i32 0)
  %264 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %265 = call i32 @mb_fixhdr(%struct.mbchain* %264)
  store i32 %265, i32* %16, align 4
  %266 = load i32, i32* %23, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %261
  %269 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @ALIGN4(i32 %270)
  %272 = load i32, i32* %16, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* @MB_MZERO, align 4
  %275 = call i32 @mb_put_mem(%struct.mbchain* %269, i32* null, i32 %273, i32 %274)
  %276 = load i32, i32* %23, align 4
  %277 = call i32 @md_get_mbuf(%struct.mdchain* %8, i32 %276, %struct.mbuf** %10)
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %278, i32 %279, i32 %280)
  %282 = load i32, i32* %19, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %268
  br label %576

285:                                              ; preds = %268
  %286 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %287 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %288 = call i32 @mb_put_mbuf(%struct.mbchain* %286, %struct.mbuf* %287)
  br label %289

289:                                              ; preds = %285, %261
  %290 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %291 = call i32 @mb_fixhdr(%struct.mbchain* %290)
  store i32 %291, i32* %16, align 4
  %292 = load i32, i32* %22, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %289
  %295 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %296 = load i32, i32* %16, align 4
  %297 = call i32 @ALIGN4(i32 %296)
  %298 = load i32, i32* %16, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load i32, i32* @MB_MZERO, align 4
  %301 = call i32 @mb_put_mem(%struct.mbchain* %295, i32* null, i32 %299, i32 %300)
  %302 = load i32, i32* %22, align 4
  %303 = call i32 @md_get_mbuf(%struct.mdchain* %9, i32 %302, %struct.mbuf** %10)
  store i32 %303, i32* %19, align 4
  %304 = load i32, i32* %19, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %294
  br label %576

307:                                              ; preds = %294
  %308 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %309 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %310 = call i32 @mb_put_mbuf(%struct.mbchain* %308, %struct.mbuf* %309)
  br label %311

311:                                              ; preds = %307, %289
  %312 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %313 = call i32 @smb_rq_bend(%struct.smb_rq* %312)
  %314 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %315 = call i32 @smb_rq_enqueue(%struct.smb_rq* %314)
  store i32 %315, i32* %19, align 4
  %316 = load i32, i32* %19, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %576

319:                                              ; preds = %311
  %320 = load i32, i32* %13, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load i32, i32* %15, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, i32* @SMBT2_ALLSENT, align 4
  %327 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %328 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %325, %322, %319
  %332 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %333 = call i32 @smb_t2_reply(%struct.smb_t2rq* %332)
  store i32 %333, i32* %19, align 4
  %334 = load i32, i32* %19, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  br label %573

337:                                              ; preds = %331
  br label %338

338:                                              ; preds = %532, %337
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* %15, align 4
  %343 = icmp ne i32 %342, 0
  br label %344

344:                                              ; preds = %341, %338
  %345 = phi i1 [ true, %338 ], [ %343, %341 ]
  br i1 %345, label %346, label %533

346:                                              ; preds = %344
  %347 = load i32, i32* @SMBT2_SECONDARY, align 4
  %348 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %349 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %353 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %354 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %353, i32 0, i32 9
  %355 = load i32*, i32** %354, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %359

357:                                              ; preds = %346
  %358 = load i32, i32* @SMB_COM_TRANSACTION_SECONDARY, align 4
  br label %361

359:                                              ; preds = %346
  %360 = load i32, i32* @SMB_COM_TRANSACTION2_SECONDARY, align 4
  br label %361

361:                                              ; preds = %359, %357
  %362 = phi i32 [ %358, %357 ], [ %360, %359 ]
  %363 = call i32 @smb_rq_new(%struct.smb_rq* %352, i32 %362)
  store i32 %363, i32* %19, align 4
  %364 = load i32, i32* %19, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  br label %573

367:                                              ; preds = %361
  %368 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %369 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %368, i32 0, i32 2
  store %struct.mbchain* %369, %struct.mbchain** %6, align 8
  %370 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %371 = call i32 @smb_rq_wstart(%struct.smb_rq* %370)
  %372 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %373 = load i32, i32* %12, align 4
  %374 = call i32 @mb_put_uint16le(%struct.mbchain* %372, i32 %373)
  %375 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %376 = load i32, i32* %14, align 4
  %377 = call i32 @mb_put_uint16le(%struct.mbchain* %375, i32 %376)
  %378 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %379 = call i32 @mb_fixhdr(%struct.mbchain* %378)
  store i32 %379, i32* %16, align 4
  %380 = load i32, i32* %16, align 4
  %381 = add nsw i32 %380, 12
  %382 = add nsw i32 %381, 2
  %383 = call i32 @ALIGN4(i32 %382)
  store i32 %383, i32* %16, align 4
  %384 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %385 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %384, i32 0, i32 9
  %386 = load i32*, i32** %385, align 8
  %387 = icmp eq i32* %386, null
  br i1 %387, label %388, label %391

388:                                              ; preds = %367
  %389 = load i32, i32* %16, align 4
  %390 = add nsw i32 %389, 2
  store i32 %390, i32* %16, align 4
  br label %391

391:                                              ; preds = %388, %367
  %392 = load i32, i32* %16, align 4
  %393 = load i32, i32* %13, align 4
  %394 = add nsw i32 %392, %393
  %395 = load i32, i32* %17, align 4
  %396 = icmp sgt i32 %394, %395
  br i1 %396, label %397, label %404

397:                                              ; preds = %391
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* %17, align 4
  %400 = load i32, i32* %16, align 4
  %401 = sub nsw i32 %399, %400
  %402 = call i32 @min(i32 %398, i32 %401)
  store i32 %402, i32* %23, align 4
  %403 = load i32, i32* %16, align 4
  store i32 %403, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %429

404:                                              ; preds = %391
  %405 = load i32, i32* %13, align 4
  store i32 %405, i32* %23, align 4
  %406 = load i32, i32* %23, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = load i32, i32* %16, align 4
  br label %411

410:                                              ; preds = %404
  br label %411

411:                                              ; preds = %410, %408
  %412 = phi i32 [ %409, %408 ], [ 0, %410 ]
  store i32 %412, i32* %21, align 4
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* %23, align 4
  %415 = add nsw i32 %413, %414
  %416 = call i32 @ALIGN4(i32 %415)
  store i32 %416, i32* %16, align 4
  %417 = load i32, i32* %15, align 4
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %16, align 4
  %420 = sub nsw i32 %418, %419
  %421 = call i32 @min(i32 %417, i32 %420)
  store i32 %421, i32* %22, align 4
  %422 = load i32, i32* %22, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %411
  %425 = load i32, i32* %16, align 4
  br label %427

426:                                              ; preds = %411
  br label %427

427:                                              ; preds = %426, %424
  %428 = phi i32 [ %425, %424 ], [ 0, %426 ]
  store i32 %428, i32* %20, align 4
  br label %429

429:                                              ; preds = %427, %397
  %430 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %431 = load i32, i32* %23, align 4
  %432 = call i32 @mb_put_uint16le(%struct.mbchain* %430, i32 %431)
  %433 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %434 = load i32, i32* %21, align 4
  %435 = call i32 @mb_put_uint16le(%struct.mbchain* %433, i32 %434)
  %436 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %437 = load i32, i32* %12, align 4
  %438 = load i32, i32* %13, align 4
  %439 = sub nsw i32 %437, %438
  %440 = call i32 @mb_put_uint16le(%struct.mbchain* %436, i32 %439)
  %441 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %442 = load i32, i32* %22, align 4
  %443 = call i32 @mb_put_uint16le(%struct.mbchain* %441, i32 %442)
  %444 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %445 = load i32, i32* %20, align 4
  %446 = call i32 @mb_put_uint16le(%struct.mbchain* %444, i32 %445)
  %447 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %448 = load i32, i32* %14, align 4
  %449 = load i32, i32* %15, align 4
  %450 = sub nsw i32 %448, %449
  %451 = call i32 @mb_put_uint16le(%struct.mbchain* %447, i32 %450)
  %452 = load i32, i32* %23, align 4
  %453 = load i32, i32* %13, align 4
  %454 = sub nsw i32 %453, %452
  store i32 %454, i32* %13, align 4
  %455 = load i32, i32* %22, align 4
  %456 = load i32, i32* %15, align 4
  %457 = sub nsw i32 %456, %455
  store i32 %457, i32* %15, align 4
  %458 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %459 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %458, i32 0, i32 9
  %460 = load i32*, i32** %459, align 8
  %461 = icmp eq i32* %460, null
  br i1 %461, label %462, label %468

462:                                              ; preds = %429
  %463 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %464 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %465 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @mb_put_uint16le(%struct.mbchain* %463, i32 %466)
  br label %468

468:                                              ; preds = %462, %429
  %469 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %470 = call i32 @smb_rq_wend(%struct.smb_rq* %469)
  %471 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %472 = call i32 @smb_rq_bstart(%struct.smb_rq* %471)
  %473 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %474 = call i32 @mb_put_uint8(%struct.mbchain* %473, i32 0)
  %475 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %476 = call i32 @mb_fixhdr(%struct.mbchain* %475)
  store i32 %476, i32* %16, align 4
  %477 = load i32, i32* %23, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %496

479:                                              ; preds = %468
  %480 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %481 = load i32, i32* %16, align 4
  %482 = call i32 @ALIGN4(i32 %481)
  %483 = load i32, i32* %16, align 4
  %484 = sub nsw i32 %482, %483
  %485 = load i32, i32* @MB_MZERO, align 4
  %486 = call i32 @mb_put_mem(%struct.mbchain* %480, i32* null, i32 %484, i32 %485)
  %487 = load i32, i32* %23, align 4
  %488 = call i32 @md_get_mbuf(%struct.mdchain* %8, i32 %487, %struct.mbuf** %10)
  store i32 %488, i32* %19, align 4
  %489 = load i32, i32* %19, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %479
  br label %573

492:                                              ; preds = %479
  %493 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %494 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %495 = call i32 @mb_put_mbuf(%struct.mbchain* %493, %struct.mbuf* %494)
  br label %496

496:                                              ; preds = %492, %468
  %497 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %498 = call i32 @mb_fixhdr(%struct.mbchain* %497)
  store i32 %498, i32* %16, align 4
  %499 = load i32, i32* %22, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %518

501:                                              ; preds = %496
  %502 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %503 = load i32, i32* %16, align 4
  %504 = call i32 @ALIGN4(i32 %503)
  %505 = load i32, i32* %16, align 4
  %506 = sub nsw i32 %504, %505
  %507 = load i32, i32* @MB_MZERO, align 4
  %508 = call i32 @mb_put_mem(%struct.mbchain* %502, i32* null, i32 %506, i32 %507)
  %509 = load i32, i32* %22, align 4
  %510 = call i32 @md_get_mbuf(%struct.mdchain* %9, i32 %509, %struct.mbuf** %10)
  store i32 %510, i32* %19, align 4
  %511 = load i32, i32* %19, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %501
  br label %573

514:                                              ; preds = %501
  %515 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %516 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %517 = call i32 @mb_put_mbuf(%struct.mbchain* %515, %struct.mbuf* %516)
  br label %518

518:                                              ; preds = %514, %496
  %519 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %520 = call i32 @smb_rq_bend(%struct.smb_rq* %519)
  %521 = load i32, i32* @SMBRQ_NOTSENT, align 4
  %522 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %523 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %522, i32 0, i32 1
  store i32 %521, i32* %523, align 4
  %524 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %525 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @SMBIOD_EV_NEWRQ, align 4
  %528 = call i32 @smb_iod_request(i32 %526, i32 %527, i32* null)
  store i32 %528, i32* %19, align 4
  %529 = load i32, i32* %19, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %518
  br label %573

532:                                              ; preds = %518
  br label %338

533:                                              ; preds = %344
  %534 = load i32, i32* @SMBT2_ALLSENT, align 4
  %535 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %536 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %535, i32 0, i32 8
  %537 = load i32, i32* %536, align 8
  %538 = or i32 %537, %534
  store i32 %538, i32* %536, align 8
  %539 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %540 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %539, i32 0, i32 6
  store %struct.mdchain* %540, %struct.mdchain** %7, align 8
  %541 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %542 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %541, i32 0, i32 0
  %543 = load %struct.mbuf*, %struct.mbuf** %542, align 8
  %544 = icmp ne %struct.mbuf* %543, null
  br i1 %544, label %545, label %555

545:                                              ; preds = %533
  %546 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %547 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %546, i32 0, i32 0
  %548 = load %struct.mbuf*, %struct.mbuf** %547, align 8
  %549 = call i32 @m_fixhdr(%struct.mbuf* %548)
  %550 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %551 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %552 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %551, i32 0, i32 0
  %553 = load %struct.mbuf*, %struct.mbuf** %552, align 8
  %554 = call i32 @md_initm(%struct.mdchain* %550, %struct.mbuf* %553)
  br label %555

555:                                              ; preds = %545, %533
  %556 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %557 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %556, i32 0, i32 7
  store %struct.mdchain* %557, %struct.mdchain** %7, align 8
  %558 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %559 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %558, i32 0, i32 0
  %560 = load %struct.mbuf*, %struct.mbuf** %559, align 8
  %561 = icmp ne %struct.mbuf* %560, null
  br i1 %561, label %562, label %572

562:                                              ; preds = %555
  %563 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %564 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %563, i32 0, i32 0
  %565 = load %struct.mbuf*, %struct.mbuf** %564, align 8
  %566 = call i32 @m_fixhdr(%struct.mbuf* %565)
  %567 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %568 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %569 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %568, i32 0, i32 0
  %570 = load %struct.mbuf*, %struct.mbuf** %569, align 8
  %571 = call i32 @md_initm(%struct.mdchain* %567, %struct.mbuf* %570)
  br label %572

572:                                              ; preds = %562, %555
  br label %573

573:                                              ; preds = %572, %531, %513, %491, %366, %336
  %574 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %575 = call i32 @smb_iod_removerq(%struct.smb_rq* %574)
  br label %576

576:                                              ; preds = %573, %318, %306, %284
  %577 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %578 = call i32 @smb_rq_done(%struct.smb_rq* %577)
  %579 = load i32, i32* %19, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %601

581:                                              ; preds = %576
  %582 = load %struct.smb_rq*, %struct.smb_rq** %11, align 8
  %583 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* @SMBR_RESTART, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %581
  %589 = load i32, i32* @SMBT2_RESTART, align 4
  %590 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %591 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %590, i32 0, i32 8
  %592 = load i32, i32* %591, align 8
  %593 = or i32 %592, %589
  store i32 %593, i32* %591, align 8
  br label %594

594:                                              ; preds = %588, %581
  %595 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %596 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %595, i32 0, i32 7
  %597 = call i32 @md_done(%struct.mdchain* %596)
  %598 = load %struct.smb_t2rq*, %struct.smb_t2rq** %3, align 8
  %599 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %598, i32 0, i32 6
  %600 = call i32 @md_done(%struct.mdchain* %599)
  br label %601

601:                                              ; preds = %594, %576
  %602 = load i32, i32* %19, align 4
  store i32 %602, i32* %2, align 4
  br label %603

603:                                              ; preds = %601, %89, %62, %44
  %604 = load i32, i32* %2, align 4
  ret i32 %604
}

declare dso_local i32 @md_initm(%struct.mdchain*, %struct.mbuf*) #1

declare dso_local i32 @m_fixhdr(%struct.mbuf*) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_fixhdr(%struct.mbchain*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @ALIGN4(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32*, i32, i32) #1

declare dso_local i32 @md_get_mbuf(%struct.mdchain*, i32, %struct.mbuf**) #1

declare dso_local i32 @SMBSDEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @mb_put_mbuf(%struct.mbchain*, %struct.mbuf*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_enqueue(%struct.smb_rq*) #1

declare dso_local i32 @smb_t2_reply(%struct.smb_t2rq*) #1

declare dso_local i32 @smb_rq_new(%struct.smb_rq*, i32) #1

declare dso_local i32 @smb_iod_request(i32, i32, i32*) #1

declare dso_local i32 @smb_iod_removerq(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

declare dso_local i32 @md_done(%struct.mdchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
