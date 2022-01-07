; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_ShowWho.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_ShowWho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32, %struct.TYPE_2__, %struct.prompt* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cmdargs = type { %struct.prompt* }

@promptlist = common dso_local global %struct.prompt* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ^Z\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_ShowWho(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.prompt*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %4 = load %struct.prompt*, %struct.prompt** @promptlist, align 8
  store %struct.prompt* %4, %struct.prompt** %3, align 8
  br label %5

5:                                                ; preds = %46, %1
  %6 = load %struct.prompt*, %struct.prompt** %3, align 8
  %7 = icmp ne %struct.prompt* %6, null
  br i1 %7, label %8, label %50

8:                                                ; preds = %5
  %9 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 0
  %11 = load %struct.prompt*, %struct.prompt** %10, align 8
  %12 = load %struct.prompt*, %struct.prompt** %3, align 8
  %13 = getelementptr inbounds %struct.prompt, %struct.prompt* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.prompt*, %struct.prompt** %3, align 8
  %17 = getelementptr inbounds %struct.prompt, %struct.prompt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.prompt*, %struct.prompt** %3, align 8
  %22 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 0
  %24 = load %struct.prompt*, %struct.prompt** %23, align 8
  %25 = icmp eq %struct.prompt* %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 0
  %29 = load %struct.prompt*, %struct.prompt** %28, align 8
  %30 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %8
  %32 = load %struct.prompt*, %struct.prompt** %3, align 8
  %33 = getelementptr inbounds %struct.prompt, %struct.prompt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 0
  %39 = load %struct.prompt*, %struct.prompt** %38, align 8
  %40 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %43 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %42, i32 0, i32 0
  %44 = load %struct.prompt*, %struct.prompt** %43, align 8
  %45 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41
  %47 = load %struct.prompt*, %struct.prompt** %3, align 8
  %48 = getelementptr inbounds %struct.prompt, %struct.prompt* %47, i32 0, i32 2
  %49 = load %struct.prompt*, %struct.prompt** %48, align 8
  store %struct.prompt* %49, %struct.prompt** %3, align 8
  br label %5

50:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
