; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/posixshm/extr_posixshm_test.c_gen_a_test_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/posixshm/extr_posixshm_test.c_gen_a_test_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_PATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/tmp.XXXXXX%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@test_path_idx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"mkstemp failed; errno=%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unlink failed; errno=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gen_a_test_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_a_test_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @TEST_PATH_LEN, align 4
  %5 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  %9 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %7 ], [ %9, %8 ]
  %12 = load i32, i32* @test_path_idx, align 4
  %13 = call i32 @snprintf(i8* %3, i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  %14 = load i32, i32* @test_path_idx, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @test_path_idx, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @mkstemp(i8* %16)
  %18 = icmp ne i32 %17, -1
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @ATF_REQUIRE_MSG(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @unlink(i8* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @ATF_REQUIRE_MSG(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
