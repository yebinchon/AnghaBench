; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_unlock_msg_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_unlock_msg_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_unlockargs = type { i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@nlm_zero_tv = common dso_local global i32 0, align 4
@xdr_nlm_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_unlock_msg_1_svc(%struct.nlm_unlockargs* %0, i8* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_unlockargs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  store %struct.nlm_unlockargs* %0, %struct.nlm_unlockargs** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %13 = load %struct.nlm_unlockargs*, %struct.nlm_unlockargs** %5, align 8
  %14 = getelementptr inbounds %struct.nlm_unlockargs, %struct.nlm_unlockargs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %18 = load %struct.nlm_unlockargs*, %struct.nlm_unlockargs** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_unlockargs, %struct.nlm_unlockargs* %18, i32 0, i32 0
  %20 = call i32 @nlm_convert_to_nlm4_lock(i32* %17, i32* %19)
  %21 = load %struct.svc_req*, %struct.svc_req** %7, align 8
  %22 = call i64 @nlm_do_unlock(%struct.TYPE_3__* %8, i32* %9, %struct.svc_req* %21, i32** %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %3
  %27 = call i32 @nlm_convert_to_nlm_res(i32* %10, i32* %9)
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @nlm_zero_tv, align 4
  %33 = call i32 @nlm_unlock_res_1(i32* %10, i8* %12, i32* %31, i32* null, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @CLNT_RELEASE(i32* %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i64, i64* @xdr_nlm_res, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @xdr_free(i32 %38, i32* %10)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm_do_unlock(%struct.TYPE_3__*, i32*, %struct.svc_req*, i32**) #1

declare dso_local i32 @nlm_convert_to_nlm_res(i32*, i32*) #1

declare dso_local i32 @nlm_unlock_res_1(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
