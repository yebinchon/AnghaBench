; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_utils.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_utils.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/dev/auditpipe\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"service auditd onestatus || \09{ service auditd onestart && touch started_auditd ; }\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"started_auditd\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"audit startup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @setup(%struct.pollfd* %0, i8* %1) #0 {
  %3 = alloca %struct.pollfd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @get_audit_mask(i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 @get_audit_mask(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i64 0
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = icmp ne i32 %12, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ATF_REQUIRE(i32 %17)
  %19 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i64 0
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @fdopen(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  %27 = load i32, i32* @POLLIN, align 4
  %28 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i64 0
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @_IONBF, align 4
  %33 = call i32 @setvbuf(i32* %31, i32* null, i32 %32, i32 0)
  %34 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %33)
  %35 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %35, i64 0
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_preselect_mode(i32 %38, i32* %6)
  %40 = call i32 @system(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %40)
  %42 = call i64 @atf_utils_file_exists(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @check_audit_startup(%struct.pollfd* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %46)
  br label %48

48:                                               ; preds = %44, %2
  %49 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %49, i64 0
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_preselect_mode(i32 %52, i32* %5)
  %54 = load i32*, i32** %7, align 8
  ret i32* %54
}

declare dso_local i32 @get_audit_mask(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @set_preselect_mode(i32, i32*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i64 @atf_utils_file_exists(i8*) #1

declare dso_local i32 @check_audit_startup(%struct.pollfd*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
