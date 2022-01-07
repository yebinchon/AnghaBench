; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/netdump/extr_netdump_client.c_netdump_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/netdump/extr_netdump_client.c_netdump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.debugnet_pcb* }
%struct.debugnet_pcb = type { i32 }
%struct.dumperinfo = type { i64 }
%struct.debugnet_conn_params = type { i64, i64*, i64, i32, i32, i32, i32, i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@panicstr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"netdump_start: netdump may only be used after a panic\0A\00", align 1
@nd_server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"netdump_start: can't netdump; no server IP given\0A\00", align 1
@nd_ifp = common dso_local global i32 0, align 4
@nd_client = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@nd_gateway = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@NETDUMP_PORT = common dso_local global i32 0, align 4
@NETDUMP_ACKPORT = common dso_local global i32 0, align 4
@nd_path = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to contact netdump server\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"netdumping to %s (%6D)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@nd_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*)* @netdump_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdump_start(%struct.dumperinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dumperinfo*, align 8
  %4 = alloca %struct.debugnet_conn_params, align 8
  %5 = alloca %struct.debugnet_pcb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %3, align 8
  %10 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 (...) @netdump_enabled()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load i32*, i32** @panicstr, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

24:                                               ; preds = %18
  %25 = call i32 @memset(%struct.debugnet_conn_params* %4, i32 0, i32 48)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nd_server, i32 0, i32 0), align 8
  %27 = load i64, i64* @INADDR_ANY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

32:                                               ; preds = %24
  %33 = load %struct.dumperinfo*, %struct.dumperinfo** %3, align 8
  %34 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @nd_ifp, align 4
  %36 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 7
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @nd_client, i32 0, i32 0), align 4
  %38 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nd_server, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nd_gateway, i32 0, i32 0), align 4
  %42 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @NETDUMP_PORT, align 4
  %44 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @NETDUMP_ACKPORT, align 4
  %46 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load i64*, i64** @nd_path, align 8
  %48 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 1
  store i64* %47, i64** %48, align 8
  %49 = load i64*, i64** @nd_path, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %32
  br label %58

54:                                               ; preds = %32
  %55 = load i64*, i64** @nd_path, align 8
  %56 = call i64 @strlen(i64* %55)
  %57 = add nsw i64 %56, 1
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi i64 [ 0, %53 ], [ %57, %54 ]
  %60 = getelementptr inbounds %struct.debugnet_conn_params, %struct.debugnet_conn_params* %4, i32 0, i32 2
  store i64 %59, i64* %60, align 8
  %61 = call i32 @debugnet_connect(%struct.debugnet_conn_params* %4, %struct.debugnet_pcb** %5)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

67:                                               ; preds = %58
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nd_server, i32 0, i32 0), align 8
  %69 = call i8* @inet_ntoa_r(i64 %68, i8* %13)
  %70 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %5, align 8
  %71 = call i32 @debugnet_get_gw_mac(%struct.debugnet_pcb* %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %5, align 8
  store %struct.debugnet_pcb* %73, %struct.debugnet_pcb** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nd_conf, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %67, %64, %29, %21, %16
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netdump_enabled(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @memset(%struct.debugnet_conn_params*, i32, i32) #2

declare dso_local i64 @strlen(i64*) #2

declare dso_local i32 @debugnet_connect(%struct.debugnet_conn_params*, %struct.debugnet_pcb**) #2

declare dso_local i8* @inet_ntoa_r(i64, i8*) #2

declare dso_local i32 @debugnet_get_gw_mac(%struct.debugnet_pcb*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
