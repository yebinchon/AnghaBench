; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_sendtorace/extr_unix_sendtorace.c_datagram_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_sendtorace/extr_unix_sendtorace.c_datagram_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@socket_path = common dso_local global i32 0, align 4
@ITERATIONS = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"datagram_client: socket\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"datagram_client: sendto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @datagram_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datagram_client() #0 {
  %1 = alloca %struct.sockaddr_un, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 0, i8* %3, align 1
  %6 = call i32 @bzero(%struct.sockaddr_un* %1, i32 12)
  %7 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 0
  store i32 12, i32* %7, align 4
  %8 = load i32, i32* @AF_UNIX, align 4
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @socket_path, align 4
  %13 = call i32 @strcpy(i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %37, %0
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ITERATIONS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32, i32* @PF_UNIX, align 4
  %20 = load i32, i32* @SOCK_DGRAM, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %40

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = bitcast %struct.sockaddr_un* %1 to %struct.sockaddr*
  %29 = call i32 @sendto(i32 %27, i8* %3, i32 1, i32 0, %struct.sockaddr* %28, i32 12)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %14

40:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
