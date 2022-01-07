; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_read_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_read_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_context = type { i32, i32, %struct.aiocb*, i32 }
%struct.aiocb = type { i32, %struct.sigevent, i64, i32, %struct.aiocb* }
%struct.sigevent = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"aio_read failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"aio failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"aio short read (%jd)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"buffer mismatched\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aio_context*, i64 (%struct.aiocb*)*, %struct.sigevent*)* @aio_read_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_read_test(%struct.aio_context* %0, i64 (%struct.aiocb*)* %1, %struct.sigevent* %2) #0 {
  %4 = alloca %struct.aio_context*, align 8
  %5 = alloca i64 (%struct.aiocb*)*, align 8
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.aiocb, align 8
  %8 = alloca i64, align 8
  store %struct.aio_context* %0, %struct.aio_context** %4, align 8
  store i64 (%struct.aiocb*)* %1, i64 (%struct.aiocb*)** %5, align 8
  store %struct.sigevent* %2, %struct.sigevent** %6, align 8
  %9 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %10 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %9, i32 0, i32 2
  %11 = load %struct.aiocb*, %struct.aiocb** %10, align 8
  %12 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %13 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bzero(%struct.aiocb* %11, i32 %14)
  %16 = call i32 @bzero(%struct.aiocb* %7, i32 32)
  %17 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %18 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %17, i32 0, i32 2
  %19 = load %struct.aiocb*, %struct.aiocb** %18, align 8
  %20 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 4
  store %struct.aiocb* %19, %struct.aiocb** %20, align 8
  %21 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %22 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %26 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %31 = icmp ne %struct.sigevent* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 1
  %34 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %35 = bitcast %struct.sigevent* %33 to i8*
  %36 = bitcast %struct.sigevent* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  br label %37

37:                                               ; preds = %32, %3
  %38 = call i64 @aio_read(%struct.aiocb* %7)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i64 (%struct.aiocb*)*, i64 (%struct.aiocb*)** %5, align 8
  %46 = call i64 %45(%struct.aiocb* %7)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %56 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ATF_REQUIRE_EQ_MSG(i64 %54, i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %62 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %61, i32 0, i32 2
  %63 = load %struct.aiocb*, %struct.aiocb** %62, align 8
  %64 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %65 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %68 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @aio_test_buffer(%struct.aiocb* %63, i32 %66, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %53
  %73 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %53
  ret void
}

declare dso_local i32 @bzero(%struct.aiocb*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @aio_read(%struct.aiocb*) #1

declare dso_local i32 @atf_tc_fail(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i64, i32, i8*, i32) #1

declare dso_local i64 @aio_test_buffer(%struct.aiocb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
