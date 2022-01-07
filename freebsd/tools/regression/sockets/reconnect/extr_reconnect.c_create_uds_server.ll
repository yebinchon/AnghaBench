; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/reconnect/extr_reconnect.c_create_uds_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/reconnect/extr_reconnect.c_create_uds_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32 }

@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't create socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't bind to a socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_uds_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_uds_server(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_un, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @prepare_ifsun(%struct.sockaddr_un* %3, i8* %5)
  %7 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @unlink(i32 %8)
  %10 = load i32, i32* @PF_LOCAL, align 4
  %11 = load i32, i32* @SOCK_DGRAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SOL_SOCKET, align 4
  %20 = load i32, i32* @SO_REUSEADDR, align 4
  %21 = call i32 @setsockopt(i32 %18, i32 %19, i32 %20, i32* %4, i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sstosa(%struct.sockaddr_un* %3)
  %24 = call i64 @bind(i32 %22, i32 %23, i32 4)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @prepare_ifsun(%struct.sockaddr_un*, i8*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @sstosa(%struct.sockaddr_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
