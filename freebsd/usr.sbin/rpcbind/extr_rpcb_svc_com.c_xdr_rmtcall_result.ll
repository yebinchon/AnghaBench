; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_xdr_rmtcall_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_xdr_rmtcall_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_rmtcall_args = type { i64, i32, i32 }

@RPCBVERS = common dso_local global i64 0, align 8
@RPCBVERS4 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PMAPVERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.r_rmtcall_args*)* @xdr_rmtcall_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdr_rmtcall_result(i32* %0, %struct.r_rmtcall_args* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r_rmtcall_args*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.r_rmtcall_args* %1, %struct.r_rmtcall_args** %5, align 8
  %7 = load %struct.r_rmtcall_args*, %struct.r_rmtcall_args** %5, align 8
  %8 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RPCBVERS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.r_rmtcall_args*, %struct.r_rmtcall_args** %5, align 8
  %14 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPCBVERS4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12, %2
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.r_rmtcall_args*, %struct.r_rmtcall_args** %5, align 8
  %21 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %20, i32 0, i32 2
  %22 = call i64 @xdr_wrapstring(i32* %19, i32* %21)
  store i64 %22, i64* %6, align 8
  br label %25

23:                                               ; preds = %12
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %3, align 8
  br label %36

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.r_rmtcall_args*, %struct.r_rmtcall_args** %5, align 8
  %32 = getelementptr inbounds %struct.r_rmtcall_args, %struct.r_rmtcall_args* %31, i32 0, i32 1
  %33 = call i64 @xdr_encap_parms(i32* %30, i32* %32)
  store i64 %33, i64* %3, align 8
  br label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %29, %23
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @xdr_wrapstring(i32*, i32*) #1

declare dso_local i64 @xdr_encap_parms(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
