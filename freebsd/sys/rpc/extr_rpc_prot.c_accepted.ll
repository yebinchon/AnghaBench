; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_accepted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_err = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_PROCUNAVAIL = common dso_local global i32 0, align 4
@RPC_CANTDECODEARGS = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i64 0, align 8
@RPC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rpc_err*)* @accepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accepted(i32 %0, %struct.rpc_err* %1) #0 {
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
  switch i32 %10, label %29 [
    i32 130, label %11
    i32 131, label %16
    i32 132, label %21
    i32 133, label %23
    i32 128, label %25
    i32 129, label %27
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %13 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %18 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load i32, i32* @RPC_PROCUNAVAIL, align 4
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @RPC_CANTDECODEARGS, align 4
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load i32, i32* @RPC_SYSTEMERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load i64, i64* @MSG_ACCEPTED, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %33 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.rpc_err*, %struct.rpc_err** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @RPC_FAILED, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %27, %25, %23, %21, %16, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
