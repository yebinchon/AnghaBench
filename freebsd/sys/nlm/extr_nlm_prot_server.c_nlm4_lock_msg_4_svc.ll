; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm4_lock_msg_4_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm4_lock_msg_4_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@nlm_zero_tv = common dso_local global i32 0, align 4
@xdr_nlm4_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm4_lock_msg_4_svc(i32* %0, i8* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.svc_req*, %struct.svc_req** %7, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i64 @nlm_do_lock(i32* %11, i32* %8, %struct.svc_req* %12, i32 %13, i32** %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @nlm_zero_tv, align 4
  %24 = call i32 @nlm4_lock_res_4(i32* %8, i8* %10, i32* %22, i32* null, i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @CLNT_RELEASE(i32* %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i64, i64* @xdr_nlm4_res, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @xdr_free(i32 %29, i32* %8)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @nlm_do_lock(i32*, i32*, %struct.svc_req*, i32, i32**) #1

declare dso_local i32 @nlm4_lock_res_4(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
