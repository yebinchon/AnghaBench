; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@xdr_void = common dso_local global i32 0, align 4
@xdr_nlm4_testargs = common dso_local global i32 0, align 4
@xdr_nlm4_testres = common dso_local global i32 0, align 4
@nlm4_test_4_svc = common dso_local global i32 0, align 4
@xdr_nlm4_lockargs = common dso_local global i32 0, align 4
@xdr_nlm4_res = common dso_local global i32 0, align 4
@nlm4_lock_4_svc = common dso_local global i32 0, align 4
@xdr_nlm4_cancargs = common dso_local global i32 0, align 4
@nlm4_cancel_4_svc = common dso_local global i32 0, align 4
@xdr_nlm4_unlockargs = common dso_local global i32 0, align 4
@nlm4_unlock_4_svc = common dso_local global i32 0, align 4
@nlm4_granted_4_svc = common dso_local global i32 0, align 4
@nlm4_test_msg_4_svc = common dso_local global i32 0, align 4
@nlm4_lock_msg_4_svc = common dso_local global i32 0, align 4
@nlm4_cancel_msg_4_svc = common dso_local global i32 0, align 4
@nlm4_unlock_msg_4_svc = common dso_local global i32 0, align 4
@nlm4_granted_msg_4_svc = common dso_local global i32 0, align 4
@nlm4_test_res_4_svc = common dso_local global i32 0, align 4
@nlm4_lock_res_4_svc = common dso_local global i32 0, align 4
@nlm4_cancel_res_4_svc = common dso_local global i32 0, align 4
@nlm4_unlock_res_4_svc = common dso_local global i32 0, align 4
@nlm4_granted_res_4_svc = common dso_local global i32 0, align 4
@xdr_nlm4_shareargs = common dso_local global i32 0, align 4
@xdr_nlm4_shareres = common dso_local global i32 0, align 4
@nlm4_share_4_svc = common dso_local global i32 0, align 4
@nlm4_unshare_4_svc = common dso_local global i32 0, align 4
@nlm4_nm_lock_4_svc = common dso_local global i32 0, align 4
@xdr_nlm4_notify = common dso_local global i32 0, align 4
@nlm4_free_all_4_svc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to free results\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_prog_4(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon.0, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64 (i8*, i8*, %struct.svc_req*)*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %134 [
    i32 128, label %14
    i32 135, label %20
    i32 140, label %26
    i32 147, label %32
    i32 132, label %38
    i32 143, label %44
    i32 134, label %50
    i32 139, label %56
    i32 146, label %62
    i32 131, label %68
    i32 142, label %74
    i32 133, label %80
    i32 138, label %86
    i32 145, label %92
    i32 130, label %98
    i32 141, label %104
    i32 136, label %110
    i32 129, label %116
    i32 137, label %122
    i32 144, label %128
  ]

14:                                               ; preds = %2
  %15 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %16 = load i32, i32* @xdr_void, align 4
  %17 = call i32 @svc_sendreply(%struct.svc_req* %15, i32 %16, i8* null)
  %18 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %19 = call i32 @svc_freereq(%struct.svc_req* %18)
  br label %190

20:                                               ; preds = %2
  %21 = load i32, i32* @xdr_nlm4_testargs, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @xdr_nlm4_testres, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @nlm4_test_4_svc, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %25, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

26:                                               ; preds = %2
  %27 = load i32, i32* @xdr_nlm4_lockargs, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @nlm4_lock_4_svc, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %31, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

32:                                               ; preds = %2
  %33 = load i32, i32* @xdr_nlm4_cancargs, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @nlm4_cancel_4_svc, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %37, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

38:                                               ; preds = %2
  %39 = load i32, i32* @xdr_nlm4_unlockargs, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @nlm4_unlock_4_svc, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %43, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

44:                                               ; preds = %2
  %45 = load i32, i32* @xdr_nlm4_testargs, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @nlm4_granted_4_svc, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %49, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

50:                                               ; preds = %2
  %51 = load i32, i32* @xdr_nlm4_testargs, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @xdr_void, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @nlm4_test_msg_4_svc, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %55, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

56:                                               ; preds = %2
  %57 = load i32, i32* @xdr_nlm4_lockargs, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @xdr_void, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @nlm4_lock_msg_4_svc, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %61, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

62:                                               ; preds = %2
  %63 = load i32, i32* @xdr_nlm4_cancargs, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @xdr_void, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @nlm4_cancel_msg_4_svc, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %67, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

68:                                               ; preds = %2
  %69 = load i32, i32* @xdr_nlm4_unlockargs, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @xdr_void, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @nlm4_unlock_msg_4_svc, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %73, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

74:                                               ; preds = %2
  %75 = load i32, i32* @xdr_nlm4_testargs, align 4
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @xdr_void, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @nlm4_granted_msg_4_svc, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %79, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

80:                                               ; preds = %2
  %81 = load i32, i32* @xdr_nlm4_testres, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @xdr_void, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @nlm4_test_res_4_svc, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %85, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

86:                                               ; preds = %2
  %87 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @xdr_void, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @nlm4_lock_res_4_svc, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %91, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

92:                                               ; preds = %2
  %93 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @xdr_void, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @nlm4_cancel_res_4_svc, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %97, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

98:                                               ; preds = %2
  %99 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @xdr_void, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @nlm4_unlock_res_4_svc, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %103, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

104:                                              ; preds = %2
  %105 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @xdr_void, align 4
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @nlm4_granted_res_4_svc, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %109, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

110:                                              ; preds = %2
  %111 = load i32, i32* @xdr_nlm4_shareargs, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @xdr_nlm4_shareres, align 4
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* @nlm4_share_4_svc, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %115, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

116:                                              ; preds = %2
  %117 = load i32, i32* @xdr_nlm4_shareargs, align 4
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* @xdr_nlm4_shareres, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @nlm4_unshare_4_svc, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %121, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

122:                                              ; preds = %2
  %123 = load i32, i32* @xdr_nlm4_lockargs, align 4
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @xdr_nlm4_res, align 4
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @nlm4_nm_lock_4_svc, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %127, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

128:                                              ; preds = %2
  %129 = load i32, i32* @xdr_nlm4_notify, align 4
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @xdr_void, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @nlm4_free_all_4_svc, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %133, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %139

134:                                              ; preds = %2
  %135 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %136 = call i32 @svcerr_noproc(%struct.svc_req* %135)
  %137 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %138 = call i32 @svc_freereq(%struct.svc_req* %137)
  br label %190

139:                                              ; preds = %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20
  %140 = bitcast %union.anon* %5 to i8*
  %141 = call i32 @memset(i8* %140, i32 0, i32 4)
  %142 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %143 = load i32, i32* %8, align 4
  %144 = ptrtoint %union.anon* %5 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @svc_getargs(%struct.svc_req* %142, i32 %143, i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %139
  %149 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %150 = call i32 @svcerr_decode(%struct.svc_req* %149)
  %151 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %152 = call i32 @svc_freereq(%struct.svc_req* %151)
  br label %190

153:                                              ; preds = %139
  %154 = load i64 (i8*, i8*, %struct.svc_req*)*, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  %155 = bitcast %union.anon* %5 to i8*
  %156 = bitcast %union.anon.0* %6 to i8*
  %157 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %158 = call i64 %154(i8* %155, i8* %156, %struct.svc_req* %157)
  store i64 %158, i64* %7, align 8
  %159 = load i64, i64* %7, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %153
  %162 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %163 = load i32, i32* %9, align 4
  %164 = bitcast %union.anon.0* %6 to i8*
  %165 = call i32 @svc_sendreply(%struct.svc_req* %162, i32 %163, i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %169 = call i32 @svcerr_systemerr(%struct.svc_req* %168)
  br label %170

170:                                              ; preds = %167, %161, %153
  %171 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %172 = load i32, i32* %8, align 4
  %173 = ptrtoint %union.anon* %5 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = call i32 @svc_freeargs(%struct.svc_req* %171, i32 %172, i8* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %170
  %180 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %181 = call i32 @svc_freereq(%struct.svc_req* %180)
  %182 = load i32*, i32** %4, align 8
  %183 = load i32, i32* %9, align 4
  %184 = ptrtoint %union.anon.0* %6 to i64
  %185 = call i32 @nlm_prog_4_freeresult(i32* %182, i32 %183, i64 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %179
  %188 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %179
  br label %190

190:                                              ; preds = %189, %148, %134, %14
  ret void
}

declare dso_local i32 @svc_sendreply(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @svc_freereq(%struct.svc_req*) #1

declare dso_local i32 @svcerr_noproc(%struct.svc_req*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @svc_getargs(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @svcerr_decode(%struct.svc_req*) #1

declare dso_local i32 @svcerr_systemerr(%struct.svc_req*) #1

declare dso_local i32 @svc_freeargs(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @nlm_prog_4_freeresult(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
