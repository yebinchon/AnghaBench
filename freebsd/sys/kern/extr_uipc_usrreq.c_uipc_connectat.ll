; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_connectat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_connectat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"uipc_connectat: td != curthread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.socket*, %struct.sockaddr*, %struct.thread*)* @uipc_connectat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_connectat(i32 %0, %struct.socket* %1, %struct.sockaddr* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load %struct.thread*, %struct.thread** %8, align 8
  %11 = load %struct.thread*, %struct.thread** @curthread, align 8
  %12 = icmp eq %struct.thread* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = load %struct.thread*, %struct.thread** %8, align 8
  %19 = call i32 @unp_connectat(i32 %15, %struct.socket* %16, %struct.sockaddr* %17, %struct.thread* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  ret i32 %20
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @unp_connectat(i32, %struct.socket*, %struct.sockaddr*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
