; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_granted_msg_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_granted_msg_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_testargs = type { i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@nlm_zero_tv = common dso_local global i32 0, align 4
@xdr_nlm_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_granted_msg_1_svc(%struct.nlm_testargs* %0, i8* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_testargs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store %struct.nlm_testargs* %0, %struct.nlm_testargs** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %13 = load %struct.nlm_testargs*, %struct.nlm_testargs** %5, align 8
  %14 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nlm_testargs*, %struct.nlm_testargs** %5, align 8
  %18 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %22 = load %struct.nlm_testargs*, %struct.nlm_testargs** %5, align 8
  %23 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %22, i32 0, i32 0
  %24 = call i32 @nlm_convert_to_nlm4_lock(i32* %21, i32* %23)
  %25 = load %struct.svc_req*, %struct.svc_req** %7, align 8
  %26 = call i64 @nlm_do_granted(%struct.TYPE_3__* %8, i32* %9, %struct.svc_req* %25, i32** %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %45

30:                                               ; preds = %3
  %31 = call i32 @nlm_convert_to_nlm_res(i32* %10, i32* %9)
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @nlm_zero_tv, align 4
  %37 = call i32 @nlm_granted_res_1(i32* %10, i8* %12, i32* %35, i32* null, i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @CLNT_RELEASE(i32* %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i64, i64* @xdr_nlm_res, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @xdr_free(i32 %42, i32* %10)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm_do_granted(%struct.TYPE_3__*, i32*, %struct.svc_req*, i32**) #1

declare dso_local i32 @nlm_convert_to_nlm_res(i32*, i32*) #1

declare dso_local i32 @nlm_granted_res_1(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
