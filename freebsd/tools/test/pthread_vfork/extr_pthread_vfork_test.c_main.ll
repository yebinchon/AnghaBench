; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/pthread_vfork/extr_pthread_vfork_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/pthread_vfork/extr_pthread_vfork_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@NUM_THREADS = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not sigaction(SIGCHLD)\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@vfork_test = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @NUM_THREADS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = call i32 @memset(%struct.sigaction* %4, i32 0, i32 4)
  %13 = load i32, i32* @sighandler, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @SIGCHLD, align 4
  %16 = call i32 @sigaction(i32 %15, %struct.sigaction* %4, i32* null)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %0
  %21 = call i32 @sigemptyset(i32* %5)
  %22 = load i32, i32* @SIGCHLD, align 4
  %23 = call i32 @sigaddset(i32* %5, i32 %22)
  %24 = load i32, i32* @SIG_BLOCK, align 4
  %25 = call i32 @sigprocmask(i32 %24, i32* %5, i32* null)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %20
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @NUM_THREADS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %11, i64 %36
  %38 = load i32, i32* @vfork_test, align 4
  %39 = call i32 @pthread_create(i32* %37, i32* null, i32 %38, i32* %7)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @errc(i32 1, i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %30

49:                                               ; preds = %30
  %50 = call i32 (...) @pause()
  store i32 0, i32* %1, align 4
  %51 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #2

declare dso_local i32 @errc(i32, i32, i8*) #2

declare dso_local i32 @pause(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
