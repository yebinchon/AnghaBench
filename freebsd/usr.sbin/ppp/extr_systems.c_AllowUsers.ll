; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_AllowUsers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_AllowUsers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32* }
%struct.passwd = type { i8* }

@userok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AllowUsers(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %5 = load i32, i32* @userok, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* @userok, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = call i32 (...) @ID0realuid()
  %10 = call %struct.passwd* @getpwuid(i32 %9)
  store %struct.passwd* %10, %struct.passwd** %4, align 8
  %11 = load %struct.passwd*, %struct.passwd** %4, align 8
  %12 = icmp ne %struct.passwd* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %15 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %48, %13
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %25 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %23
  %34 = load %struct.passwd*, %struct.passwd** %4, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcmp(i8* %36, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33, %23
  store i32 1, i32* @userok, align 4
  br label %51

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %17

51:                                               ; preds = %46, %17
  br label %52

52:                                               ; preds = %51, %8
  %53 = call i32 (...) @endpwent()
  ret i32 0
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @ID0realuid(...) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
