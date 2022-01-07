; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_upload-archive.c_cmd_upload_archive.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_upload-archive.c_cmd_upload_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@upload_archive_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"upload-archive--writer\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"NACK unable to spawn subprocess\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"upload-archive: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ACK\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"poll failed resuming\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@deadchild = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_upload_archive(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.child_process, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.pollfd], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  %11 = load i8**, i8*** %5, align 8
  store i8** %11, i8*** %10, align 8
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @upload_archive_usage, align 4
  %25 = call i32 @usage(i32 %24)
  br label %26

26:                                               ; preds = %23, %17, %3
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  store i32 -1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  store i32 -1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  store i32 1, i32* %31, align 8
  %32 = call i64 @start_command(%struct.child_process* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %8, align 4
  %36 = call i32 @packet_write_fmt(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %26
  %41 = call i32 @packet_write_fmt(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @packet_flush(i32 1)
  br label %43

43:                                               ; preds = %40, %68, %82, %97
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 0
  %47 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 16
  %48 = load i32, i32* @POLLIN, align 4
  %49 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 0
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 1
  %54 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @POLLIN, align 4
  %56 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 1
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 0
  %59 = call i64 @poll(%struct.pollfd* %58, i32 2, i32 -1)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %43
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @EINTR, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 @error_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %67 = call i32 @sleep(i32 1)
  br label %68

68:                                               ; preds = %65, %61
  br label %43

69:                                               ; preds = %43
  %70 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 1
  %71 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @POLLIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 1
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @process_input(i32 %79, i32 2)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %43

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %69
  %85 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 0
  %86 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @POLLIN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %9, i64 0, i64 0
  %93 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = call i64 @process_input(i32 %94, i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %43

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %84
  %100 = call i64 @finish_command(%struct.child_process* %7)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @deadchild, align 4
  %104 = call i32 @error_clnt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = call i32 @packet_flush(i32 1)
  br label %107

107:                                              ; preds = %105
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @packet_write_fmt(i32, i8*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @error_errno(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @process_input(i32, i32) #1

declare dso_local i64 @finish_command(%struct.child_process*) #1

declare dso_local i32 @error_clnt(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
