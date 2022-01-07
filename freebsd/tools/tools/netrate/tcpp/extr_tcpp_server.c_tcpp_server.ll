; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_server.c_tcpp_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_server.c_tcpp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pflag = common dso_local global i32 0, align 4
@pid_list = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"malloc pid_list\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@CPUSTATES = common dso_local global i32 0, align 4
@CP_IDLE = common dso_local global i64 0, align 8
@CP_INTR = common dso_local global i64 0, align 8
@CP_NICE = common dso_local global i64 0, align 8
@CP_SYS = common dso_local global i64 0, align 8
@CP_USER = common dso_local global i64 0, align 8
@SYSCTLNAME_CPTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpp_server() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @pflag, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 8, %4
  %6 = trunc i64 %5 to i32
  %7 = call i64* @malloc(i32 %6)
  store i64* %7, i64** @pid_list, align 8
  %8 = load i64*, i64** @pid_list, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i64*, i64** @pid_list, align 8
  %14 = load i32, i32* @pflag, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @bzero(i64* %13, i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %67, %12
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @pflag, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  %24 = call i64 (...) @fork()
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %49, %27
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @pflag, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i64*, i64** @pid_list, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i64*, i64** @pid_list, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @SIGKILL, align 4
  %47 = call i32 @kill(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %29

52:                                               ; preds = %29
  %53 = call i32 @exit(i32 -1) #3
  unreachable

54:                                               ; preds = %23
  %55 = load i64, i64* %1, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @tcpp_server_worker(i32 %58)
  %60 = call i32 @exit(i32 0) #3
  unreachable

61:                                               ; preds = %54
  %62 = load i64, i64* %1, align 8
  %63 = load i64*, i64** @pid_list, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %19

70:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %99, %70
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @pflag, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load i64*, i64** @pid_list, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %96, %82
  %84 = load i64*, i64** @pid_list, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @waitpid(i64 %88, i32* null, i32 0)
  %90 = load i64*, i64** @pid_list, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %83

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %2, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %2, align 4
  br label %71

102:                                              ; preds = %71
  ret void
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @bzero(i64*, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @kill(i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @tcpp_server_worker(i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
