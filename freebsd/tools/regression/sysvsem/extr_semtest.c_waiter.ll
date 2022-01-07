; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_waiter.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sembuf = type { i32, i8*, i64 }

@semkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"waiter: semget\00", align 1
@SEM_UNDO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"waiter: semop -1\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"WOO!  GOT THE SEMAPHORE!\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"waiter: semop +1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waiter() #0 {
  %1 = alloca %struct.sembuf, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @semkey, align 4
  %4 = call i32 @semget(i32 %3, i32 1, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %1, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %1, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load i8*, i8** @SEM_UNDO, align 8
  %12 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %1, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @semop(i32 %13, %struct.sembuf* %1, i32 1)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @sleep(i32 1)
  %21 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %1, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %1, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i8*, i8** @SEM_UNDO, align 8
  %24 = getelementptr inbounds %struct.sembuf, %struct.sembuf* %1, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @semop(i32 %25, %struct.sembuf* %1, i32 1)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %18
  %31 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @semget(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @semop(i32, %struct.sembuf*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sleep(i32) #1

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
