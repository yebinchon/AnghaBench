; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/tmpfs/extr_h_tools.c_sockets_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/tmpfs/extr_h_tools.c_sockets_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockets_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_un, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* @PF_LOCAL, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlcpy(i32 %24, i8* %27, i32 4)
  %29 = load i32, i32* @PF_UNIX, align 4
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %33 = call i32 @bind(i32 %31, %struct.sockaddr* %32, i32 8)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36, %19, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
