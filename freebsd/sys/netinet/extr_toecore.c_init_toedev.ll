; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_init_toedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_init_toedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toedev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32* }

@toedev_connect = common dso_local global i32 0, align 4
@toedev_listen_start = common dso_local global i32 0, align 4
@toedev_listen_stop = common dso_local global i32 0, align 4
@toedev_input = common dso_local global i32 0, align 4
@toedev_rcvd = common dso_local global i32 0, align 4
@toedev_output = common dso_local global i8* null, align 8
@toedev_pcb_detach = common dso_local global i32 0, align 4
@toedev_l2_update = common dso_local global i32 0, align 4
@toedev_route_redirect = common dso_local global i32 0, align 4
@toedev_syncache_added = common dso_local global i32 0, align 4
@toedev_syncache_removed = common dso_local global i32 0, align 4
@toedev_syncache_respond = common dso_local global i32 0, align 4
@toedev_offload_socket = common dso_local global i32 0, align 4
@toedev_ctloutput = common dso_local global i32 0, align 4
@toedev_tcp_info = common dso_local global i32 0, align 4
@toedev_alloc_tls_session = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_toedev(%struct.toedev* %0) #0 {
  %2 = alloca %struct.toedev*, align 8
  store %struct.toedev* %0, %struct.toedev** %2, align 8
  %3 = load %struct.toedev*, %struct.toedev** %2, align 8
  %4 = getelementptr inbounds %struct.toedev, %struct.toedev* %3, i32 0, i32 18
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @toedev_connect, align 4
  %6 = load %struct.toedev*, %struct.toedev** %2, align 8
  %7 = getelementptr inbounds %struct.toedev, %struct.toedev* %6, i32 0, i32 17
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @toedev_listen_start, align 4
  %9 = load %struct.toedev*, %struct.toedev** %2, align 8
  %10 = getelementptr inbounds %struct.toedev, %struct.toedev* %9, i32 0, i32 16
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @toedev_listen_stop, align 4
  %12 = load %struct.toedev*, %struct.toedev** %2, align 8
  %13 = getelementptr inbounds %struct.toedev, %struct.toedev* %12, i32 0, i32 15
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @toedev_input, align 4
  %15 = load %struct.toedev*, %struct.toedev** %2, align 8
  %16 = getelementptr inbounds %struct.toedev, %struct.toedev* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @toedev_rcvd, align 4
  %18 = load %struct.toedev*, %struct.toedev** %2, align 8
  %19 = getelementptr inbounds %struct.toedev, %struct.toedev* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @toedev_output, align 8
  %21 = load %struct.toedev*, %struct.toedev** %2, align 8
  %22 = getelementptr inbounds %struct.toedev, %struct.toedev* %21, i32 0, i32 12
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @toedev_output, align 8
  %24 = load %struct.toedev*, %struct.toedev** %2, align 8
  %25 = getelementptr inbounds %struct.toedev, %struct.toedev* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @toedev_output, align 8
  %27 = load %struct.toedev*, %struct.toedev** %2, align 8
  %28 = getelementptr inbounds %struct.toedev, %struct.toedev* %27, i32 0, i32 10
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @toedev_pcb_detach, align 4
  %30 = load %struct.toedev*, %struct.toedev** %2, align 8
  %31 = getelementptr inbounds %struct.toedev, %struct.toedev* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @toedev_l2_update, align 4
  %33 = load %struct.toedev*, %struct.toedev** %2, align 8
  %34 = getelementptr inbounds %struct.toedev, %struct.toedev* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @toedev_route_redirect, align 4
  %36 = load %struct.toedev*, %struct.toedev** %2, align 8
  %37 = getelementptr inbounds %struct.toedev, %struct.toedev* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @toedev_syncache_added, align 4
  %39 = load %struct.toedev*, %struct.toedev** %2, align 8
  %40 = getelementptr inbounds %struct.toedev, %struct.toedev* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @toedev_syncache_removed, align 4
  %42 = load %struct.toedev*, %struct.toedev** %2, align 8
  %43 = getelementptr inbounds %struct.toedev, %struct.toedev* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @toedev_syncache_respond, align 4
  %45 = load %struct.toedev*, %struct.toedev** %2, align 8
  %46 = getelementptr inbounds %struct.toedev, %struct.toedev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @toedev_offload_socket, align 4
  %48 = load %struct.toedev*, %struct.toedev** %2, align 8
  %49 = getelementptr inbounds %struct.toedev, %struct.toedev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @toedev_ctloutput, align 4
  %51 = load %struct.toedev*, %struct.toedev** %2, align 8
  %52 = getelementptr inbounds %struct.toedev, %struct.toedev* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @toedev_tcp_info, align 4
  %54 = load %struct.toedev*, %struct.toedev** %2, align 8
  %55 = getelementptr inbounds %struct.toedev, %struct.toedev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @toedev_alloc_tls_session, align 4
  %57 = load %struct.toedev*, %struct.toedev** %2, align 8
  %58 = getelementptr inbounds %struct.toedev, %struct.toedev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
