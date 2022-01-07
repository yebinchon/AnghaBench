; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_pretty.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_pretty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }
%struct.group = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"uid\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"groups\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"login\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"uid\09%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"euid\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"euid\09%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"rgid\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rgid\09%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*)* @pretty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %7 = load %struct.passwd*, %struct.passwd** %2, align 8
  %8 = icmp ne %struct.passwd* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.passwd*, %struct.passwd** %2, align 8
  %11 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.passwd*, %struct.passwd** %2, align 8
  %16 = call i32 @group(%struct.passwd* %15, i32 1)
  br label %85

17:                                               ; preds = %1
  %18 = call i8* (...) @getlogin()
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 (...) @getuid()
  store i32 %23, i32* %5, align 4
  %24 = call %struct.passwd* @getpwuid(i32 %23)
  store %struct.passwd* %24, %struct.passwd** %2, align 8
  %25 = load %struct.passwd*, %struct.passwd** %2, align 8
  %26 = icmp eq %struct.passwd* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.passwd*, %struct.passwd** %2, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %22
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.passwd*, %struct.passwd** %2, align 8
  %39 = icmp ne %struct.passwd* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.passwd*, %struct.passwd** %2, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = call i32 (...) @geteuid()
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.passwd* @getpwuid(i32 %53)
  store %struct.passwd* %54, %struct.passwd** %2, align 8
  %55 = icmp ne %struct.passwd* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.passwd*, %struct.passwd** %2, align 8
  %58 = getelementptr inbounds %struct.passwd, %struct.passwd* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %48
  %66 = call i32 (...) @getgid()
  store i32 %66, i32* %5, align 4
  %67 = call i32 (...) @getegid()
  store i32 %67, i32* %4, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = call %struct.group* @getgrgid(i32 %70)
  store %struct.group* %71, %struct.group** %3, align 8
  %72 = icmp ne %struct.group* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.group*, %struct.group** %3, align 8
  %75 = getelementptr inbounds %struct.group, %struct.group* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  br label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %65
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %84 = call i32 @group(%struct.passwd* null, i32 1)
  br label %85

85:                                               ; preds = %82, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @group(%struct.passwd*, i32) #1

declare dso_local i8* @getlogin(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @getegid(...) #1

declare dso_local %struct.group* @getgrgid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
