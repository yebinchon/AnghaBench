; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/net/extr_listen.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/net/extr_listen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PORT = common dso_local global i32 0, align 4
@LISTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"p:l:\00", align 1
@optarg = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not bind to INADDR_ANY:%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to listen with depth of %d\0A\00", align 1
@RECV_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Late connection at %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"recvd %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @PORT, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @LISTEN, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %29 [
    i32 112, label %22
    i32 108, label %25
    i32 104, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @atoi(i32 %23)
  store i32 %24, i32* %10, align 4
  br label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @atoi(i32 %26)
  store i32 %27, i32* %11, align 4
  br label %31

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %20, %28
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %25, %22
  br label %15

32:                                               ; preds = %15
  %33 = call i32 @bzero(%struct.sockaddr_in* %12, i32 16)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i32 16, i32* %34, align 4
  %35 = load i32, i32* @AF_INET, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @INADDR_ANY, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load i32, i32* @SOCK_STREAM, align 4
  %45 = call i32 @socket(i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %48 = call i64 @bind(i32 %46, %struct.sockaddr* %47, i32 16)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %32
  %51 = load i32, i32* @EX_OSERR, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %32
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @listen(i32 %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @EX_OSERR, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %74, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @accept(i32 %65, i32* null, i32* null)
  store i32 %66, i32* %8, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @RECV_LIMIT, align 4
  %71 = icmp slt i32 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %64

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @listen(i32 %80, i32 0)
  br label %82

82:                                               ; preds = %95, %79
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @accept(i32 %83, i32* null, i32* null)
  store i32 %84, i32* %8, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @RECV_LIMIT, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = icmp sle i32 %87, %91
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i1 [ false, %82 ], [ %92, %86 ]
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %82

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @accept(i32 %101, i32* null, i32* null)
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
