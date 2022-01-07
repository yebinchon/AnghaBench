; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_callaurpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_callaurpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@rpc_createerr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CLSET_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i8*, i32, i8*)* @callaurpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callaurpc(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.timeval, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.TYPE_6__* @clnt_create(i8* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %21, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rpc_createerr, i32 0, i32 0), align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %51

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  store i32 6, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %35 = load i32, i32* @CLSET_RETRY_TIMEOUT, align 4
  %36 = bitcast %struct.timeval* %19 to i8*
  %37 = call i32 @CLNT_CONTROL(%struct.TYPE_6__* %34, i32 %35, i8* %36)
  %38 = call i32 (...) @authunix_create_default()
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i32 25, i32* %41, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @clnt_call(%struct.TYPE_6__* %43, i32 %44, i32 %45, i8* %46, i32 %47, i8* %48, %struct.timeval* byval(%struct.timeval) align 8 %20)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %31, %28
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_6__* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @CLNT_CONTROL(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @authunix_create_default(...) #1

declare dso_local i32 @clnt_call(%struct.TYPE_6__*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
