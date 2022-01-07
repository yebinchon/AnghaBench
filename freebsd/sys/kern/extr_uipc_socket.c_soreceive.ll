; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soreceive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soreceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.sockaddr = type { i32 }
%struct.uio = type { i32 }
%struct.mbuf = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soreceive(%struct.socket* %0, %struct.sockaddr** %1, %struct.uio* %2, %struct.mbuf** %3, %struct.mbuf** %4, i32* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %8, align 8
  store %struct.uio* %2, %struct.uio** %9, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %10, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @CURVNET_SET(i32 %16)
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = call i32 @SOLISTENING(%struct.socket* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %6
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.socket*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, %struct.mbuf**, i32*)**
  %29 = load i32 (%struct.socket*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, %struct.mbuf**, i32*)*, i32 (%struct.socket*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, %struct.mbuf**, i32*)** %28, align 8
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %32 = load %struct.uio*, %struct.uio** %9, align 8
  %33 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %34 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 %29(%struct.socket* %30, %struct.sockaddr** %31, %struct.uio* %32, %struct.mbuf** %33, %struct.mbuf** %34, i32* %35)
  store i32 %36, i32* %13, align 4
  br label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @ENOTCONN, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = call i32 (...) @CURVNET_RESTORE()
  %41 = load i32, i32* %13, align 4
  ret i32 %41
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
