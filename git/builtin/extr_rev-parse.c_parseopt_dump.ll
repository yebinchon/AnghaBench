; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_parseopt_dump.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_parseopt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32*, i32*, %struct.strbuf* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c" --no-%s\00", align 1
@stuck_long = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" -%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" --%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parseopt_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseopt_dump(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 2
  %10 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  store %struct.strbuf* %10, %struct.strbuf** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %15 = load %struct.option*, %struct.option** %4, align 8
  %16 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %17)
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.option*, %struct.option** %4, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.option*, %struct.option** %4, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @stuck_long, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %34 = load %struct.option*, %struct.option** %4, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @strbuf_addf(%struct.strbuf* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  br label %44

38:                                               ; preds = %29, %19
  %39 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %40 = load %struct.option*, %struct.option** %4, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @strbuf_addf(%struct.strbuf* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load i32, i32* @stuck_long, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %53 = call i32 @strbuf_addch(%struct.strbuf* %52, i8 signext 32)
  br label %63

54:                                               ; preds = %48
  %55 = load %struct.option*, %struct.option** %4, align 8
  %56 = getelementptr inbounds %struct.option, %struct.option* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %61 = call i32 @strbuf_addch(%struct.strbuf* %60, i8 signext 61)
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @sq_quote_buf(%struct.strbuf* %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %45
  ret i32 0
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @sq_quote_buf(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
