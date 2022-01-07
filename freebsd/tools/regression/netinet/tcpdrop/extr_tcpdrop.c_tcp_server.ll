; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpdrop/extr_tcpdrop.c_tcp_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/tcpdrop/extr_tcpdrop.c_tcp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tcp_server: accept\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"tcp_server: send (1)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"tcp_server: send (1) len\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"tcp_server: send (2): success\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"tcp_server: send (2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @tcp_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_server(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @accept(i32 %9, i32* null, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SIGTERM, align 4
  %17 = call i32 @kill(i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* @errno, align 4
  %19 = call i32 @err(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %13, %2
  store i8 65, i8* %8, align 1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MSG_NOSIGNAL, align 4
  %23 = call i32 @send(i32 %21, i8* %8, i32 1, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SIGTERM, align 4
  %30 = call i32 @kill(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* @errno, align 4
  %32 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %26, %20
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SIGTERM, align 4
  %40 = call i32 @kill(i32 %38, i32 %39)
  %41 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %33
  %43 = call i32 @sleep(i32 10)
  store i8 65, i8* %8, align 1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MSG_NOSIGNAL, align 4
  %46 = call i32 @send(i32 %44, i8* %8, i32 1, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SIGTERM, align 4
  %52 = call i32 @kill(i32 %50, i32 %51)
  %53 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %66

54:                                               ; preds = %42
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* @EPIPE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SIGTERM, align 4
  %62 = call i32 @kill(i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* @errno, align 4
  %64 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @close(i32 %69)
  ret void
}

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
