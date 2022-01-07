; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_procstates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_procstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@u_procstates.new = internal global i8* null, align 8
@ltotal = common dso_local global i32 0, align 4
@x_procstate = common dso_local global i64 0, align 8
@y_procstate = common dso_local global i32 0, align 4
@lastline = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@ps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@lprocstates = common dso_local global i32 0, align 4
@num_procstates = common dso_local global i32 0, align 4
@procstate_names = common dso_local global i32 0, align 4
@procstates_buffer = common dso_local global i32 0, align 4
@x_brkdn = common dso_local global i32 0, align 4
@y_brkdn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u_procstates(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** @u_procstates.new, align 8
  %7 = call i8* @setup_buffer(i8* %6, i32 0)
  store i8* %7, i8** @u_procstates.new, align 8
  %8 = load i32, i32* @ltotal, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %2
  %12 = load i64, i64* @x_procstate, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @x_procstate, align 8
  %16 = load i32, i32* @y_procstate, align 4
  %17 = call i32 @Move_to(i64 %15, i32 %16)
  br label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @lastline, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @digits(i32 %26)
  %28 = load i32, i32* @ltotal, align 4
  %29 = call i32 @digits(i32 %28)
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @digits(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %47, %31
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 6, i32 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @putchar(i8 signext 32)
  br label %39

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* @ltotal, align 4
  br label %52

52:                                               ; preds = %50, %2
  %53 = load i32, i32* @lprocstates, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @num_procstates, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i64 @memcmp(i32 %53, i32* %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = load i8*, i8** @u_procstates.new, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @procstate_names, align 4
  %65 = call i32 @summary_format(i8* %62, i32* %63, i32 %64)
  %66 = load i32, i32* @procstates_buffer, align 4
  %67 = load i8*, i8** @u_procstates.new, align 8
  %68 = load i32, i32* @x_brkdn, align 4
  %69 = load i32, i32* @y_brkdn, align 4
  %70 = call i32 @line_update(i32 %66, i8* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @lprocstates, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @num_procstates, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i32 %71, i32* %72, i32 %76)
  br label %78

78:                                               ; preds = %61, %52
  ret void
}

declare dso_local i8* @setup_buffer(i8*, i32) #1

declare dso_local i32 @Move_to(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @digits(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @summary_format(i8*, i32*, i32) #1

declare dso_local i32 @line_update(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
