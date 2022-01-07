; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@xdr_void = common dso_local global i32 0, align 4
@xdr_nlm_shareargs = common dso_local global i32 0, align 4
@xdr_nlm_shareres = common dso_local global i32 0, align 4
@nlm_share_3_svc = common dso_local global i32 0, align 4
@nlm_unshare_3_svc = common dso_local global i32 0, align 4
@xdr_nlm_lockargs = common dso_local global i32 0, align 4
@xdr_nlm_res = common dso_local global i32 0, align 4
@nlm_nm_lock_3_svc = common dso_local global i32 0, align 4
@xdr_nlm_notify = common dso_local global i32 0, align 4
@nlm_free_all_3_svc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to free results\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_prog_3(%struct.svc_req* %0, i32* %1) #0 {
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
  switch i32 %13, label %48 [
    i32 128, label %14
    i32 135, label %20
    i32 140, label %20
    i32 147, label %20
    i32 132, label %20
    i32 143, label %20
    i32 134, label %20
    i32 139, label %20
    i32 146, label %20
    i32 131, label %20
    i32 142, label %20
    i32 133, label %20
    i32 138, label %20
    i32 145, label %20
    i32 130, label %20
    i32 141, label %20
    i32 136, label %24
    i32 129, label %30
    i32 137, label %36
    i32 144, label %42
  ]

14:                                               ; preds = %2
  %15 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %16 = load i32, i32* @xdr_void, align 4
  %17 = call i32 @svc_sendreply(%struct.svc_req* %15, i32 %16, i8* null)
  %18 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %19 = call i32 @svc_freereq(%struct.svc_req* %18)
  br label %104

20:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %21 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @nlm_prog_1(%struct.svc_req* %21, i32* %22)
  br label %104

24:                                               ; preds = %2
  %25 = load i32, i32* @xdr_nlm_shareargs, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @xdr_nlm_shareres, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @nlm_share_3_svc, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %29, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %53

30:                                               ; preds = %2
  %31 = load i32, i32* @xdr_nlm_shareargs, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @xdr_nlm_shareres, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @nlm_unshare_3_svc, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %35, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %53

36:                                               ; preds = %2
  %37 = load i32, i32* @xdr_nlm_lockargs, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @xdr_nlm_res, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @nlm_nm_lock_3_svc, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %41, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %53

42:                                               ; preds = %2
  %43 = load i32, i32* @xdr_nlm_notify, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @xdr_void, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @nlm_free_all_3_svc, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %47, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %50 = call i32 @svcerr_noproc(%struct.svc_req* %49)
  %51 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %52 = call i32 @svc_freereq(%struct.svc_req* %51)
  br label %104

53:                                               ; preds = %42, %36, %30, %24
  %54 = bitcast %union.anon* %5 to i8*
  %55 = call i32 @memset(i8* %54, i32 0, i32 4)
  %56 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = ptrtoint %union.anon* %5 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @svc_getargs(%struct.svc_req* %56, i32 %57, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %64 = call i32 @svcerr_decode(%struct.svc_req* %63)
  %65 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %66 = call i32 @svc_freereq(%struct.svc_req* %65)
  br label %104

67:                                               ; preds = %53
  %68 = load i64 (i8*, i8*, %struct.svc_req*)*, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  %69 = bitcast %union.anon* %5 to i8*
  %70 = bitcast %union.anon.0* %6 to i8*
  %71 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %72 = call i64 %68(i8* %69, i8* %70, %struct.svc_req* %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = bitcast %union.anon.0* %6 to i8*
  %79 = call i32 @svc_sendreply(%struct.svc_req* %76, i32 %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %83 = call i32 @svcerr_systemerr(%struct.svc_req* %82)
  br label %84

84:                                               ; preds = %81, %75, %67
  %85 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = ptrtoint %union.anon* %5 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @svc_freeargs(%struct.svc_req* %85, i32 %86, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %84
  %94 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %95 = call i32 @svc_freereq(%struct.svc_req* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = ptrtoint %union.anon.0* %6 to i64
  %99 = call i32 @nlm_prog_3_freeresult(i32* %96, i32 %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %93
  br label %104

104:                                              ; preds = %103, %62, %48, %20, %14
  ret void
}

declare dso_local i32 @svc_sendreply(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @svc_freereq(%struct.svc_req*) #1

declare dso_local i32 @nlm_prog_1(%struct.svc_req*, i32*) #1

declare dso_local i32 @svcerr_noproc(%struct.svc_req*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @svc_getargs(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @svcerr_decode(%struct.svc_req*) #1

declare dso_local i32 @svcerr_systemerr(%struct.svc_req*) #1

declare dso_local i32 @svc_freeargs(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @nlm_prog_3_freeresult(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
