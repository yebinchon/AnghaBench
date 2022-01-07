; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_add_people_count.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_add_people_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s (%d) and %s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s (%d) and others\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.string_list*)* @add_people_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_people_count(%struct.strbuf* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.string_list*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %5 = load %struct.string_list*, %struct.string_list** %4, align 8
  %6 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = load %struct.string_list*, %struct.string_list** %4, align 8
  %12 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %10, i32 %16)
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.string_list*, %struct.string_list** %4, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = load %struct.string_list*, %struct.string_list** %4, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.string_list*, %struct.string_list** %4, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = call i64 @util_as_integral(%struct.TYPE_2__* %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.string_list*, %struct.string_list** %4, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.string_list*, %struct.string_list** %4, align 8
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 1
  %47 = call i64 @util_as_integral(%struct.TYPE_2__* %46)
  %48 = trunc i64 %47 to i32
  %49 = call i32 (%struct.strbuf*, i8*, i32, i32, ...) @strbuf_addf(%struct.strbuf* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %36, i32 %42, i32 %48)
  br label %71

50:                                               ; preds = %18
  %51 = load %struct.string_list*, %struct.string_list** %4, align 8
  %52 = getelementptr inbounds %struct.string_list, %struct.string_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %57 = load %struct.string_list*, %struct.string_list** %4, align 8
  %58 = getelementptr inbounds %struct.string_list, %struct.string_list* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.string_list*, %struct.string_list** %4, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = call i64 @util_as_integral(%struct.TYPE_2__* %66)
  %68 = trunc i64 %67 to i32
  %69 = call i32 (%struct.strbuf*, i8*, i32, i32, ...) @strbuf_addf(%struct.strbuf* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %55, %50
  br label %71

71:                                               ; preds = %70, %23
  br label %72

72:                                               ; preds = %71, %9
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, ...) #1

declare dso_local i64 @util_as_integral(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
