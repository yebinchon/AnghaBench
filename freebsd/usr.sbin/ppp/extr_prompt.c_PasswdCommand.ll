; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_PasswdCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_PasswdCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"passwd: Cannot specify without a prompt\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"passwd: Not required\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOCAL_AUTH = common dso_local global i32 0, align 4
@LOCAL_NO_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PasswdCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %6 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @LogWARN, align 4
  %11 = call i32 @log_Printf(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @LogWARN, align 4
  %21 = call i32 @log_Printf(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

22:                                               ; preds = %12
  %23 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %24 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %27 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %77

41:                                               ; preds = %31
  %42 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %43 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %54 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strcmp(i32 %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @LOCAL_AUTH, align 4
  %66 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  br label %76

70:                                               ; preds = %52
  %71 = load i32, i32* @LOCAL_NO_AUTH, align 4
  %72 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %73 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %40, %19, %9
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
