; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_unstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_unstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@ssp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"\22Source\22 stack over-pop.\0A\00", align 1
@sourcing = common dso_local global i64 0, align 8
@input = common dso_local global i32 0, align 4
@cond = common dso_local global i64 0, align 8
@CANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Unmatched \22if\22\0A\00", align 1
@sstack = common dso_local global %struct.TYPE_2__* null, align 8
@loading = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unstack() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ssp, align 8
  %3 = icmp ule i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @sourcing, align 8
  store i32 1, i32* %1, align 4
  br label %37

6:                                                ; preds = %0
  %7 = load i32, i32* @input, align 4
  %8 = call i32 @Fclose(i32 %7)
  %9 = load i64, i64* @cond, align 8
  %10 = load i64, i64* @CANY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  %15 = load i64, i64* @ssp, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* @ssp, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sstack, align 8
  %18 = load i64, i64* @ssp, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @cond, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sstack, align 8
  %23 = load i64, i64* @ssp, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* @loading, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sstack, align 8
  %28 = load i64, i64* @ssp, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @input, align 4
  %32 = load i64, i64* @ssp, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i64, i64* @loading, align 8
  store i64 %35, i64* @sourcing, align 8
  br label %36

36:                                               ; preds = %34, %14
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @Fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
