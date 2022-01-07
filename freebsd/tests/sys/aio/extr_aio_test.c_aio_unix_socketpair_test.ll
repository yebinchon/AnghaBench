; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_unix_socketpair_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_unix_socketpair_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32 }
%struct.aio_context = type { i32 }
%struct.rusage = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"socketpair failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@UNIX_SOCKETPAIR_LEN = common dso_local global i32 0, align 4
@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"getrusage failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sigevent*)* @aio_unix_socketpair_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_unix_socketpair_test(i32 %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent*, align 8
  %5 = alloca %struct.aio_context, align 4
  %6 = alloca %struct.rusage, align 8
  %7 = alloca %struct.rusage, align 8
  %8 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store %struct.sigevent* %1, %struct.sigevent** %4, align 8
  %9 = call i32 @ATF_REQUIRE_KERNEL_MODULE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @PF_UNIX, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %13 = call i32 @socketpair(i32 %10, i32 %11, i32 0, i32* %12)
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @ATF_REQUIRE_MSG(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNIX_SOCKETPAIR_LEN, align 4
  %24 = call i32 @aio_context_init(%struct.aio_context* %5, i32 %20, i32 %22, i32 %23)
  %25 = load i32, i32* @RUSAGE_SELF, align 4
  %26 = call i32 @getrusage(i32 %25, %struct.rusage* %6)
  %27 = icmp ne i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @ATF_REQUIRE_MSG(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %34 = call i32 @aio_write_test(%struct.aio_context* %5, i32 %32, %struct.sigevent* %33)
  %35 = load i32, i32* @RUSAGE_SELF, align 4
  %36 = call i32 @getrusage(i32 %35, %struct.rusage* %7)
  %37 = icmp ne i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @ATF_REQUIRE_MSG(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.rusage, %struct.rusage* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ATF_REQUIRE(i32 %48)
  %50 = bitcast %struct.rusage* %6 to i8*
  %51 = bitcast %struct.rusage* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %54 = call i32 @aio_read_test(%struct.aio_context* %5, i32 %52, %struct.sigevent* %53)
  %55 = load i32, i32* @RUSAGE_SELF, align 4
  %56 = call i32 @getrusage(i32 %55, %struct.rusage* %7)
  %57 = icmp ne i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @ATF_REQUIRE_MSG(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.rusage, %struct.rusage* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = icmp eq i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ATF_REQUIRE(i32 %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @close(i32 %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @close(i32 %74)
  ret void
}

declare dso_local i32 @ATF_REQUIRE_KERNEL_MODULE(i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @aio_context_init(%struct.aio_context*, i32, i32, i32) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @aio_write_test(%struct.aio_context*, i32, %struct.sigevent*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aio_read_test(%struct.aio_context*, i32, %struct.sigevent*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
