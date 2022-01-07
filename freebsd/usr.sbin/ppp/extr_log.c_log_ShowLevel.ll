; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_ShowLevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_ShowLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Log:  \00", align 1
@LogMIN = common dso_local global i32 0, align 4
@LogMAX = common dso_local global i32 0, align 4
@LOG_KEPT_SYSLOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\0ALocal:\00", align 1
@LOG_KEPT_LOCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_ShowLevel(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @LogMIN, align 4
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LogMAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @log_IsKept(i32 %14)
  %16 = load i32, i32* @LOG_KEPT_SYSLOG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @log_Name(i32 %23)
  %25 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %32 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @LogMIN, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %59, %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @LogMAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %43 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @log_IsKeptLocal(i32 %41, i32 %46)
  %48 = load i32, i32* @LOG_KEPT_LOCAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %53 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @log_Name(i32 %55)
  %57 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @prompt_Printf(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32 @log_IsKept(i32) #1

declare dso_local i32 @log_Name(i32) #1

declare dso_local i32 @log_IsKeptLocal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
