; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_clnt.c_nlm4_cancel_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_clnt.c_nlm4_cancel_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }

@NLM4_CANCEL = common dso_local global i32 0, align 4
@xdr_nlm4_cancargs = common dso_local global i64 0, align 8
@xdr_nlm4_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm4_cancel_4(i32* %0, i32* %1, i32* %2, %struct.rpc_callextra* %3, i32 %4) #0 {
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rpc_callextra*, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %4, i32* %11, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.rpc_callextra* %3, %struct.rpc_callextra** %10, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load %struct.rpc_callextra*, %struct.rpc_callextra** %10, align 8
  %14 = load i32, i32* @NLM4_CANCEL, align 4
  %15 = load i64, i64* @xdr_nlm4_cancargs, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32*, i32** %7, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = load i64, i64* @xdr_nlm4_res, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %8, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CLNT_CALL_EXT(i32* %12, %struct.rpc_callextra* %13, i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24)
  ret i32 %25
}

declare dso_local i32 @CLNT_CALL_EXT(i32*, %struct.rpc_callextra*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
