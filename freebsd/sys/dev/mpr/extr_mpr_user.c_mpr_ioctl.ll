; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.mpr_softc* }
%struct.mpr_softc = type { i32, i32 }
%struct.thread = type { i32 }
%struct.mpr_cfg_page_req = type { i32, i32 }
%struct.mpr_ext_cfg_page_req = type { i32, i32 }
%struct.mpr_usr_command = type { i32 }

@M_MPRUSER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mpr_porten\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Port Enable did not complete after Diag Reset msleep error %d.\0A\00", align 1
@MPR_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Hard Reset with Port Enable completed in %d seconds.\0A\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i8*, i32, %struct.thread*)* @mpr_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_ioctl(%struct.cdev* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.mpr_softc*, align 8
  %12 = alloca %struct.mpr_cfg_page_req*, align 8
  %13 = alloca %struct.mpr_ext_cfg_page_req*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i8* null, i8** %14, align 8
  %18 = load %struct.cdev*, %struct.cdev** %6, align 8
  %19 = getelementptr inbounds %struct.cdev, %struct.cdev* %18, i32 0, i32 0
  %20 = load %struct.mpr_softc*, %struct.mpr_softc** %19, align 8
  store %struct.mpr_softc* %20, %struct.mpr_softc** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.mpr_cfg_page_req*
  store %struct.mpr_cfg_page_req* %22, %struct.mpr_cfg_page_req** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.mpr_ext_cfg_page_req*
  store %struct.mpr_ext_cfg_page_req* %24, %struct.mpr_ext_cfg_page_req** %13, align 8
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %240 [
    i32 142, label %26
    i32 141, label %34
    i32 140, label %72
    i32 139, label %80
    i32 138, label %118
    i32 143, label %147
    i32 130, label %152
    i32 132, label %157
    i32 131, label %162
    i32 128, label %171
    i32 136, label %202
    i32 134, label %211
    i32 135, label %216
    i32 133, label %221
    i32 129, label %226
    i32 137, label %235
  ]

26:                                               ; preds = %5
  %27 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %28 = call i32 @mpr_lock(%struct.mpr_softc* %27)
  %29 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %30 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %31 = call i32 @mpr_user_read_cfg_header(%struct.mpr_softc* %29, %struct.mpr_cfg_page_req* %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %33 = call i32 @mpr_unlock(%struct.mpr_softc* %32)
  br label %242

34:                                               ; preds = %5
  %35 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %36 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @M_MPRUSER, align 4
  %39 = load i32, i32* @M_WAITOK, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @malloc(i32 %37, i32 %38, i32 %41)
  store i8* %42, i8** %14, align 8
  %43 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %44 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @copyin(i32 %45, i8* %46, i32 4)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %242

51:                                               ; preds = %34
  %52 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %53 = call i32 @mpr_lock(%struct.mpr_softc* %52)
  %54 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %55 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @mpr_user_read_cfg_page(%struct.mpr_softc* %54, %struct.mpr_cfg_page_req* %55, i8* %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %59 = call i32 @mpr_unlock(%struct.mpr_softc* %58)
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %242

63:                                               ; preds = %51
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %66 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %69 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @copyout(i8* %64, i32 %67, i32 %70)
  store i32 %71, i32* %15, align 4
  br label %242

72:                                               ; preds = %5
  %73 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %74 = call i32 @mpr_lock(%struct.mpr_softc* %73)
  %75 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %76 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %13, align 8
  %77 = call i32 @mpr_user_read_extcfg_header(%struct.mpr_softc* %75, %struct.mpr_ext_cfg_page_req* %76)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %79 = call i32 @mpr_unlock(%struct.mpr_softc* %78)
  br label %242

80:                                               ; preds = %5
  %81 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %13, align 8
  %82 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @M_MPRUSER, align 4
  %85 = load i32, i32* @M_WAITOK, align 4
  %86 = load i32, i32* @M_ZERO, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @malloc(i32 %83, i32 %84, i32 %87)
  store i8* %88, i8** %14, align 8
  %89 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %13, align 8
  %90 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @copyin(i32 %91, i8* %92, i32 4)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  br label %242

97:                                               ; preds = %80
  %98 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %99 = call i32 @mpr_lock(%struct.mpr_softc* %98)
  %100 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %101 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %13, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @mpr_user_read_extcfg_page(%struct.mpr_softc* %100, %struct.mpr_ext_cfg_page_req* %101, i8* %102)
  store i32 %103, i32* %15, align 4
  %104 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %105 = call i32 @mpr_unlock(%struct.mpr_softc* %104)
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %242

109:                                              ; preds = %97
  %110 = load i8*, i8** %14, align 8
  %111 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %13, align 8
  %112 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mpr_ext_cfg_page_req*, %struct.mpr_ext_cfg_page_req** %13, align 8
  %115 = getelementptr inbounds %struct.mpr_ext_cfg_page_req, %struct.mpr_ext_cfg_page_req* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @copyout(i8* %110, i32 %113, i32 %116)
  store i32 %117, i32* %15, align 4
  br label %242

118:                                              ; preds = %5
  %119 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %120 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @M_MPRUSER, align 4
  %123 = load i32, i32* @M_WAITOK, align 4
  %124 = load i32, i32* @M_ZERO, align 4
  %125 = or i32 %123, %124
  %126 = call i8* @malloc(i32 %121, i32 %122, i32 %125)
  store i8* %126, i8** %14, align 8
  %127 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %128 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %14, align 8
  %131 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %132 = getelementptr inbounds %struct.mpr_cfg_page_req, %struct.mpr_cfg_page_req* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @copyin(i32 %129, i8* %130, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %118
  br label %242

138:                                              ; preds = %118
  %139 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %140 = call i32 @mpr_lock(%struct.mpr_softc* %139)
  %141 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %142 = load %struct.mpr_cfg_page_req*, %struct.mpr_cfg_page_req** %12, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @mpr_user_write_cfg_page(%struct.mpr_softc* %141, %struct.mpr_cfg_page_req* %142, i8* %143)
  store i32 %144, i32* %15, align 4
  %145 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %146 = call i32 @mpr_unlock(%struct.mpr_softc* %145)
  br label %242

147:                                              ; preds = %5
  %148 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = bitcast i8* %149 to %struct.mpr_usr_command*
  %151 = call i32 @mpr_user_command(%struct.mpr_softc* %148, %struct.mpr_usr_command* %150)
  store i32 %151, i32* %15, align 4
  br label %242

152:                                              ; preds = %5
  %153 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = bitcast i8* %154 to i32*
  %156 = call i32 @mpr_user_pass_thru(%struct.mpr_softc* %153, i32* %155)
  store i32 %156, i32* %15, align 4
  br label %242

157:                                              ; preds = %5
  store i32 0, i32* %15, align 4
  %158 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = bitcast i8* %159 to i32*
  %161 = call i32 @mpr_user_get_adapter_data(%struct.mpr_softc* %158, i32* %160)
  br label %242

162:                                              ; preds = %5
  %163 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %164 = call i32 @mpr_lock(%struct.mpr_softc* %163)
  store i32 0, i32* %15, align 4
  %165 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = call i32 @mpr_user_read_pci_info(%struct.mpr_softc* %165, i32* %167)
  %169 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %170 = call i32 @mpr_unlock(%struct.mpr_softc* %169)
  br label %242

171:                                              ; preds = %5
  %172 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %173 = call i32 @mpr_lock(%struct.mpr_softc* %172)
  %174 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %175 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = load i64, i64* @time_uptime, align 8
  store i64 %176, i64* %17, align 8
  %177 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %178 = call i32 @mpr_reinit(%struct.mpr_softc* %177)
  store i32 %178, i32* %15, align 4
  %179 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %180 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %179, i32 0, i32 1
  %181 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %182 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %181, i32 0, i32 0
  %183 = load i32, i32* @PRIBIO, align 4
  %184 = load i32, i32* @hz, align 4
  %185 = mul nsw i32 300, %184
  %186 = call i32 @msleep(i32* %180, i32* %182, i32 %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %185)
  store i32 %186, i32* %16, align 4
  %187 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %188 = call i32 @mpr_unlock(%struct.mpr_softc* %187)
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %171
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  br label %201

194:                                              ; preds = %171
  %195 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %196 = load i32, i32* @MPR_USER, align 4
  %197 = load i64, i64* @time_uptime, align 8
  %198 = load i64, i64* %17, align 8
  %199 = sub nsw i64 %197, %198
  %200 = call i32 @mpr_dprint(%struct.mpr_softc* %195, i32 %196, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %199)
  br label %201

201:                                              ; preds = %194, %191
  br label %242

202:                                              ; preds = %5
  %203 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %204 = call i32 @mpr_lock(%struct.mpr_softc* %203)
  %205 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = bitcast i8* %206 to i32*
  %208 = call i32 @mpr_user_diag_action(%struct.mpr_softc* %205, i32* %207)
  store i32 %208, i32* %15, align 4
  %209 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %210 = call i32 @mpr_unlock(%struct.mpr_softc* %209)
  br label %242

211:                                              ; preds = %5
  store i32 0, i32* %15, align 4
  %212 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = bitcast i8* %213 to i32*
  %215 = call i32 @mpr_user_event_query(%struct.mpr_softc* %212, i32* %214)
  br label %242

216:                                              ; preds = %5
  store i32 0, i32* %15, align 4
  %217 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = bitcast i8* %218 to i32*
  %220 = call i32 @mpr_user_event_enable(%struct.mpr_softc* %217, i32* %219)
  br label %242

221:                                              ; preds = %5
  %222 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = bitcast i8* %223 to i32*
  %225 = call i32 @mpr_user_event_report(%struct.mpr_softc* %222, i32* %224)
  store i32 %225, i32* %15, align 4
  br label %242

226:                                              ; preds = %5
  %227 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %228 = call i32 @mpr_lock(%struct.mpr_softc* %227)
  %229 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = bitcast i8* %230 to i32*
  %232 = call i32 @mpr_user_reg_access(%struct.mpr_softc* %229, i32* %231)
  store i32 %232, i32* %15, align 4
  %233 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %234 = call i32 @mpr_unlock(%struct.mpr_softc* %233)
  br label %242

235:                                              ; preds = %5
  %236 = load %struct.mpr_softc*, %struct.mpr_softc** %11, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = bitcast i8* %237 to i32*
  %239 = call i32 @mpr_user_btdh(%struct.mpr_softc* %236, i32* %238)
  store i32 %239, i32* %15, align 4
  br label %242

240:                                              ; preds = %5
  %241 = load i32, i32* @ENOIOCTL, align 4
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %240, %235, %226, %221, %216, %211, %202, %201, %162, %157, %152, %147, %138, %137, %109, %108, %96, %72, %63, %62, %50, %26
  %243 = load i8*, i8** %14, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i8*, i8** %14, align 8
  %247 = load i32, i32* @M_MPRUSER, align 4
  %248 = call i32 @free(i8* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i32, i32* %15, align 4
  ret i32 %250
}

declare dso_local i32 @mpr_lock(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_user_read_cfg_header(%struct.mpr_softc*, %struct.mpr_cfg_page_req*) #1

declare dso_local i32 @mpr_unlock(%struct.mpr_softc*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32 @mpr_user_read_cfg_page(%struct.mpr_softc*, %struct.mpr_cfg_page_req*, i8*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @mpr_user_read_extcfg_header(%struct.mpr_softc*, %struct.mpr_ext_cfg_page_req*) #1

declare dso_local i32 @mpr_user_read_extcfg_page(%struct.mpr_softc*, %struct.mpr_ext_cfg_page_req*, i8*) #1

declare dso_local i32 @mpr_user_write_cfg_page(%struct.mpr_softc*, %struct.mpr_cfg_page_req*, i8*) #1

declare dso_local i32 @mpr_user_command(%struct.mpr_softc*, %struct.mpr_usr_command*) #1

declare dso_local i32 @mpr_user_pass_thru(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_get_adapter_data(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_read_pci_info(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_reinit(%struct.mpr_softc*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, i64) #1

declare dso_local i32 @mpr_user_diag_action(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_event_query(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_event_enable(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_event_report(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_reg_access(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @mpr_user_btdh(%struct.mpr_softc*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
