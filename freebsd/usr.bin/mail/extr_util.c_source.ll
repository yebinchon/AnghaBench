; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ssp = common dso_local global i32 0, align 4
@SSTACK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Too much \22sourcing\22 going on.\0A\00", align 1
@input = common dso_local global i32* null, align 8
@sstack = common dso_local global %struct.TYPE_2__* null, align 8
@cond = common dso_local global i32 0, align 4
@loading = common dso_local global i64 0, align 8
@CANY = common dso_local global i32 0, align 4
@sourcing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @source(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @expand(i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @Fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 1, i32* %2, align 4
  br label %52

18:                                               ; preds = %11
  %19 = load i32, i32* @ssp, align 4
  %20 = load i32, i32* @SSTACK_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @Fclose(i32* %25)
  store i32 1, i32* %2, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load i32*, i32** @input, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sstack, align 8
  %30 = load i32, i32* @ssp, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32* %28, i32** %33, align 8
  %34 = load i32, i32* @cond, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sstack, align 8
  %36 = load i32, i32* @ssp, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 8
  %40 = load i64, i64* @loading, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sstack, align 8
  %42 = load i32, i32* @ssp, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %40, i64* %45, align 8
  %46 = load i32, i32* @ssp, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @ssp, align 4
  store i64 0, i64* @loading, align 8
  %48 = load i32, i32* @CANY, align 4
  store i32 %48, i32* @cond, align 4
  %49 = load i32*, i32** %4, align 8
  store i32* %49, i32** @input, align 8
  %50 = load i32, i32* @sourcing, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @sourcing, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %27, %23, %15, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @expand(i8*) #1

declare dso_local i32* @Fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @Fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
