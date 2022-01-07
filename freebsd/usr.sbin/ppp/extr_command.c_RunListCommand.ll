; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_RunListCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_RunListCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i8**, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@NatCommands = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"The alias command is deprecated\0A\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Use `%s help' to get a list or `%s help <option>' for syntax help.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s command must have arguments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @RunListCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RunListCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca i8*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  %12 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %13 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %11, i64 %16
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %8
  %21 = phi i8* [ %18, %8 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %19 ]
  store i8* %21, i8** %3, align 8
  %22 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NatCommands, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %20
  %30 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %31 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %34 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %32, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call signext i8 @tolower(i8 signext %40)
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 97
  br i1 %43, label %44, label %58

44:                                               ; preds = %29
  %45 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %51 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i64, i8*, ...) @prompt_Printf(i64 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @LogWARN, align 4
  %56 = call i32 (i32, i8*, ...) @log_Printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %29, %20
  %59 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %60 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %63 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %68 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %71 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %76 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %79 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @FindExec(i32 %69, i64 %74, i32 %77, i32 %80, i8** %83, i64 %86, i32 %89)
  br label %108

91:                                               ; preds = %58
  %92 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %93 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %98 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 (i64, i8*, ...) @prompt_Printf(i64 %99, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %100, i8* %101)
  br label %107

103:                                              ; preds = %91
  %104 = load i32, i32* @LogWARN, align 4
  %105 = load i8*, i8** %3, align 8
  %106 = call i32 (i32, i8*, ...) @log_Printf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %103, %96
  br label %108

108:                                              ; preds = %107, %66
  ret i32 0
}

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @prompt_Printf(i64, i8*, ...) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @FindExec(i32, i64, i32, i32, i8**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
