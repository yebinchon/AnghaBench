; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_procstates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_procstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@procstates_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d %s:\00", align 1
@ps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@ltotal = common dso_local global i32 0, align 4
@procstate_names = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@lprocstates = common dso_local global i32 0, align 4
@num_procstates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_procstates(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @procstates_buffer, align 4
  %7 = call i32 @setup_buffer(i32 %6, i32 0)
  store i32 %7, i32* @procstates_buffer, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %12)
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* @ltotal, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @digits(i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 6, i32 4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @putchar(i8 signext 32)
  br label %17

27:                                               ; preds = %17
  %28 = load i32, i32* @procstates_buffer, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @procstate_names, align 4
  %31 = call i32 @summary_format(i32 %28, i32* %29, i32 %30)
  %32 = load i32, i32* @procstates_buffer, align 4
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i32 %32, i32 %33)
  %35 = load i32, i32* @lprocstates, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @num_procstates, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i32 %35, i32* %36, i32 %40)
  ret void
}

declare dso_local i32 @setup_buffer(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @digits(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @summary_format(i32, i32*, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
