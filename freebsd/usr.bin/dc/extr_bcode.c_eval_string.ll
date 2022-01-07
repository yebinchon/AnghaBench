; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_eval_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_eval_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, %struct.source* }
%struct.source = type { i32 }

@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"recursion too deep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @eval_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eval_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.source*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = call i32 (...) @readch()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = call i32 (...) @src_free()
  %15 = load %struct.source*, %struct.source** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 2), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.source, %struct.source* %15, i64 %16
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @src_setstring(%struct.source* %17, i8* %18)
  br label %51

20:                                               ; preds = %8
  %21 = call i32 (...) @unreadch()
  br label %22

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 1), align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 1), align 8
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %4, align 8
  %33 = load %struct.source*, %struct.source** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 2), align 8
  %34 = load i64, i64* %4, align 8
  %35 = call %struct.source* @reallocarray(%struct.source* %33, i64 %34, i32 4)
  store %struct.source* %35, %struct.source** %5, align 8
  %36 = load %struct.source*, %struct.source** %5, align 8
  %37 = icmp eq %struct.source* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 1), align 8
  %43 = load %struct.source*, %struct.source** %5, align 8
  store %struct.source* %43, %struct.source** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 2), align 8
  br label %44

44:                                               ; preds = %40, %23
  %45 = load %struct.source*, %struct.source** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 2), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.source, %struct.source* %45, i64 %47
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @src_setstring(%struct.source* %48, i8* %49)
  br label %51

51:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @readch(...) #1

declare dso_local i32 @src_free(...) #1

declare dso_local i32 @src_setstring(%struct.source*, i8*) #1

declare dso_local i32 @unreadch(...) #1

declare dso_local %struct.source* @reallocarray(%struct.source*, i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
