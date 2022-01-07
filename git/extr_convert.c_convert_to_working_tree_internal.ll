; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_convert_to_working_tree_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_convert_to_working_tree_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.strbuf = type { i8*, i64 }
%struct.delayed_checkout = type { i32 }
%struct.conv_attrs = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@CAP_SMUDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: smudge filter %s failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32, %struct.delayed_checkout*)* @convert_to_working_tree_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_working_tree_internal(%struct.index_state* %0, i8* %1, i8* %2, i64 %3, %struct.strbuf* %4, i32 %5, %struct.delayed_checkout* %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.delayed_checkout*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.conv_attrs, align 8
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.delayed_checkout* %6, %struct.delayed_checkout** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.index_state*, %struct.index_state** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @convert_attrs(%struct.index_state* %18, %struct.conv_attrs* %17, i8* %19)
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %24 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ident_to_worktree(i8* %21, i64 %22, %struct.strbuf* %23, i32 %25)
  %27 = load i32, i32* %15, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %7
  %32 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %31, %7
  %39 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48, %38
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54, %48, %42
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %61 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @crlf_to_worktree(i8* %58, i64 %59, %struct.strbuf* %60, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %10, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %68, %57
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %81 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @encode_to_worktree(i8* %77, i8* %78, i64 %79, %struct.strbuf* %80, i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %10, align 8
  %92 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %88, %76
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %100 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* @CAP_SMUDGE, align 4
  %103 = load %struct.delayed_checkout*, %struct.delayed_checkout** %14, align 8
  %104 = call i32 @apply_filter(i8* %96, i8* %97, i64 %98, i32 -1, %struct.strbuf* %99, %struct.TYPE_2__* %101, i32 %102, %struct.delayed_checkout* %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = icmp ne %struct.TYPE_2__* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %17, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @die(i32 %118, i8* %119, i32 %123)
  br label %125

125:                                              ; preds = %117, %111, %107, %95
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = or i32 %126, %127
  ret i32 %128
}

declare dso_local i32 @convert_attrs(%struct.index_state*, %struct.conv_attrs*, i8*) #1

declare dso_local i32 @ident_to_worktree(i8*, i64, %struct.strbuf*, i32) #1

declare dso_local i32 @crlf_to_worktree(i8*, i64, %struct.strbuf*, i32) #1

declare dso_local i32 @encode_to_worktree(i8*, i8*, i64, %struct.strbuf*, i32) #1

declare dso_local i32 @apply_filter(i8*, i8*, i64, i32, %struct.strbuf*, %struct.TYPE_2__*, i32, %struct.delayed_checkout*) #1

declare dso_local i32 @die(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
