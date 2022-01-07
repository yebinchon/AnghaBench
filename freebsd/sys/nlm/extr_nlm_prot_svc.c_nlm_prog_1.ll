; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }
%union.anon = type { %struct.nlm_testargs }
%struct.nlm_testargs = type { i32 }
%union.anon.0 = type { i32 }

@xdr_void = common dso_local global i32 0, align 4
@xdr_nlm_testargs = common dso_local global i32 0, align 4
@xdr_nlm_testres = common dso_local global i32 0, align 4
@nlm_test_1_svc = common dso_local global i32 0, align 4
@xdr_nlm_lockargs = common dso_local global i32 0, align 4
@xdr_nlm_res = common dso_local global i32 0, align 4
@nlm_lock_1_svc = common dso_local global i32 0, align 4
@xdr_nlm_cancargs = common dso_local global i32 0, align 4
@nlm_cancel_1_svc = common dso_local global i32 0, align 4
@xdr_nlm_unlockargs = common dso_local global i32 0, align 4
@nlm_unlock_1_svc = common dso_local global i32 0, align 4
@nlm_granted_1_svc = common dso_local global i32 0, align 4
@nlm_test_msg_1_svc = common dso_local global i32 0, align 4
@nlm_lock_msg_1_svc = common dso_local global i32 0, align 4
@nlm_cancel_msg_1_svc = common dso_local global i32 0, align 4
@nlm_unlock_msg_1_svc = common dso_local global i32 0, align 4
@nlm_granted_msg_1_svc = common dso_local global i32 0, align 4
@nlm_test_res_1_svc = common dso_local global i32 0, align 4
@nlm_lock_res_1_svc = common dso_local global i32 0, align 4
@nlm_cancel_res_1_svc = common dso_local global i32 0, align 4
@nlm_unlock_res_1_svc = common dso_local global i32 0, align 4
@nlm_granted_res_1_svc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to free results\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_prog_1(%struct.svc_req* %0, i32* %1) #0 {
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
  switch i32 %13, label %110 [
    i32 128, label %14
    i32 134, label %20
    i32 137, label %26
    i32 143, label %32
    i32 131, label %38
    i32 140, label %44
    i32 133, label %50
    i32 136, label %56
    i32 142, label %62
    i32 130, label %68
    i32 139, label %74
    i32 132, label %80
    i32 135, label %86
    i32 141, label %92
    i32 129, label %98
    i32 138, label %104
  ]

14:                                               ; preds = %2
  %15 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %16 = load i32, i32* @xdr_void, align 4
  %17 = call i32 @svc_sendreply(%struct.svc_req* %15, i32 %16, i8* null)
  %18 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %19 = call i32 @svc_freereq(%struct.svc_req* %18)
  br label %166

20:                                               ; preds = %2
  %21 = load i32, i32* @xdr_nlm_testargs, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @xdr_nlm_testres, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @nlm_test_1_svc, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %25, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

26:                                               ; preds = %2
  %27 = load i32, i32* @xdr_nlm_lockargs, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @nlm_lock_1_svc, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %31, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

32:                                               ; preds = %2
  %33 = load i32, i32* @xdr_nlm_cancargs, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @nlm_cancel_1_svc, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %37, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

38:                                               ; preds = %2
  %39 = load i32, i32* @xdr_nlm_unlockargs, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @nlm_unlock_1_svc, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %43, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

44:                                               ; preds = %2
  %45 = load i32, i32* @xdr_nlm_testargs, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @nlm_granted_1_svc, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %49, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

50:                                               ; preds = %2
  %51 = load i32, i32* @xdr_nlm_testargs, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @xdr_void, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @nlm_test_msg_1_svc, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %55, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

56:                                               ; preds = %2
  %57 = load i32, i32* @xdr_nlm_lockargs, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @xdr_void, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @nlm_lock_msg_1_svc, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %61, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

62:                                               ; preds = %2
  %63 = load i32, i32* @xdr_nlm_cancargs, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @xdr_void, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @nlm_cancel_msg_1_svc, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %67, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

68:                                               ; preds = %2
  %69 = load i32, i32* @xdr_nlm_unlockargs, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @xdr_void, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @nlm_unlock_msg_1_svc, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %73, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

74:                                               ; preds = %2
  %75 = load i32, i32* @xdr_nlm_testargs, align 4
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @xdr_void, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @nlm_granted_msg_1_svc, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %79, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

80:                                               ; preds = %2
  %81 = load i32, i32* @xdr_nlm_testres, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @xdr_void, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @nlm_test_res_1_svc, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %85, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

86:                                               ; preds = %2
  %87 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @xdr_void, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @nlm_lock_res_1_svc, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %91, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

92:                                               ; preds = %2
  %93 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @xdr_void, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @nlm_cancel_res_1_svc, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %97, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

98:                                               ; preds = %2
  %99 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @xdr_void, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @nlm_unlock_res_1_svc, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %103, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

104:                                              ; preds = %2
  %105 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @xdr_void, align 4
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @nlm_granted_res_1_svc, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %109, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %115

110:                                              ; preds = %2
  %111 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %112 = call i32 @svcerr_noproc(%struct.svc_req* %111)
  %113 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %114 = call i32 @svc_freereq(%struct.svc_req* %113)
  br label %166

115:                                              ; preds = %104, %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20
  %116 = bitcast %union.anon* %5 to i8*
  %117 = call i32 @memset(i8* %116, i32 0, i32 4)
  %118 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = ptrtoint %union.anon* %5 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @svc_getargs(%struct.svc_req* %118, i32 %119, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  %125 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %126 = call i32 @svcerr_decode(%struct.svc_req* %125)
  %127 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %128 = call i32 @svc_freereq(%struct.svc_req* %127)
  br label %166

129:                                              ; preds = %115
  %130 = load i64 (i8*, i8*, %struct.svc_req*)*, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  %131 = bitcast %union.anon* %5 to i8*
  %132 = bitcast %union.anon.0* %6 to i8*
  %133 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %134 = call i64 %130(i8* %131, i8* %132, %struct.svc_req* %133)
  store i64 %134, i64* %7, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %129
  %138 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %139 = load i32, i32* %9, align 4
  %140 = bitcast %union.anon.0* %6 to i8*
  %141 = call i32 @svc_sendreply(%struct.svc_req* %138, i32 %139, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %145 = call i32 @svcerr_systemerr(%struct.svc_req* %144)
  br label %146

146:                                              ; preds = %143, %137, %129
  %147 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %148 = load i32, i32* %8, align 4
  %149 = ptrtoint %union.anon* %5 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @svc_freeargs(%struct.svc_req* %147, i32 %148, i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %146
  %154 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %146
  %156 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %157 = call i32 @svc_freereq(%struct.svc_req* %156)
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %9, align 4
  %160 = ptrtoint %union.anon.0* %6 to i64
  %161 = call i32 @nlm_prog_1_freeresult(i32* %158, i32 %159, i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %155
  %164 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %155
  br label %166

166:                                              ; preds = %165, %124, %110, %14
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

declare dso_local i32 @nlm_prog_1_freeresult(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
