; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_connect_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_connect_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.unpcb* }
%struct.unpcb = type { i32* }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }

@EISCONN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @connect_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_internal(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.unpcb*, %struct.unpcb** %11, align 8
  store %struct.unpcb* %12, %struct.unpcb** %9, align 8
  %13 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %14 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EISCONN, align 4
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = call i32 @unp_connect(%struct.socket* %20, %struct.sockaddr* %21, %struct.thread* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %19
  %29 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %30 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %29)
  %31 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %32 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %37 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOTCONN, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %26, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @unp_connect(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
