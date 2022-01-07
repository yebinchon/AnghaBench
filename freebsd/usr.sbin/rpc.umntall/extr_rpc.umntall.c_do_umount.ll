; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_do_umount.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_do_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@MOUNTPROG = common dso_local global i32 0, align 4
@MOUNTVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MOUNTPROG\00", align 1
@MOUNTPROC_UMNT = common dso_local global i32 0, align 4
@xdr_dir = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"MOUNTPROC_UMNT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_umount(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 3, i32* %9, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @MOUNTPROG, align 4
  %13 = load i32, i32* @MOUNTVERS, align 4
  %14 = call %struct.TYPE_6__* @clnt_create_timed(i8* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.timeval* %7)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = call i32 (...) @authsys_create_default()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = load i32, i32* @MOUNTPROC_UMNT, align 4
  %27 = load i64, i64* @xdr_dir, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* @xdr_void, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @clnt_call(%struct.TYPE_6__* %25, i32 %26, i32 %28, i8* %29, i32 %31, i32 0, %struct.timeval* byval(%struct.timeval) align 8 %7)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RPC_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = call i32 @clnt_sperror(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @auth_destroy(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = call i32 @clnt_destroy(%struct.TYPE_6__* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RPC_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_6__* @clnt_create_timed(i8*, i32, i32, i8*, %struct.timeval*) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i32 @authsys_create_default(...) #1

declare dso_local i32 @clnt_call(%struct.TYPE_6__*, i32, i32, i8*, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_sperror(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @auth_destroy(i32) #1

declare dso_local i32 @clnt_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
