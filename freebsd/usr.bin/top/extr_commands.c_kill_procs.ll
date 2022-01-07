; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_commands.c_kill_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_commands.c_kill_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTERM = common dso_local global i32 0, align 4
@ERR_RESET = common dso_local global i32 0, align 4
@no_proc_specified = common dso_local global i8* null, align 8
@NSIG = common dso_local global i32 0, align 4
@invalid_signal_number = common dso_local global i8* null, align 8
@bad_signal_name = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kill_procs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @SIGTERM, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @ERR_RESET, align 4
  br label %9

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @isspace(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @next_field(i8* %24)
  store i8* %25, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** @no_proc_specified, align 8
  store i8* %28, i8** %2, align 8
  br label %84

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @scanint(i8* %37, i32* %5)
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NSIG, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %35
  %46 = load i8*, i8** @invalid_signal_number, align 8
  store i8* %46, i8** %2, align 8
  br label %84

47:                                               ; preds = %41
  br label %57

48:                                               ; preds = %29
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @signame_to_signum(i8* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i8*, i8** @bad_signal_name, align 8
  store i8* %55, i8** %2, align 8
  br label %84

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i8*, i8** %4, align 8
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %57, %17
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @scanint(i8* %61, i32* %6)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @ERROR(i8* %65, i32 0)
  br label %77

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @kill(i32 %68, i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @ERROR(i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @next_field(i8* %79)
  store i8* %80, i8** %3, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %60, label %82

82:                                               ; preds = %78
  %83 = call i8* (...) @err_string()
  store i8* %83, i8** %2, align 8
  br label %84

84:                                               ; preds = %82, %54, %45, %27
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @next_field(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @scanint(i8*, i32*) #1

declare dso_local i32 @signame_to_signum(i8*) #1

declare dso_local i32 @ERROR(i8*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i8* @err_string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
