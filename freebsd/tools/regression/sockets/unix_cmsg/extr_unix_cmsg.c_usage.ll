; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_unix_cmsg.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_unix_cmsg.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [66 x i8] c"usage: %s [-dh] [-n num] [-s size] [-t type] [-z value] [testno]\0A\00", align 1
@.str.1 = private unnamed_addr constant [470 x i8] c"\0A Options are:\0A  -d            Output debugging information\0A  -h            Output the help message and exit\0A  -n num        Number of messages to send\0A  -s size       Specify size of data for IPC\0A  -t type       Specify socket type (stream, dgram) for tests\0A  -z value      Do not send data in a message (bit 0x1), do not send\0A                data array associated with a cmsghdr structure (bit 0x2)\0A  testno        Run one test by its number (require the -t option)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" Available tests for stream sockets:\0A\00", align 1
@TEST_STREAM_TBL_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"   %u: %s\0A\00", align 1
@test_stream_tbl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"\0A Available tests for datagram sockets:\0A\00", align 1
@TEST_DGRAM_TBL_SIZE = common dso_local global i64 0, align 8
@test_dgram_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* (...) @getprogname()
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([470 x i8], [470 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %24, %9
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @TEST_STREAM_TBL_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_stream_tbl, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %17, i8* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %12

27:                                               ; preds = %12
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %41, %27
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @TEST_DGRAM_TBL_SIZE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_dgram_tbl, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %34, i8* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %29

44:                                               ; preds = %8, %29
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
