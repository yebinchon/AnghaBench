; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_parse_wrap_args.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_parse_wrap_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.shortlog* }
%struct.shortlog = type { i32, i64, i64, i64 }

@DEFAULT_WRAPLEN = common dso_local global i8* null, align 8
@DEFAULT_INDENT1 = common dso_local global i8* null, align 8
@DEFAULT_INDENT2 = common dso_local global i8* null, align 8
@wrap_arg_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_wrap_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_wrap_args(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shortlog*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.shortlog*, %struct.shortlog** %10, align 8
  store %struct.shortlog* %11, %struct.shortlog** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %17 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @DEFAULT_WRAPLEN, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %28 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** @DEFAULT_INDENT1, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %32 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** @DEFAULT_INDENT2, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %36 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %105

37:                                               ; preds = %21
  %38 = load i8*, i8** @DEFAULT_WRAPLEN, align 8
  %39 = call i8* @parse_uint(i8** %6, i8 signext 44, i8* %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %42 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** @DEFAULT_INDENT1, align 8
  %44 = call i8* @parse_uint(i8** %6, i8 signext 44, i8* %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %47 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load i8*, i8** @DEFAULT_INDENT2, align 8
  %49 = call i8* @parse_uint(i8** %6, i8 signext 0, i8* %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %52 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %54 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %37
  %58 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %59 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %64 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57, %37
  %68 = load i32, i32* @wrap_arg_usage, align 4
  %69 = call i32 @error(i32 %68)
  store i32 %69, i32* %4, align 4
  br label %105

70:                                               ; preds = %62
  %71 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %72 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %77 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %82 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %85 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %83, %86
  br i1 %87, label %101, label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %90 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %95 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.shortlog*, %struct.shortlog** %8, align 8
  %98 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93, %80
  %102 = load i32, i32* @wrap_arg_usage, align 4
  %103 = call i32 @error(i32 %102)
  store i32 %103, i32* %4, align 4
  br label %105

104:                                              ; preds = %93, %88, %70
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %101, %67, %24, %20
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i8* @parse_uint(i8**, i8 signext, i8*) #1

declare dso_local i32 @error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
