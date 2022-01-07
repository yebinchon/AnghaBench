; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngsock = type { i32*, %struct.ngpcb*, %struct.ngpcb*, i32 }
%struct.ngpcb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ngs_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngs_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngsock*, align 8
  %4 = alloca %struct.ngpcb*, align 8
  %5 = alloca %struct.ngpcb*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ngsock* @NG_NODE_PRIVATE(i32 %6)
  store %struct.ngsock* %7, %struct.ngsock** %3, align 8
  %8 = load %struct.ngsock*, %struct.ngsock** %3, align 8
  %9 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %8, i32 0, i32 3
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.ngsock*, %struct.ngsock** %3, align 8
  %12 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %11, i32 0, i32 2
  %13 = load %struct.ngpcb*, %struct.ngpcb** %12, align 8
  store %struct.ngpcb* %13, %struct.ngpcb** %4, align 8
  %14 = load %struct.ngsock*, %struct.ngsock** %3, align 8
  %15 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %14, i32 0, i32 1
  %16 = load %struct.ngpcb*, %struct.ngpcb** %15, align 8
  store %struct.ngpcb* %16, %struct.ngpcb** %5, align 8
  %17 = load %struct.ngpcb*, %struct.ngpcb** %4, align 8
  %18 = icmp ne %struct.ngpcb* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ngpcb*, %struct.ngpcb** %4, align 8
  %21 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @soisdisconnected(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %26 = icmp ne %struct.ngpcb* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %29 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @soisdisconnected(i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.ngsock*, %struct.ngsock** %3, align 8
  %34 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @NG_NODE_SET_PRIVATE(i32 %35, i32* null)
  %37 = load %struct.ngsock*, %struct.ngsock** %3, align 8
  %38 = call i32 @ng_socket_free_priv(%struct.ngsock* %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @NG_NODE_UNREF(i32 %39)
  ret i32 0
}

declare dso_local %struct.ngsock* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @soisdisconnected(i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, i32*) #1

declare dso_local i32 @ng_socket_free_priv(%struct.ngsock*) #1

declare dso_local i32 @NG_NODE_UNREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
