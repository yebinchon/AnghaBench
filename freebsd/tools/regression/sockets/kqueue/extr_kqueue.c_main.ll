; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..49\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"kqueue()\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PF_UNIX, SOCK_DGRAM\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"socketpair() 1\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"O_NONBLOCK\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fcntl() 1\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fnctl() 2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"PF_UNIX/SOCK_DGRAM\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sv[0]\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"close() 1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"sv[1]\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"close() 2\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"PF_UNIX, SOCK_STREAM\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"socketpair() 2\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"fcntl() 3\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"fcntl() 4\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"PF_UNIX/SOCK_STREAM\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"close() 3\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"close() 4\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"socketpair() 3\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"fcntl() 5\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"fcntl() 6\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"close() 5\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"close() 6\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"kq\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"close() 7\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @kqueue()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @fail(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* null, i8* null)
  br label %11

11:                                               ; preds = %8, %0
  %12 = call i32 @OK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @PF_UNIX, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %16 = call i32 @socketpair(i32 %13, i32 %14, i32 0, i32* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @fail(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* null)
  br label %21

21:                                               ; preds = %18, %11
  %22 = call i32 @OK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @F_SETFL, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = call i64 @fcntl(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @fail(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %21
  %33 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @F_SETFL, align 4
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = call i64 @fcntl(i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @fail(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %32
  %44 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %45 = load i32, i32* %2, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %47 = call i32 @test_evfilt_read(i32 %45, i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @fail(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %43
  %56 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @fail(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  %65 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %66 = load i32, i32* @PF_UNIX, align 4
  %67 = load i32, i32* @SOCK_STREAM, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %69 = call i32 @socketpair(i32 %66, i32 %67, i32 0, i32* %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @fail(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* null)
  br label %74

74:                                               ; preds = %71, %64
  %75 = call i32 @OK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @F_SETFL, align 4
  %79 = load i32, i32* @O_NONBLOCK, align 4
  %80 = call i64 @fcntl(i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @fail(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %74
  %86 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @F_SETFL, align 4
  %90 = load i32, i32* @O_NONBLOCK, align 4
  %91 = call i64 @fcntl(i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @fail(i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %85
  %97 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %98 = load i32, i32* %2, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %100 = call i32 @test_evfilt_read(i32 %98, i32* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 @fail(i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %96
  %109 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @close(i32 %111)
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @errno, align 4
  %116 = call i32 @fail(i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %108
  %118 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %119 = load i32, i32* @PF_UNIX, align 4
  %120 = load i32, i32* @SOCK_STREAM, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %122 = call i32 @socketpair(i32 %119, i32 %120, i32 0, i32* %121)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @fail(i32 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* null)
  br label %127

127:                                              ; preds = %124, %117
  %128 = call i32 @OK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @F_SETFL, align 4
  %132 = load i32, i32* @O_NONBLOCK, align 4
  %133 = call i64 @fcntl(i32 %130, i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* @errno, align 4
  %137 = call i32 @fail(i32 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %127
  %139 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @F_SETFL, align 4
  %143 = load i32, i32* @O_NONBLOCK, align 4
  %144 = call i64 @fcntl(i32 %141, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @fail(i32 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %138
  %150 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %151 = load i32, i32* %2, align 4
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %153 = call i32 @test_evfilt_write(i32 %151, i32* %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @close(i32 %155)
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @fail(i32 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %149
  %162 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @close(i32 %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* @errno, align 4
  %169 = call i32 @fail(i32 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %161
  %171 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %172 = load i32, i32* %2, align 4
  %173 = call i32 @close(i32 %172)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* @errno, align 4
  %177 = call i32 @fail(i32 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* null)
  br label %178

178:                                              ; preds = %175, %170
  %179 = call i32 @OK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @fail(i32, i8*, i8*, i8*) #1

declare dso_local i32 @OK(i8*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @test_evfilt_read(i32, i32*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @test_evfilt_write(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
