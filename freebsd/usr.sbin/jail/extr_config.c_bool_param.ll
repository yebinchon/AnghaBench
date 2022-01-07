; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_bool_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_bool_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfparam = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@cfstrings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bool_param(%struct.cfparam* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfparam*, align 8
  %4 = alloca i8*, align 8
  store %struct.cfparam* %0, %struct.cfparam** %3, align 8
  %5 = load %struct.cfparam*, %struct.cfparam** %3, align 8
  %6 = icmp eq %struct.cfparam* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

8:                                                ; preds = %1
  %9 = load %struct.cfparam*, %struct.cfparam** %3, align 8
  %10 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 46)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  br label %22

18:                                               ; preds = %8
  %19 = load %struct.cfparam*, %struct.cfparam** %3, align 8
  %20 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i8* [ %17, %15 ], [ %21, %18 ]
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.cfparam*, %struct.cfparam** %3, align 8
  %29 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %28, i32 0, i32 1
  %30 = call i64 @TAILQ_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %22
  %33 = load %struct.cfparam*, %struct.cfparam** %3, align 8
  %34 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %33, i32 0, i32 1
  %35 = load i32, i32* @cfstrings, align 4
  %36 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcasecmp(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.cfparam*, %struct.cfparam** %3, align 8
  %43 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %42, i32 0, i32 1
  %44 = load i32, i32* @cfstrings, align 4
  %45 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strtol(i32 %47, i32* null, i32 10)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %32, %22
  %51 = phi i1 [ true, %32 ], [ true, %22 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  %53 = xor i32 %27, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %7
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
