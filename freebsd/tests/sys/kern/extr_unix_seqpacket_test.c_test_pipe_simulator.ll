; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_pipe_simulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_pipe_simulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"send failed\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"expected %zd=send(...) but got %zd\00", align 1
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Packets were lost!\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"recv failed\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"expected %zd=recv(...) but got %zd\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Received data miscompare\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_pipe_simulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pipe_simulator(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MIN(i32 %17, i32 %18)
  %20 = sdiv i32 %19, 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  store i32 1, i32* %16, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = call i32 @do_socketpair_nonblocking(i32* %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_SNDBUF, align 4
  %37 = call i32 @setsockopt(i32 %34, i32 %35, i32 %36, i32* %3, i32 4)
  %38 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %37)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SOL_SOCKET, align 4
  %42 = load i32, i32* @SO_RCVBUF, align 4
  %43 = call i32 @setsockopt(i32 %40, i32 %41, i32 %42, i32* %4, i32 4)
  %44 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MAX(i32 %45, i32 %46)
  %48 = mul nsw i32 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %138, %2
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ true, %51 ], [ %58, %55 ]
  br i1 %60, label %61, label %139

61:                                               ; preds = %59
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memset(i8* %24, i32 %69, i32 %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MSG_EOR, align 4
  %76 = call i32 @send(i32 %73, i8* %24, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %68
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EAGAIN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @EMSGSIZE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  store i32 0, i32* %16, align 4
  br label %91

88:                                               ; preds = %83
  %89 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %90 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %87
  br label %100

92:                                               ; preds = %68
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 (i32, i32, i8*, ...) @ATF_CHECK_EQ_MSG(i32 %93, i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %92, %91
  br label %138

101:                                              ; preds = %64, %61
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @MSG_WAITALL, align 4
  %106 = call i32 @recv(i32 %103, i8* %27, i32 %104, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %101
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @EAGAIN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  store i32 1, i32* %16, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @ATF_REQUIRE_MSG(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %122

119:                                              ; preds = %109
  %120 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %121 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %113
  br label %137

123:                                              ; preds = %101
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 (i32, i32, i8*, ...) @ATF_CHECK_EQ_MSG(i32 %124, i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @memset(i8* %30, i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @memcmp(i8* %30, i8* %27, i32 %132)
  %134 = call i32 (i32, i32, i8*, ...) @ATF_CHECK_EQ_MSG(i32 0, i32 %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %123, %122
  br label %138

138:                                              ; preds = %137, %100
  br label %51

139:                                              ; preds = %59
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @close(i32 %141)
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @close(i32 %144)
  %146 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %146)
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @do_socketpair_nonblocking(i32*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @ATF_CHECK_EQ_MSG(i32, i32, i8*, ...) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
