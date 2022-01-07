; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_bthidcontrol.c_do_bthid_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_bthidcontrol.c_do_bthid_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bthid_command = type { i32 (i32, i32, i8**)*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Supported commands:\0A\00", align 1
@sdp_commands = common dso_local global i32 0, align 4
@hid_commands = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\0AFor more information use 'help command'\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown command: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not execute command \22%s\22. %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Usage: %s\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @do_bthid_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bthid_command(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bthid_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  store %struct.bthid_command* null, %struct.bthid_command** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @sdp_commands, align 4
  %29 = call i32 @print_bthid_command(i32 %28)
  %30 = load i32, i32* @hid_commands, align 4
  %31 = call i32 @print_bthid_command(i32 %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 129, i32* %4, align 4
  br label %91

34:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @sdp_commands, align 4
  %41 = call %struct.bthid_command* @find_bthid_command(i8* %39, i32 %40)
  store %struct.bthid_command* %41, %struct.bthid_command** %9, align 8
  %42 = load %struct.bthid_command*, %struct.bthid_command** %9, align 8
  %43 = icmp eq %struct.bthid_command* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @hid_commands, align 4
  %47 = call %struct.bthid_command* @find_bthid_command(i8* %45, i32 %46)
  store %struct.bthid_command* %47, %struct.bthid_command** %9, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.bthid_command*, %struct.bthid_command** %9, align 8
  %50 = icmp eq %struct.bthid_command* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @stdout, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  store i32 131, i32* %4, align 4
  br label %91

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load %struct.bthid_command*, %struct.bthid_command** %9, align 8
  %60 = getelementptr inbounds %struct.bthid_command, %struct.bthid_command* %59, i32 0, i32 0
  %61 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %7, align 8
  %67 = call i32 %61(i32 %62, i32 %64, i8** %66)
  store i32 %67, i32* %10, align 4
  br label %69

68:                                               ; preds = %55
  store i32 128, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %87 [
    i32 129, label %71
    i32 130, label %71
    i32 131, label %72
    i32 128, label %78
  ]

71:                                               ; preds = %69, %69
  br label %89

72:                                               ; preds = %69
  %73 = load i32, i32* @stdout, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i8* @strerror(i32 %75)
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %76)
  br label %89

78:                                               ; preds = %69
  %79 = load i32, i32* @stdout, align 4
  %80 = load %struct.bthid_command*, %struct.bthid_command** %9, align 8
  %81 = getelementptr inbounds %struct.bthid_command, %struct.bthid_command* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.bthid_command*, %struct.bthid_command** %9, align 8
  %84 = getelementptr inbounds %struct.bthid_command, %struct.bthid_command* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %85)
  br label %89

87:                                               ; preds = %69
  %88 = call i32 @assert(i32 0)
  br label %89

89:                                               ; preds = %87, %78, %72, %71
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %51, %25
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_bthid_command(i32) #1

declare dso_local %struct.bthid_command* @find_bthid_command(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
