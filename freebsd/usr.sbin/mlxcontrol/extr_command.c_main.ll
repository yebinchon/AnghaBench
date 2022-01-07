; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**)*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@commands = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8**, i8*** %5, align 8
  store i8** %11, i8*** %9, align 8
  br label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %19 [
  ]

19:                                               ; preds = %17
  %20 = call i32 @cmd_help(i32 0, i8** null)
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %12
  %22 = load i64, i64* @optind, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @optind, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 %27
  store i8** %29, i8*** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %64, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @strcmp(i8* %44, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (i32, i8**)*, i32 (i32, i8**)** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 %59(i32 %60, i8** %61)
  store i32 %62, i32* %3, align 4
  br label %72

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i32, i32* %8, align 4
  %70 = load i8**, i8*** %9, align 8
  %71 = call i32 @cmd_help(i32 %69, i8** %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %53, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @cmd_help(i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
