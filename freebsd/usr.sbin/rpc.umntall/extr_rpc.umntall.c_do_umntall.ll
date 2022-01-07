; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_do_umntall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_do_umntall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@MOUNTPROG = common dso_local global i32 0, align 4
@MOUNTVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MOUNTPROG\00", align 1
@MOUNTPROC_UMNTALL = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"MOUNTPROC_UMNTALL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_umntall(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 3, i32* %7, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @MOUNTPROG, align 4
  %11 = load i32, i32* @MOUNTVERS, align 4
  %12 = call %struct.TYPE_6__* @clnt_create_timed(i8* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.timeval* %5)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %17)
  store i32 0, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = call i32 (...) @authunix_create_default()
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = load i32, i32* @MOUNTPROC_UMNTALL, align 4
  %25 = load i64, i64* @xdr_void, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* @xdr_void, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @clnt_call(%struct.TYPE_6__* %23, i32 %24, i32 %26, i32 0, i32 %28, i32 0, %struct.timeval* byval(%struct.timeval) align 8 %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RPC_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = call i32 @clnt_sperror(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %19
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @auth_destroy(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = call i32 @clnt_destroy(%struct.TYPE_6__* %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RPC_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %38, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_6__* @clnt_create_timed(i8*, i32, i32, i8*, %struct.timeval*) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i32 @authunix_create_default(...) #1

declare dso_local i32 @clnt_call(%struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_sperror(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @auth_destroy(i32) #1

declare dso_local i32 @clnt_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
