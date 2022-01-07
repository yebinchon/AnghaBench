; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_shortlog_output.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_shortlog_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.shortlog = type { i32, %struct.string_list, i32, i64, i64, i64 }
%struct.string_list = type { i32, i32, %struct.string_list_item* }
%struct.string_list_item = type { i8*, %struct.string_list* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@compare_by_counter = common dso_local global i32 0, align 4
@compare_by_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%6d\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s (%d):\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shortlog_output(%struct.shortlog* %0) #0 {
  %2 = alloca %struct.shortlog*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8*, align 8
  store %struct.shortlog* %0, %struct.shortlog** %2, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %11 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %16 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 2
  %18 = load %struct.string_list_item*, %struct.string_list_item** %17, align 8
  %19 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %20 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %24 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* @compare_by_counter, align 4
  br label %31

29:                                               ; preds = %14
  %30 = load i32, i32* @compare_by_list, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @QSORT(%struct.string_list_item* %18, i32 %22, i32 %32)
  br label %34

34:                                               ; preds = %31, %1
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %142, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %38 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.string_list, %struct.string_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %145

42:                                               ; preds = %35
  %43 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %44 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %44, i32 0, i32 2
  %46 = load %struct.string_list_item*, %struct.string_list_item** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %46, i64 %48
  store %struct.string_list_item* %49, %struct.string_list_item** %6, align 8
  %50 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %51 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %42
  %55 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %56 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %59 = call i64 @UTIL_TO_INT(%struct.string_list_item* %58)
  %60 = trunc i64 %59 to i32
  %61 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %62 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %63)
  br label %133

65:                                               ; preds = %42
  %66 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %67 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %66, i32 0, i32 1
  %68 = load %struct.string_list*, %struct.string_list** %67, align 8
  store %struct.string_list* %68, %struct.string_list** %7, align 8
  %69 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %70 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %73 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.string_list*, %struct.string_list** %7, align 8
  %76 = getelementptr inbounds %struct.string_list, %struct.string_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %77)
  %79 = load %struct.string_list*, %struct.string_list** %7, align 8
  %80 = getelementptr inbounds %struct.string_list, %struct.string_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %119, %65
  %84 = load i32, i32* %4, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %83
  %87 = load %struct.string_list*, %struct.string_list** %7, align 8
  %88 = getelementptr inbounds %struct.string_list, %struct.string_list* %87, i32 0, i32 2
  %89 = load %struct.string_list_item*, %struct.string_list_item** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %89, i64 %91
  %93 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %8, align 8
  %95 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %96 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %86
  %100 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %103 = call i32 @add_wrapped_shortlog_msg(%struct.strbuf* %5, i8* %101, %struct.shortlog* %102)
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %109 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @fwrite(i32 %105, i32 %107, i32 1, i32 %110)
  br label %118

112:                                              ; preds = %86
  %113 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %114 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %112, %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %4, align 4
  br label %83

122:                                              ; preds = %83
  %123 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %124 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @putc(i8 signext 10, i32 %125)
  %127 = load %struct.string_list*, %struct.string_list** %7, align 8
  %128 = getelementptr inbounds %struct.string_list, %struct.string_list* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.string_list*, %struct.string_list** %7, align 8
  %130 = call i32 @string_list_clear(%struct.string_list* %129, i32 0)
  %131 = load %struct.string_list*, %struct.string_list** %7, align 8
  %132 = call i32 @free(%struct.string_list* %131)
  br label %133

133:                                              ; preds = %122, %54
  %134 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %135 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.string_list, %struct.string_list* %135, i32 0, i32 2
  %137 = load %struct.string_list_item*, %struct.string_list_item** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %137, i64 %139
  %141 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %140, i32 0, i32 1
  store %struct.string_list* null, %struct.string_list** %141, align 8
  br label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  br label %35

145:                                              ; preds = %35
  %146 = call i32 @strbuf_release(%struct.strbuf* %5)
  %147 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %148 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.string_list, %struct.string_list* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %151 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %150, i32 0, i32 1
  %152 = call i32 @string_list_clear(%struct.string_list* %151, i32 1)
  %153 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %154 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %153, i32 0, i32 0
  %155 = call i32 @clear_mailmap(i32* %154)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @QSORT(%struct.string_list_item*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @UTIL_TO_INT(%struct.string_list_item*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @add_wrapped_shortlog_msg(%struct.strbuf*, i8*, %struct.shortlog*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @free(%struct.string_list*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @clear_mailmap(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
