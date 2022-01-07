; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpconnect/extr_tcpconnect.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpconnect/extr_tcpconnect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"usage: tcpconnect [ip]\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@alarm_handler = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"signal(SIGALRM)\00", align 1
@SECONDS = common dso_local global i32 0, align 4
@timer_fired = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%ju count\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%ju connections/second\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 @bzero(%struct.sockaddr_in* %6, i32 16)
  %14 = load i32, i32* @AF_INET, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 16, i32* %16, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @inet_addr(i8* %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PORT, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @SIGALRM, align 4
  %27 = load i32, i32* @alarm_handler, align 4
  %28 = call i64 @signal(i32 %26, i32 %27)
  %29 = load i64, i64* @SIG_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %12
  %32 = call i32 @err(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i32, i32* @SECONDS, align 4
  %35 = call i32 @alarm(i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %46, %33
  %37 = load i32, i32* @timer_fired, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = call i64 @try_connect(%struct.sockaddr_in* %6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %36

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SECONDS, align 4
  %52 = sdiv i32 %50, %51
  %53 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @try_connect(%struct.sockaddr_in*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
