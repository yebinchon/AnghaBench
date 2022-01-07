; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_so_reuseport_lb_test.c_lb_simple_accept_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_so_reuseport_lb_test.c_lb_simple_accept_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"calloc() failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"socket() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"connect() failed: %s\00", align 1
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"accept() failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"close() failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"uneven balancing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i32*, i64, i32)* @lb_simple_accept_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lb_simple_accept_loop(i32 %0, %struct.sockaddr* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %9, align 8
  %20 = udiv i64 %18, %19
  %21 = udiv i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32* @calloc(i64 %23, i32 4)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @strerror(i64 %28)
  %30 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %106, %5
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %10, align 4
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %115

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i32 @socket(i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 @strerror(i64 %42)
  %44 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @connect(i32 %45, %struct.sockaddr* %46, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* @errno, align 8
  %55 = call i32 @strerror(i64 %54)
  %56 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %102, %35
  store i64 0, i64* %11, align 8
  br label %58

58:                                               ; preds = %98, %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @accept(i32 %66, i32* null, i32* null)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @EWOULDBLOCK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EAGAIN, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ true, %70 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* @errno, align 8
  %82 = call i32 @strerror(i64 %81)
  %83 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %98

84:                                               ; preds = %62
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @close(i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* @errno, align 8
  %91 = call i32 @strerror(i64 %90)
  %92 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %101

98:                                               ; preds = %78
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %58

101:                                              ; preds = %84, %58
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %57, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @close(i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* @errno, align 8
  %113 = call i32 @strerror(i64 %112)
  %114 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %31

115:                                              ; preds = %31
  store i64 0, i64* %11, align 8
  br label %116

116:                                              ; preds = %129, %115
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32*, i32** %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp sgt i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %129

129:                                              ; preds = %120
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %116

132:                                              ; preds = %116
  ret void
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
