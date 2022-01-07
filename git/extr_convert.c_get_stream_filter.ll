; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_get_stream_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_get_stream_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_filter = type { i32 }
%struct.index_state = type { i32 }
%struct.object_id = type { i32 }
%struct.conv_attrs = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@CRLF_AUTO = common dso_local global i64 0, align 8
@CRLF_AUTO_CRLF = common dso_local global i64 0, align 8
@EOL_CRLF = common dso_local global i64 0, align 8
@null_filter_singleton = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stream_filter* @get_stream_filter(%struct.index_state* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.stream_filter*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.conv_attrs, align 8
  %9 = alloca %struct.stream_filter*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store %struct.stream_filter* null, %struct.stream_filter** %9, align 8
  %10 = load %struct.index_state*, %struct.index_state** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @convert_attrs(%struct.index_state* %10, %struct.conv_attrs* %8, i8* %11)
  %13 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %16
  store %struct.stream_filter* null, %struct.stream_filter** %4, align 8
  br label %73

35:                                               ; preds = %28, %3
  %36 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.stream_filter* null, %struct.stream_filter** %4, align 8
  br label %73

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CRLF_AUTO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CRLF_AUTO_CRLF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  store %struct.stream_filter* null, %struct.stream_filter** %4, align 8
  br label %73

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.object_id*, %struct.object_id** %7, align 8
  %57 = call %struct.stream_filter* @ident_filter(%struct.object_id* %56)
  store %struct.stream_filter* %57, %struct.stream_filter** %9, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @output_eol(i64 %60)
  %62 = load i64, i64* @EOL_CRLF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.stream_filter*, %struct.stream_filter** %9, align 8
  %66 = call i32* (...) @lf_to_crlf_filter()
  %67 = call %struct.stream_filter* @cascade_filter(%struct.stream_filter* %65, i32* %66)
  store %struct.stream_filter* %67, %struct.stream_filter** %9, align 8
  br label %71

68:                                               ; preds = %58
  %69 = load %struct.stream_filter*, %struct.stream_filter** %9, align 8
  %70 = call %struct.stream_filter* @cascade_filter(%struct.stream_filter* %69, i32* @null_filter_singleton)
  store %struct.stream_filter* %70, %struct.stream_filter** %9, align 8
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.stream_filter*, %struct.stream_filter** %9, align 8
  store %struct.stream_filter* %72, %struct.stream_filter** %4, align 8
  br label %73

73:                                               ; preds = %71, %50, %39, %34
  %74 = load %struct.stream_filter*, %struct.stream_filter** %4, align 8
  ret %struct.stream_filter* %74
}

declare dso_local i32 @convert_attrs(%struct.index_state*, %struct.conv_attrs*, i8*) #1

declare dso_local %struct.stream_filter* @ident_filter(%struct.object_id*) #1

declare dso_local i64 @output_eol(i64) #1

declare dso_local %struct.stream_filter* @cascade_filter(%struct.stream_filter*, i32*) #1

declare dso_local i32* @lf_to_crlf_filter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
