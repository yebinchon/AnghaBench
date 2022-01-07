; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_lock_msg_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_lock_msg_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_lockargs = type { i32, i32, i32, i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@nlm_zero_tv = common dso_local global i32 0, align 4
@xdr_nlm_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_lock_msg_1_svc(%struct.nlm_lockargs* %0, i8* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_lockargs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store %struct.nlm_lockargs* %0, %struct.nlm_lockargs** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %13 = load %struct.nlm_lockargs*, %struct.nlm_lockargs** %5, align 8
  %14 = getelementptr inbounds %struct.nlm_lockargs, %struct.nlm_lockargs* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nlm_lockargs*, %struct.nlm_lockargs** %5, align 8
  %18 = getelementptr inbounds %struct.nlm_lockargs, %struct.nlm_lockargs* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load %struct.nlm_lockargs*, %struct.nlm_lockargs** %5, align 8
  %22 = getelementptr inbounds %struct.nlm_lockargs, %struct.nlm_lockargs* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %26 = load %struct.nlm_lockargs*, %struct.nlm_lockargs** %5, align 8
  %27 = getelementptr inbounds %struct.nlm_lockargs, %struct.nlm_lockargs* %26, i32 0, i32 2
  %28 = call i32 @nlm_convert_to_nlm4_lock(i32* %25, i32* %27)
  %29 = load %struct.nlm_lockargs*, %struct.nlm_lockargs** %5, align 8
  %30 = getelementptr inbounds %struct.nlm_lockargs, %struct.nlm_lockargs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.nlm_lockargs*, %struct.nlm_lockargs** %5, align 8
  %34 = getelementptr inbounds %struct.nlm_lockargs, %struct.nlm_lockargs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.svc_req*, %struct.svc_req** %7, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i64 @nlm_do_lock(%struct.TYPE_3__* %8, i32* %9, %struct.svc_req* %37, i32 %38, i32** %11)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %58

43:                                               ; preds = %3
  %44 = call i32 @nlm_convert_to_nlm_res(i32* %10, i32* %9)
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @nlm_zero_tv, align 4
  %50 = call i32 @nlm_lock_res_1(i32* %10, i8* %12, i32* %48, i32* null, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @CLNT_RELEASE(i32* %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i64, i64* @xdr_nlm_res, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @xdr_free(i32 %55, i32* %10)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %41
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm_do_lock(%struct.TYPE_3__*, i32*, %struct.svc_req*, i32, i32**) #1

declare dso_local i32 @nlm_convert_to_nlm_res(i32*, i32*) #1

declare dso_local i32 @nlm_lock_res_1(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
