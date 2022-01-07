; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_pipe_reader.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_pipe_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MSG_WAITALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"recv returned < 0\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"expected %zd=send(...) but got %zd\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Received data miscompare on packet %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @test_pipe_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_pipe_reader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %66, %1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i8* %22, i32 %30, i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSG_WAITALL, align 4
  %42 = call i64 @recv(i32 %37, i8* %17, i32 %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %29
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 (i32, i32, i8*, i32, ...) @ATF_CHECK_EQ_MSG(i32 %51, i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcmp(i8* %22, i8* %17, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i32, i8*, i32, ...) @ATF_CHECK_EQ_MSG(i32 0, i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %23

69:                                               ; preds = %23
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i32 @ATF_CHECK_EQ_MSG(i32, i32, i8*, i32, ...) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
