; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpcb_clnt.c_rpcb_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpcb_clnt.c_rpcb_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@nullstring = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@xdr_rpcb = common dso_local global i64 0, align 8
@xdr_bool = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_unset(i32 %0, i32 %1, %struct.netconfig* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netconfig*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.netconfig* %2, %struct.netconfig** %7, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32* (...) @local_rpcb()
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %23 = icmp ne %struct.netconfig* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %26 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %35

29:                                               ; preds = %17
  %30 = load i32*, i32** @nullstring, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = ptrtoint i32* %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32*, i32** @nullstring, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = ptrtoint i32* %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* @RPCBPROC_UNSET, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @xdr_rpcb, align 8
  %46 = trunc i64 %45 to i32
  %47 = bitcast %struct.TYPE_2__* %10 to i8*
  %48 = load i64, i64* @xdr_bool, align 8
  %49 = trunc i64 %48 to i32
  %50 = bitcast i32* %9 to i8*
  %51 = load i32, i32* @tottimeout, align 4
  %52 = call i32 @CLNT_CALL(i32* %42, i32 %44, i32 %46, i8* %47, i32 %49, i8* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @CLNT_DESTROY(i32* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %35, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @local_rpcb(...) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
