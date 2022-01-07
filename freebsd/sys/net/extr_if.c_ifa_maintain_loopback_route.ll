; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifa_maintain_loopback_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifa_maintain_loopback_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr**, i32*, i32* }
%struct.sockaddr_dl = type { i32 }

@RTM_DELETE = common dso_local global i32 0, align 4
@V_loif = common dso_local global i32* null, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_STATIC = common dso_local global i32 0, align 4
@RTF_PINNED = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.ifaddr*, %struct.sockaddr*)* @ifa_maintain_loopback_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifa_maintain_loopback_route(i32 %0, i8* %1, %struct.ifaddr* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.epoch_tracker, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rt_addrinfo, align 8
  %12 = alloca %struct.sockaddr_dl, align 4
  %13 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.ifaddr* %2, %struct.ifaddr** %7, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %8, align 8
  %14 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %15 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %14, i32 0, i32 2
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %13, align 8
  %17 = call i32 @bzero(%struct.rt_addrinfo* %11, i32 32)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @RTM_DELETE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** @V_loif, align 8
  %23 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 3
  store i32* %22, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RTM_ADD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NET_EPOCH_ENTER(i32 %34)
  %36 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %37 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32* @ifaof_ifpforaddr(i32 %38, i32* %40)
  %42 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 2
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ifa_ref(i32* %48)
  br label %50

50:                                               ; preds = %46, %32
  %51 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NET_EPOCH_EXIT(i32 %52)
  br label %54

54:                                               ; preds = %50, %28
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %57 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RTF_HOST, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RTF_STATIC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RTF_PINNED, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %67 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 1
  %68 = load %struct.sockaddr**, %struct.sockaddr*** %67, align 8
  %69 = load i64, i64* @RTAX_DST, align 8
  %70 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %68, i64 %69
  store %struct.sockaddr* %66, %struct.sockaddr** %70, align 8
  %71 = bitcast %struct.sockaddr_dl* %12 to %struct.sockaddr*
  %72 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %11, i32 0, i32 1
  %73 = load %struct.sockaddr**, %struct.sockaddr*** %72, align 8
  %74 = load i64, i64* @RTAX_GATEWAY, align 8
  %75 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %73, i64 %74
  store %struct.sockaddr* %71, %struct.sockaddr** %75, align 8
  %76 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %77 = bitcast %struct.sockaddr_dl* %12 to %struct.sockaddr*
  %78 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @link_init_sdl(%struct.ifnet* %76, %struct.sockaddr* %77, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rtrequest1_fib(i32 %82, %struct.rt_addrinfo* %11, i32* null, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %55
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @RTM_ADD, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @EEXIST, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %110, label %97

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @RTM_DELETE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @ENOENT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @if_printf(%struct.ifnet* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %101, %93, %55
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local i32 @bzero(%struct.rt_addrinfo*, i32) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32* @ifaof_ifpforaddr(i32, i32*) #1

declare dso_local i32 @ifa_ref(i32*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @link_init_sdl(%struct.ifnet*, %struct.sockaddr*, i32) #1

declare dso_local i32 @rtrequest1_fib(i32, %struct.rt_addrinfo*, i32*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
