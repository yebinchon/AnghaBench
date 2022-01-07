; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_attach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_attach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.ngpcb = type { i32, %struct.socket* }

@ngpdg_sendspace = common dso_local global i32 0, align 4
@ngpdg_recvspace = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ngsocketlist_mtx = common dso_local global i32 0, align 4
@ngsocklist = common dso_local global i32 0, align 4
@socks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @ng_attach_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_attach_common(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ngpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = load i32, i32* @ngpdg_sendspace, align 4
  %10 = load i32, i32* @ngpdg_recvspace, align 4
  %11 = call i32 @soreserve(%struct.socket* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* @M_PCB, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.ngpcb* @malloc(i32 16, i32 %17, i32 %20)
  store %struct.ngpcb* %21, %struct.ngpcb** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %24 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %26 = ptrtoint %struct.ngpcb* %25 to i64
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.socket*, %struct.socket** %4, align 8
  %30 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %31 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %30, i32 0, i32 1
  store %struct.socket* %29, %struct.socket** %31, align 8
  %32 = call i32 @mtx_lock(i32* @ngsocketlist_mtx)
  %33 = load %struct.ngpcb*, %struct.ngpcb** %6, align 8
  %34 = load i32, i32* @socks, align 4
  %35 = call i32 @LIST_INSERT_HEAD(i32* @ngsocklist, %struct.ngpcb* %33, i32 %34)
  %36 = call i32 @mtx_unlock(i32* @ngsocketlist_mtx)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %16, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.ngpcb* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ngpcb*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
