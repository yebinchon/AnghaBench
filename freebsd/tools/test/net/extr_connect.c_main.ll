; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/net/extr_connect.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/net/extr_connect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"p:\00", align 1
@optarg = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Exiting at %d with errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @PORT, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %23 [
    i32 112, label %19
    i32 104, label %22
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32 @atoi(i32 %20)
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %17, %22
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %19
  br label %12

26:                                               ; preds = %12
  %27 = call i32 @bzero(%struct.sockaddr_in* %10, i32 16)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 16, i32* %28, align 4
  %29 = load i32, i32* @AF_INET, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @INADDR_ANY, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @AF_INET, align 4
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = call i32 @socket(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %45, %26
  %41 = load i32, i32* %7, align 4
  %42 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %43 = call i32 @connect(i32 %41, %struct.sockaddr* %42, i32 16)
  store i32 %43, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32, i32* @AF_INET, align 4
  %51 = load i32, i32* @SOCK_STREAM, align 4
  %52 = call i32 @socket(i32 %50, i32 %51, i32 0)
  store i32 %52, i32* %7, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
