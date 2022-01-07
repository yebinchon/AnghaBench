; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_security.c_check_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_security.c_check_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i64 }
%struct.sockaddr = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pmap = type { i32 }

@PMAPVERS = common dso_local global i32 0, align 4
@insecure = common dso_local global i32 0, align 4
@verboselog = common dso_local global i64 0, align 8
@log_severity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c" declined (non-loopback sender)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AF_LOCAL = common dso_local global i64 0, align 8
@RQ_CLIENT_SIN = common dso_local global i32 0, align 4
@RQ_DAEMON = common dso_local global i32 0, align 4
@deny_severity = common dso_local global i32 0, align 4
@libwrap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_access(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca %struct.pmap*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.netbuf* @svc_getrpccaller(i32* %15)
  store %struct.netbuf* %16, %struct.netbuf** %10, align 8
  %17 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %18 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %61 [
    i32 137, label %22
    i32 131, label %22
    i32 128, label %22
    i32 139, label %60
    i32 132, label %60
    i32 138, label %60
    i32 134, label %60
    i32 129, label %60
    i32 130, label %60
    i32 133, label %60
    i32 136, label %60
    i32 135, label %60
  ]

22:                                               ; preds = %4, %4, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PMAPVERS, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %13, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  br label %38

32:                                               ; preds = %22
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.pmap*
  store %struct.pmap* %34, %struct.pmap** %14, align 8
  %35 = load %struct.pmap*, %struct.pmap** %14, align 8
  %36 = getelementptr inbounds %struct.pmap, %struct.pmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 137
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %62

42:                                               ; preds = %38
  %43 = load i32, i32* @insecure, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %47 = call i32 @is_loopback(%struct.netbuf* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @verboselog, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @log_severity, align 4
  %54 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @logit(i32 %53, %struct.sockaddr* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %49
  store i32 0, i32* %5, align 4
  br label %72

59:                                               ; preds = %45, %42
  br label %62

60:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %61

61:                                               ; preds = %4, %60
  br label %62

62:                                               ; preds = %61, %59, %41
  %63 = load i64, i64* @verboselog, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @log_severity, align 4
  %67 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @logit(i32 %66, %struct.sockaddr* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %65, %62
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.netbuf* @svc_getrpccaller(i32*) #1

declare dso_local i32 @is_loopback(%struct.netbuf*) #1

declare dso_local i32 @logit(i32, %struct.sockaddr*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
