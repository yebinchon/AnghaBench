; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_connect_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_connect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ngpcb = type { i32, %struct.ngsock* }
%struct.ngsock = type { i32, i32, %struct.TYPE_10__*, %struct.ngpcb* }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr_ng = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@EISCONN = common dso_local global i32 0, align 4
@NG_WAITOK = common dso_local global i32 0, align 4
@NG_SOCKET_NODE_TYPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.ngpcb*)* @ng_connect_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_connect_data(%struct.sockaddr* %0, %struct.ngpcb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ngpcb*, align 8
  %6 = alloca %struct.sockaddr_ng*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.ngsock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.ngpcb* %1, %struct.ngpcb** %5, align 8
  %11 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %12 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %11, i32 0, i32 1
  %13 = load %struct.ngsock*, %struct.ngsock** %12, align 8
  %14 = icmp ne %struct.ngsock* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EISCONN, align 4
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %19, %struct.sockaddr_ng** %6, align 8
  %20 = load i32, i32* @NG_WAITOK, align 4
  %21 = call %struct.TYPE_12__* @ng_package_data(i32* null, i32 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ng_address_path(i32* null, %struct.TYPE_12__* %22, i32 %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %17
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %7, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NG_SOCKET_NODE_TYPE, align 4
  %40 = call i64 @strcmp(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = call i32 @NG_FREE_ITEM(%struct.TYPE_12__* %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %83

46:                                               ; preds = %30
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = call %struct.ngsock* @NG_NODE_PRIVATE(%struct.TYPE_11__* %47)
  store %struct.ngsock* %48, %struct.ngsock** %8, align 8
  %49 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %50 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %49, i32 0, i32 3
  %51 = load %struct.ngpcb*, %struct.ngpcb** %50, align 8
  %52 = icmp ne %struct.ngpcb* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = call i32 @NG_FREE_ITEM(%struct.TYPE_12__* %54)
  %56 = load i32, i32* @EADDRINUSE, align 4
  store i32 %56, i32* %3, align 4
  br label %83

57:                                               ; preds = %46
  %58 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %59 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %58, i32 0, i32 0
  %60 = call i32 @mtx_lock(i32* %59)
  %61 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %62 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %63 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %62, i32 0, i32 3
  store %struct.ngpcb* %61, %struct.ngpcb** %63, align 8
  %64 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %65 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %66 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %65, i32 0, i32 1
  store %struct.ngsock* %64, %struct.ngsock** %66, align 8
  %67 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %68 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %73 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %75 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ngsock*, %struct.ngsock** %8, align 8
  %79 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %78, i32 0, i32 0
  %80 = call i32 @mtx_unlock(i32* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = call i32 @NG_FREE_ITEM(%struct.TYPE_12__* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %57, %53, %42, %28, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_12__* @ng_package_data(i32*, i32) #1

declare dso_local i32 @ng_address_path(i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @NG_FREE_ITEM(%struct.TYPE_12__*) #1

declare dso_local %struct.ngsock* @NG_NODE_PRIVATE(%struct.TYPE_11__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
