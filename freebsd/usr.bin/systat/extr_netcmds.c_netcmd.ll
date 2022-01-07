; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_netcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_netcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@CMDLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"which proto?\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: Unknown protocol.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"protos\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"hosts\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"show what?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netcmd(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @prefix(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @CMDLINE, align 4
  %16 = call i32 @move(i32 %15, i32 0)
  %17 = call i32 (...) @clrtoeol()
  %18 = call i32 @addstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %27

19:                                               ; preds = %9
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @selectproto(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %14
  store i32 1, i32* %3, align 4
  br label %89

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @prefix(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @prefix(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @prefix(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 @changeitems(i8* %37, i64 %39)
  store i32 1, i32* %3, align 4
  br label %89

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @prefix(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i32 @selectproto(i8* null)
  %47 = call i32 @selecthost(i32 0, i32 0)
  %48 = call i32 @selectport(i32 -1, i32 0)
  store i32 1, i32* %3, align 4
  br label %89

49:                                               ; preds = %41
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @prefix(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load i32, i32* @CMDLINE, align 4
  %55 = call i32 @move(i32 %54, i32 0)
  %56 = call i32 (...) @clrtoeol()
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = call i32 (...) @showprotos()
  %63 = call i32 (...) @showhosts()
  %64 = call i32 (...) @showports()
  store i32 1, i32* %3, align 4
  br label %89

65:                                               ; preds = %53
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @prefix(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (...) @showprotos()
  br label %87

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @prefix(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (...) @showhosts()
  br label %86

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @prefix(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 (...) @showports()
  br label %85

83:                                               ; preds = %77
  %84 = call i32 @addstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86, %69
  store i32 1, i32* %3, align 4
  br label %89

88:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %61, %45, %36, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @prefix(i8*, i8*) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @addstr(i8*) #1

declare dso_local i32 @selectproto(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @changeitems(i8*, i64) #1

declare dso_local i32 @selecthost(i32, i32) #1

declare dso_local i32 @selectport(i32, i32) #1

declare dso_local i32 @showprotos(...) #1

declare dso_local i32 @showhosts(...) #1

declare dso_local i32 @showports(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
