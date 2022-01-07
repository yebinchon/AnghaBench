; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_rejected.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_rejected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_err = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@RPC_VERSMISMATCH = common dso_local global i32 0, align 4
@RPC_AUTHERROR = common dso_local global i32 0, align 4
@MSG_DENIED = common dso_local global i64 0, align 8
@RPC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rpc_err*)* @rejected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rejected(i32 %0, %struct.rpc_err* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_err*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rpc_err* %1, %struct.rpc_err** %5, align 8
  %6 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %7 = icmp ne %struct.rpc_err* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 129, label %13
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @RPC_VERSMISMATCH, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @RPC_AUTHERROR, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i64, i64* @MSG_DENIED, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @RPC_FAILED, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %13, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
