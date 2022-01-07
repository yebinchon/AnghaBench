; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_NegotiateCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_NegotiateCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, i64, i32, i32 }

@NegotiateCommands = common dso_local global i64 0, align 8
@NEG_HISMASK = common dso_local global i32 0, align 4
@NEG_OPT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Use `%s ?' to get a list.\0A\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s command must have arguments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @NegotiateCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NegotiateCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %1
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %18, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @ident_cmd(i8* %25, i32* %5, i32* %6)
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* %26, i8** %27, align 16
  %28 = icmp eq i8* %26, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %109

30:                                               ; preds = %15
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  store i8* null, i8** %31, align 16
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %71, %30
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %35
  %42 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %43 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* %48, i8** %49, align 8
  %50 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %51 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @NegotiateCommands, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @NEG_HISMASK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %60

58:                                               ; preds = %41
  %59 = load i64, i64* @NEG_OPT_MAX, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i64 [ 0, %57 ], [ %59, %58 ]
  %62 = add nsw i64 %53, %61
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %64 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %65 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %68 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @FindExec(i32 %52, i64 %62, i32 2, i32 1, i8** %63, i64 %66, i32 %69)
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %35

74:                                               ; preds = %35
  br label %108

75:                                               ; preds = %1
  %76 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %77 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %86, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @prompt_Printf(i64 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %93)
  br label %107

95:                                               ; preds = %75
  %96 = load i32, i32* @LogWARN, align 4
  %97 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %98 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %101 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %99, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @log_Printf(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %95, %80
  br label %108

108:                                              ; preds = %107, %74
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %29
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i8* @ident_cmd(i8*, i32*, i32*) #1

declare dso_local i32 @FindExec(i32, i64, i32, i32, i8**, i64, i32) #1

declare dso_local i32 @prompt_Printf(i64, i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
