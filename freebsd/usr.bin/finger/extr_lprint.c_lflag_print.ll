; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_lprint.c_lflag_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_lprint.c_lflag_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@R_FIRST = common dso_local global i32 0, align 4
@db = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"db seq\00", align 1
@pplan = common dso_local global i32 0, align 4
@_PATH_FORWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Mail forwarded to\00", align 1
@_PATH_PROJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Project\00", align 1
@_PATH_PLAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Plan\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"No Plan.\0A\00", align 1
@_PATH_PUBKEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Public key\00", align 1
@R_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lflag_print() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = load i32, i32* @R_FIRST, align 4
  store i32 %7, i32* %2, align 4
  br label %8

8:                                                ; preds = %64, %0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @db, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @db, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 %11(%struct.TYPE_11__* %12, %struct.TYPE_10__* %6, %struct.TYPE_10__* %5, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %8
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %66

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memmove(%struct.TYPE_9__** %4, i32 %25, i32 8)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %1, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @R_FIRST, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @putchar(i8 signext 10)
  br label %33

33:                                               ; preds = %31, %23
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %35 = call i32 @lprint(%struct.TYPE_9__* %34)
  %36 = load i32, i32* @pplan, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @_PATH_FORWARD, align 4
  %43 = call i32 @show_text(i32 %41, i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @_PATH_PROJECT, align 4
  %48 = call i32 @show_text(i32 %46, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @_PATH_PLAN, align 4
  %53 = call i32 @show_text(i32 %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %38
  %56 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %38
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @_PATH_PUBKEY, align 4
  %62 = call i32 @show_text(i32 %60, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %57, %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @R_NEXT, align 4
  store i32 %65, i32* %2, align 4
  br label %8

66:                                               ; preds = %22
  ret void
}

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memmove(%struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @lprint(%struct.TYPE_9__*) #1

declare dso_local i32 @show_text(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
