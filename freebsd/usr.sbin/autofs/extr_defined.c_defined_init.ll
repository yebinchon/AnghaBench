; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_defined.c_defined_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_defined.c_defined_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8*, i8*, i8*, i8*, i8* }

@defined_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ARCH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DOLLAR\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"OSNAME\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"OSREL\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"OSVERS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @defined_init() #0 {
  %1 = alloca %struct.utsname, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @TAILQ_INIT(i32* @defined_values)
  %4 = call i32 @uname(%struct.utsname* %1)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @defined_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @defined_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %16 = call i32 @defined_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @defined_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @defined_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @defined_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @defined_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %27)
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @defined_add(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
