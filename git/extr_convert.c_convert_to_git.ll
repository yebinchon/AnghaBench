; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_convert_to_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_convert_to_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.strbuf = type { i8*, i64 }
%struct.conv_attrs = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@CAP_CLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: clean filter '%s' failed\00", align 1
@CONV_EOL_KEEP_CRLF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_to_git(%struct.index_state* %0, i8* %1, i8* %2, i64 %3, %struct.strbuf* %4, i32 %5) #0 {
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.conv_attrs, align 8
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.index_state*, %struct.index_state** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @convert_attrs(%struct.index_state* %15, %struct.conv_attrs* %14, i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %22 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* @CAP_CLEAN, align 4
  %25 = call i32 @apply_filter(i8* %18, i8* %19, i64 %20, i32 -1, %struct.strbuf* %21, %struct.TYPE_2__* %23, i32 %24, i32* null)
  %26 = load i32, i32* %13, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @die(i32 %41, i8* %42, i32 %46)
  br label %48

48:                                               ; preds = %40, %34, %30, %6
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %53 = icmp ne %struct.strbuf* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %54, %51, %48
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %66 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @encode_to_git(i8* %62, i8* %63, i64 %64, %struct.strbuf* %65, i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %76 = icmp ne %struct.strbuf* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %9, align 8
  %81 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %77, %74, %61
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @CONV_EOL_KEEP_CRLF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %84
  %90 = load %struct.index_state*, %struct.index_state** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %95 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @crlf_to_git(%struct.index_state* %90, i8* %91, i8* %92, i64 %93, %struct.strbuf* %94, i32 %96, i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %89
  %104 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %105 = icmp ne %struct.strbuf* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %108 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %9, align 8
  %110 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %106, %103, %89
  br label %114

114:                                              ; preds = %113, %84
  %115 = load i32, i32* %13, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %119 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %14, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ident_to_git(i8* %116, i64 %117, %struct.strbuf* %118, i32 %120)
  %122 = or i32 %115, %121
  ret i32 %122
}

declare dso_local i32 @convert_attrs(%struct.index_state*, %struct.conv_attrs*, i8*) #1

declare dso_local i32 @apply_filter(i8*, i8*, i64, i32, %struct.strbuf*, %struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @die(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @encode_to_git(i8*, i8*, i64, %struct.strbuf*, i32, i32) #1

declare dso_local i32 @crlf_to_git(%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32, i32) #1

declare dso_local i32 @ident_to_git(i8*, i64, %struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
