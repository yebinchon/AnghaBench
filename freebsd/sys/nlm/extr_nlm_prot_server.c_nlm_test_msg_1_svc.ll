; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_test_msg_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_test_msg_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_testargs = type { i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i64 0, align 8
@nlm_zero_tv = common dso_local global i32 0, align 4
@xdr_nlm_testres = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_test_msg_1_svc(%struct.nlm_testargs* %0, i8* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_testargs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store %struct.nlm_testargs* %0, %struct.nlm_testargs** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %13 = load %struct.nlm_testargs*, %struct.nlm_testargs** %5, align 8
  %14 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nlm_testargs*, %struct.nlm_testargs** %5, align 8
  %18 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %22 = load %struct.nlm_testargs*, %struct.nlm_testargs** %5, align 8
  %23 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %22, i32 0, i32 0
  %24 = call i32 @nlm_convert_to_nlm4_lock(i32* %21, i32* %23)
  %25 = load %struct.svc_req*, %struct.svc_req** %7, align 8
  %26 = call i64 @nlm_do_test(%struct.TYPE_18__* %8, %struct.TYPE_17__* %9, %struct.svc_req* %25, i32** %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nlm_convert_to_nlm_stats(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @nlm_denied, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = call i32 @nlm_convert_to_nlm_holder(i32* %48, i32* %51)
  br label %53

53:                                               ; preds = %45, %30
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @nlm_zero_tv, align 4
  %59 = call i32 @nlm_test_res_1(%struct.TYPE_16__* %10, i8* %12, i32* %57, i32* null, i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @CLNT_RELEASE(i32* %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i64, i64* @xdr_nlm_testres, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @xdr_free(i32 %64, %struct.TYPE_16__* %10)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm_do_test(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.svc_req*, i32**) #1

declare dso_local i64 @nlm_convert_to_nlm_stats(i32) #1

declare dso_local i32 @nlm_convert_to_nlm_holder(i32*, i32*) #1

declare dso_local i32 @nlm_test_res_1(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
