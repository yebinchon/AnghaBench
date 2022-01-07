; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpreceive/extr_tcpreceive.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpreceive/extr_tcpreceive.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"socket(PF_INET, SOCKET_STREAM, 0)\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1

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
  %8 = load i32, i32* @PF_INET, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @err(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = call i32 @bzero(%struct.sockaddr_in* %6, i32 16)
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 16, i32* %19, align 4
  %20 = load i32, i32* @INADDR_ANY, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PORT, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %28 = call i64 @bind(i32 %26, %struct.sockaddr* %27, i32 16)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @listen(i32 %33, i32 -1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %39
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @handle_connection(i32 %40)
  br label %39
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @handle_connection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
