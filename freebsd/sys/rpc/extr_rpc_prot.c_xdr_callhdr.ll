; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_xdr_callhdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_xdr_callhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.rpc_msg = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CALL = common dso_local global i32 0, align 4
@RPC_MSG_VERSION = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_callhdr(%struct.TYPE_7__* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %12 = icmp ne %struct.rpc_msg* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* @CALL, align 4
  %18 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @RPC_MSG_VERSION, align 4
  %21 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %22 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XDR_ENCODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %32 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %31, i32 0, i32 2
  %33 = call i64 @xdr_uint32_t(%struct.TYPE_7__* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @xdr_enum(%struct.TYPE_7__* %36, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %43 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = call i64 @xdr_uint32_t(%struct.TYPE_7__* %41, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %50 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i64 @xdr_uint32_t(%struct.TYPE_7__* %48, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i64 @xdr_uint32_t(%struct.TYPE_7__* %55, i32* %58)
  store i64 %59, i64* %3, align 8
  br label %62

60:                                               ; preds = %47, %40, %35, %29, %2
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xdr_uint32_t(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @xdr_enum(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
