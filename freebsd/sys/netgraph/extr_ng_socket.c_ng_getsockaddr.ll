; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_getsockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_getsockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ngpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sockaddr_ng = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NG_NODESIZ = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@AF_NETGRAPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @ng_getsockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_getsockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.ngpcb*, align 8
  %7 = alloca %struct.sockaddr_ng*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call %struct.ngpcb* @sotongpcb(%struct.socket* %11)
  store %struct.ngpcb* %12, %struct.ngpcb** %6, align 8
  %13 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %14 = icmp eq %struct.ngpcb* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %17 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %15
  %23 = load i32, i32* @NG_NODESIZ, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 12, %24
  %26 = sub i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @M_SONAME, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.sockaddr_ng* @malloc(i32 %28, i32 %29, i32 %32)
  store %struct.sockaddr_ng* %33, %struct.sockaddr_ng** %7, align 8
  %34 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %35 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @mtx_lock(i32* %37)
  %39 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %40 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %79

45:                                               ; preds = %22
  %46 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %47 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @NG_NODE_HAS_NAME(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @NG_NODE_NAME(i32* %55)
  %57 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %58 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @NG_NODE_NAME(i32* %60)
  %62 = call i32 @strlen(i32 %61)
  %63 = call i32 @bcopy(i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %54, %45
  %65 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %66 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock(i32* %68)
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %72 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @AF_NETGRAPH, align 4
  %74 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %75 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %77 = bitcast %struct.sockaddr_ng* %76 to %struct.sockaddr*
  %78 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %77, %struct.sockaddr** %78, align 8
  br label %89

79:                                               ; preds = %22
  %80 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %81 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @mtx_unlock(i32* %83)
  %85 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %86 = load i32, i32* @M_SONAME, align 4
  %87 = call i32 @free(%struct.sockaddr_ng* %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %79, %64
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.ngpcb* @sotongpcb(%struct.socket*) #1

declare dso_local %struct.sockaddr_ng* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @NG_NODE_HAS_NAME(i32*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @NG_NODE_NAME(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.sockaddr_ng*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
