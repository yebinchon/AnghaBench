; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_find_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_find_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { i8*, %struct.counters* }

@.str = private unnamed_addr constant [23 x i8] c"Can't find counter %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"We have:\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"- %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.counters* (%struct.counters*, i8*)* @find_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.counters* @find_counter(%struct.counters* %0, i8* %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.counters*, align 8
  %6 = alloca i32, align 4
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.counters*, %struct.counters** %3, align 8
  store %struct.counters* %7, %struct.counters** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.counters*, %struct.counters** %5, align 8
  %12 = icmp ne %struct.counters* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.counters*, %struct.counters** %5, align 8
  %15 = getelementptr inbounds %struct.counters, %struct.counters* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @strncmp(i8* %16, i8* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load %struct.counters*, %struct.counters** %5, align 8
  ret %struct.counters* %22

23:                                               ; preds = %13
  %24 = load %struct.counters*, %struct.counters** %5, align 8
  %25 = getelementptr inbounds %struct.counters, %struct.counters* %24, i32 0, i32 1
  %26 = load %struct.counters*, %struct.counters** %25, align 8
  store %struct.counters* %26, %struct.counters** %5, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.counters*, %struct.counters** %3, align 8
  store %struct.counters* %31, %struct.counters** %5, align 8
  br label %32

32:                                               ; preds = %35, %27
  %33 = load %struct.counters*, %struct.counters** %5, align 8
  %34 = icmp ne %struct.counters* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.counters*, %struct.counters** %5, align 8
  %37 = getelementptr inbounds %struct.counters, %struct.counters* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load %struct.counters*, %struct.counters** %5, align 8
  %41 = getelementptr inbounds %struct.counters, %struct.counters* %40, i32 0, i32 1
  %42 = load %struct.counters*, %struct.counters** %41, align 8
  store %struct.counters* %42, %struct.counters** %5, align 8
  br label %32

43:                                               ; preds = %32
  %44 = call i32 @exit(i32 -1) #3
  unreachable
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
