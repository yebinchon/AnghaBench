; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_divert.c_div_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_divert.c_div_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i64 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"div_bind: inp == NULL\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@V_divcbinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @div_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.inpcb* @sotoinpcb(%struct.socket* %10)
  store %struct.inpcb* %11, %struct.inpcb** %8, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %13 = icmp ne %struct.inpcb* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %22, i32* %4, align 4
  br label %44

23:                                               ; preds = %3
  %24 = load i32, i32* @INADDR_ANY, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = call i32 @INP_INFO_WLOCK(i32* @V_divcbinfo)
  %30 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %31 = call i32 @INP_WLOCK(%struct.inpcb* %30)
  %32 = call i32 @INP_HASH_WLOCK(i32* @V_divcbinfo)
  %33 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %35 = load %struct.thread*, %struct.thread** %7, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @in_pcbbind(%struct.inpcb* %33, %struct.sockaddr* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = call i32 @INP_HASH_WUNLOCK(i32* @V_divcbinfo)
  %40 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %41 = call i32 @INP_WUNLOCK(%struct.inpcb* %40)
  %42 = call i32 @INP_INFO_WUNLOCK(i32* @V_divcbinfo)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %23, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_INFO_WLOCK(i32*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK(i32*) #1

declare dso_local i32 @in_pcbbind(%struct.inpcb*, %struct.sockaddr*, i32) #1

declare dso_local i32 @INP_HASH_WUNLOCK(i32*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
