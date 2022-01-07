; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/udpconnectjail/extr_udpconnectjail.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/udpconnectjail/extr_udpconnectjail.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: socket(PF_INET, SOCK_DGRAM, 0): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: connect(%s): %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: close(): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sockaddr_in*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i8* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %4, align 8
  %6 = load i32, i32* @PF_INET, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 (i32, i8*, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %19 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %20 = call i64 @connect(i32 %17, %struct.sockaddr* %19, i32 4)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @inet_ntoa(i32 %26)
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 (i32, i8*, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %22, %16
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @close(i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i32, i8*, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
