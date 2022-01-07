; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_svc.c_nlm_prog_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }
%union.anon = type { %struct.nlm_sm_status }
%struct.nlm_sm_status = type { i32 }

@xdr_void = common dso_local global i32 0, align 4
@xdr_nlm_sm_status = common dso_local global i32 0, align 4
@nlm_sm_notify_0_svc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_prog_0(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.anon, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64 (i8*, i8*, %struct.svc_req*)*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 129, label %20
  ]

14:                                               ; preds = %2
  %15 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %16 = load i32, i32* @xdr_void, align 4
  %17 = call i32 @svc_sendreply(%struct.svc_req* %15, i32 %16, i8* null)
  %18 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %19 = call i32 @svc_freereq(%struct.svc_req* %18)
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* @xdr_nlm_sm_status, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @xdr_void, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @nlm_sm_notify_0_svc, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i64 (i8*, i8*, %struct.svc_req*)*
  store i64 (i8*, i8*, %struct.svc_req*)* %25, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %28 = call i32 @svcerr_noproc(%struct.svc_req* %27)
  %29 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %30 = call i32 @svc_freereq(%struct.svc_req* %29)
  br label %72

31:                                               ; preds = %20
  %32 = bitcast %union.anon* %5 to i8*
  %33 = call i32 @memset(i8* %32, i32 0, i32 4)
  %34 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ptrtoint %union.anon* %5 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @svc_getargs(%struct.svc_req* %34, i32 %35, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %42 = call i32 @svcerr_decode(%struct.svc_req* %41)
  %43 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %44 = call i32 @svc_freereq(%struct.svc_req* %43)
  br label %72

45:                                               ; preds = %31
  %46 = load i64 (i8*, i8*, %struct.svc_req*)*, i64 (i8*, i8*, %struct.svc_req*)** %10, align 8
  %47 = bitcast %union.anon* %5 to i8*
  %48 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %49 = call i64 %46(i8* %47, i8* %6, %struct.svc_req* %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @svc_sendreply(%struct.svc_req* %53, i32 %54, i8* %6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %59 = call i32 @svcerr_systemerr(%struct.svc_req* %58)
  br label %60

60:                                               ; preds = %57, %52, %45
  %61 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ptrtoint %union.anon* %5 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @svc_freeargs(%struct.svc_req* %61, i32 %62, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %71 = call i32 @svc_freereq(%struct.svc_req* %70)
  br label %72

72:                                               ; preds = %69, %40, %26, %14
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
