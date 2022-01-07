; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_write_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_write_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_context = type { i64, i32, i32 }
%struct.aiocb = type { i64, %struct.sigevent, i64, i32, i32 }
%struct.sigevent = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"aio_write failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"aio failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"aio short write (%jd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aio_context*, i64 (%struct.aiocb*)*, %struct.sigevent*)* @aio_write_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_write_test(%struct.aio_context* %0, i64 (%struct.aiocb*)* %1, %struct.sigevent* %2) #0 {
  %4 = alloca %struct.aio_context*, align 8
  %5 = alloca i64 (%struct.aiocb*)*, align 8
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.aiocb, align 8
  %8 = alloca i64, align 8
  store %struct.aio_context* %0, %struct.aio_context** %4, align 8
  store i64 (%struct.aiocb*)* %1, i64 (%struct.aiocb*)** %5, align 8
  store %struct.sigevent* %2, %struct.sigevent** %6, align 8
  %9 = call i32 @bzero(%struct.aiocb* %7, i32 32)
  %10 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %11 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %15 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %19 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %24 = icmp ne %struct.sigevent* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %7, i32 0, i32 1
  %27 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %28 = bitcast %struct.sigevent* %26 to i8*
  %29 = bitcast %struct.sigevent* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 4, i1 false)
  br label %30

30:                                               ; preds = %25, %3
  %31 = call i64 @aio_write(%struct.aiocb* %7)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i64 (%struct.aiocb*)*, i64 (%struct.aiocb*)** %5, align 8
  %39 = call i64 %38(%struct.aiocb* %7)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.aio_context*, %struct.aio_context** %4, align 8
  %49 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @bzero(%struct.aiocb*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @aio_write(%struct.aiocb*) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
