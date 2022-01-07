; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_commands.c_renice_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_commands.c_renice_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_RESET = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@PRIO_MAX = common dso_local global i32 0, align 4
@bad_pri_value = common dso_local global i8* null, align 8
@no_proc_specified = common dso_local global i8* null, align 8
@PRIO_PROCESS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @renice_procs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @ERR_RESET, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 45
  %12 = zext i1 %11 to i32
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @scanint(i8* %20, i32* %5)
  store i32 %21, i32* %6, align 4
  %22 = load i8, i8* %4, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PRIO_MIN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PRIO_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30, %27
  %39 = load i8*, i8** @bad_pri_value, align 8
  store i8* %39, i8** %2, align 8
  br label %71

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @next_field(i8* %41)
  store i8* %42, i8** %3, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8*, i8** @no_proc_specified, align 8
  store i8* %45, i8** %2, align 8
  br label %71

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @scanint(i8* %48, i32* %6)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @ERROR(i8* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @PRIO_PROCESS, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @setpriority(i32 %55, i32 %56, i32 %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @ERROR(i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %3, align 8
  %67 = call i8* @next_field(i8* %66)
  store i8* %67, i8** %3, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %47, label %69

69:                                               ; preds = %65
  %70 = call i8* (...) @err_string()
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %69, %44, %38
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i32 @scanint(i8*, i32*) #1

declare dso_local i8* @next_field(i8*) #1

declare dso_local i32 @ERROR(i8*, i32) #1

declare dso_local i32 @setpriority(i32, i32, i32) #1

declare dso_local i8* @err_string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
