; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_utils.c_check_auditpipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_utils.c_check_auditpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }
%struct.timespec = type { i64, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Auditpipe returned an unknown event %#x\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%s not found in auditpipe within the time limit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Poll: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Poll returned too many file descriptors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pollfd*, i8*, i32*)* @check_auditpipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_auditpipe(%struct.pollfd* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  store %struct.pollfd* %0, %struct.pollfd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %11 = call i32 @clock_gettime(i32 %10, %struct.timespec* %8)
  %12 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 10
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  br label %19

19:                                               ; preds = %62, %3
  %20 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %21 = call i32 @clock_gettime(i32 %20, %struct.timespec* %7)
  %22 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %21)
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %24, %26
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %30 = call i32 @ppoll(%struct.pollfd* %29, i32 1, %struct.timespec* %9, i32* null)
  switch i32 %30, label %60 [
    i32 1, label %31
    i32 0, label %53
    i32 -1, label %56
  ]

31:                                               ; preds = %19
  %32 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i64 0
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @POLLIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @get_records(i8* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  ret void

45:                                               ; preds = %39
  br label %52

46:                                               ; preds = %31
  %47 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i64 0
  %49 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %45
  br label %62

53:                                               ; preds = %19
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %62

56:                                               ; preds = %19
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %62

60:                                               ; preds = %19
  %61 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56, %53, %52
  br label %19
}

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @ppoll(%struct.pollfd*, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @get_records(i8*, i32*) #1

declare dso_local i32 @atf_tc_fail(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
