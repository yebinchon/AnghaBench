; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_kern_readonly.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_kern_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"kgmon: kernel read-only: \00", align 1
@pflag = common dso_local global i64 0, align 8
@GMON_PROF_HIRES = common dso_local global i32 0, align 4
@GMON_PROF_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"data may be inconsistent\0A\00", align 1
@rflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"-r suppressed\0A\00", align 1
@Bflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"-B suppressed\0A\00", align 1
@bflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"-b suppressed\0A\00", align 1
@hflag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"-h suppressed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kern_readonly(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* @pflag, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GMON_PROF_HIRES, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @GMON_PROF_ON, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %7
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = load i64, i64* @rflag, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @Bflag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @bflag, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @hflag, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  store i64 0, i64* @hflag, align 8
  store i64 0, i64* @bflag, align 8
  store i64 0, i64* @Bflag, align 8
  store i64 0, i64* @rflag, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
