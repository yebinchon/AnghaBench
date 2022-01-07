; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_pause_sbt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_pause_sbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"pause_sbt: timeout must be >= 0\00", align 1
@tick_sbt = common dso_local global i64 0, align 8
@cold = common dso_local global i64 0, align 8
@curthread = common dso_local global i32* null, align 8
@thread0 = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i64 0, align 8
@SBT_1S = common dso_local global i64 0, align 8
@SBT_1US = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@pause_wchan = common dso_local global i32* null, align 8
@curcpu = common dso_local global i64 0, align 8
@C_CATCH = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pause_sbt(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %7, align 8
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* @tick_sbt, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i64, i64* @cold, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** @curthread, align 8
  %23 = icmp eq i32* %22, @thread0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @kdb_active, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call i64 (...) @SCHEDULER_STOPPED()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27, %24, %21
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @SBT_1S, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 @DELAY(i64 1000000)
  %37 = load i64, i64* @SBT_1S, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %31

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @SBT_1US, align 4
  %43 = call i64 @howmany(i64 %41, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @DELAY(i64 %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %50, i32* %5, align 4
  br label %69

51:                                               ; preds = %27
  %52 = load i32*, i32** @pause_wchan, align 8
  %53 = load i64, i64* @curcpu, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @C_CATCH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @PCATCH, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @_sleep(i32* %54, i32* null, i32 %63, i8* %64, i64 %65, i64 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %49
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @DELAY(i64) #1

declare dso_local i64 @howmany(i64, i32) #1

declare dso_local i32 @_sleep(i32*, i32*, i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
