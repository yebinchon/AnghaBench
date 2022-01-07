; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_ddump_ramlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_ddump_ramlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"driver-log\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"startofday\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"recent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_ddump_ramlog(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %81

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ocs_ddump_section(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ocs_ddump_section(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ocs_textbuf_get_buffer(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ocs_textbuf_get_written(i32* %34)
  %36 = call i32 @ocs_textbuf_buffer(i32* %31, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %26, %17
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ocs_ddump_endsection(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ocs_ddump_section(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ocs_ramlog_next_idx(%struct.TYPE_4__* %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %73, %37
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @ocs_textbuf_get_buffer(i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @ocs_textbuf_get_written(i32* %67)
  %69 = call i32 @ocs_textbuf_buffer(i32* %64, i32 %66, i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ocs_ramlog_next_idx(%struct.TYPE_4__* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %50

76:                                               ; preds = %50
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @ocs_ddump_endsection(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @ocs_ddump_endsection(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ocs_ddump_section(i32*, i8*, i32) #1

declare dso_local i32 @ocs_textbuf_buffer(i32*, i32, i32) #1

declare dso_local i32 @ocs_textbuf_get_buffer(i32*) #1

declare dso_local i32 @ocs_textbuf_get_written(i32*) #1

declare dso_local i32 @ocs_ddump_endsection(i32*, i8*, i32) #1

declare dso_local i32 @ocs_ramlog_next_idx(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
