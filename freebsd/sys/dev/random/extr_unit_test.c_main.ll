; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_unit_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_unit_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32*)* }

@NUM_THREADS = common dso_local global i32 0, align 4
@random_alg_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"In main: creating thread %ld\0A\00", align 1
@RunHarvester = common dso_local global i32 0, align 4
@ReadCSPRNG = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR; return code from thrd_create() is %d\0A\00", align 1
@stopseeding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @NUM_THREADS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @random_alg_context, i32 0, i32 1), align 8
  %15 = call i32 %14(i32* null)
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @NUM_THREADS, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i32, i32* %13, i64 %25
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @RunHarvester, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @ReadCSPRNG, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @thrd_create(i32* %26, i32 %34, i32* null)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @thrd_success, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 @exit(i32 -1) #4
  unreachable

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %16

47:                                               ; preds = %16
  store i64 2, i64* %9, align 8
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @NUM_THREADS, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32, i32* %13, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @thrd_join(i32 %56, i32* %8)
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %9, align 8
  br label %48

61:                                               ; preds = %48
  store i32 1, i32* @stopseeding, align 4
  %62 = getelementptr inbounds i32, i32* %13, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @thrd_join(i32 %63, i32* %8)
  %65 = getelementptr inbounds i32, i32* %13, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = call i32 @thrd_join(i32 %66, i32* %8)
  %68 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @random_alg_context, i32 0, i32 0), align 8
  %69 = call i32 %68(i32* null)
  %70 = call i32 @thrd_exit(i32 0)
  store i32 0, i32* %3, align 4
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @thrd_create(i32*, i32, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @thrd_join(i32, i32*) #2

declare dso_local i32 @thrd_exit(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
