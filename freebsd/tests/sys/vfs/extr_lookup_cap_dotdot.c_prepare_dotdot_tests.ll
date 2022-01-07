; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/vfs/extr_lookup_cap_dotdot.c_prepare_dotdot_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/vfs/extr_lookup_cap_dotdot.c_prepare_dotdot_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@abspath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s/testdir/d1/f1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"testdir\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@dirfd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"d1/d2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"d1/d2/d3\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"d1/f1\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"d1/d2/f2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"d1/d2/d3/f3\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"../testdir/d1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"lup\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"d1/d2/d3/ld1\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"../../f1\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"d1/d2/d3/lf1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_dotdot_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_dotdot_tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MAXPATHLEN, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i8, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = trunc i64 %4 to i32
  %8 = call i32* @getcwd(i8* %6, i32 %7)
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ATF_REQUIRE(i32 %10)
  %12 = call i32 @asprintf(i32* @abspath, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %6)
  %13 = call i64 @mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 %18, i32* @dirfd, align 4
  %19 = icmp sge i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_REQUIRE(i32 %20)
  %22 = load i32, i32* @dirfd, align 4
  %23 = call i64 @mkdirat(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  %27 = load i32, i32* @dirfd, align 4
  %28 = call i64 @mkdirat(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ATF_REQUIRE(i32 %30)
  %32 = load i32, i32* @dirfd, align 4
  %33 = call i64 @mkdirat(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ATF_REQUIRE(i32 %35)
  %37 = load i32, i32* @dirfd, align 4
  %38 = call i32 @touchat(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32, i32* @dirfd, align 4
  %40 = call i32 @touchat(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* @dirfd, align 4
  %42 = call i32 @touchat(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i32, i32* @dirfd, align 4
  %44 = call i64 @symlinkat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ATF_REQUIRE(i32 %46)
  %48 = load i32, i32* @dirfd, align 4
  %49 = call i64 @symlinkat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ATF_REQUIRE(i32 %51)
  %53 = load i32, i32* @dirfd, align 4
  %54 = call i64 @symlinkat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ATF_REQUIRE(i32 %56)
  %58 = load i32, i32* @dirfd, align 4
  %59 = call i64 @symlinkat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @ATF_REQUIRE(i32 %61)
  %63 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i32 @asprintf(i32*, i8*, i8*) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @mkdirat(i32, i8*, i32) #2

declare dso_local i32 @touchat(i32, i8*) #2

declare dso_local i64 @symlinkat(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
