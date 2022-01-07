; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_get_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.strbuf = type { i32 }

@cf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32, i8*, i8*)*, i8*, %struct.strbuf*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_value(i32 (i32, i8*, i8*)* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 (i32, i8*, i8*)* %0, i32 (i32, i8*, i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  br label %11

11:                                               ; preds = %23, %3
  %12 = call i32 (...) @get_next_char()
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %28

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @iskeychar(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %28

23:                                               ; preds = %18
  %24 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @tolower(i32 %25) #3
  %27 = call i32 @strbuf_addch(%struct.strbuf* %24, i32 %26)
  br label %11

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 9
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call i32 (...) @get_next_char()
  store i32 %38, i32* %8, align 4
  br label %29

39:                                               ; preds = %35
  store i8* null, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 61
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %73

46:                                               ; preds = %42
  %47 = call i8* (...) @parse_value()
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %73

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %5, align 8
  %58 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 %57(i32 %60, i8* %61, i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %52
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %50, %45
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @get_next_char(...) #1

declare dso_local i32 @iskeychar(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i8* @parse_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
