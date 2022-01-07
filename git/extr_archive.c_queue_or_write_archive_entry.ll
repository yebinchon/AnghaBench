; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_queue_or_write_archive_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_queue_or_write_archive_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i64, i32 }
%struct.archiver_context = type { %struct.TYPE_4__*, %struct.directory* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.directory = type { i64, %struct.directory*, i32 }
%struct.attr_check = type { i32 }

@READ_TREE_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.strbuf*, i8*, i32, i32, i8*)* @queue_or_write_archive_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_or_write_archive_entry(%struct.object_id* %0, %struct.strbuf* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.archiver_context*, align 8
  %15 = alloca %struct.directory*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.attr_check*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store %struct.strbuf* %1, %struct.strbuf** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to %struct.archiver_context*
  store %struct.archiver_context* %19, %struct.archiver_context** %14, align 8
  br label %20

20:                                               ; preds = %57, %6
  %21 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %22 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %21, i32 0, i32 1
  %23 = load %struct.directory*, %struct.directory** %22, align 8
  %24 = icmp ne %struct.directory* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %30 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %29, i32 0, i32 1
  %31 = load %struct.directory*, %struct.directory** %30, align 8
  %32 = getelementptr inbounds %struct.directory, %struct.directory* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %25
  %36 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %40 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %39, i32 0, i32 1
  %41 = load %struct.directory*, %struct.directory** %40, align 8
  %42 = getelementptr inbounds %struct.directory, %struct.directory* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %45 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %44, i32 0, i32 1
  %46 = load %struct.directory*, %struct.directory** %45, align 8
  %47 = getelementptr inbounds %struct.directory, %struct.directory* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @strncmp(i32 %38, i32 %43, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %35, %25
  %53 = phi i1 [ false, %25 ], [ %51, %35 ]
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %52, %20
  %56 = phi i1 [ false, %20 ], [ %54, %52 ]
  br i1 %56, label %57, label %70

57:                                               ; preds = %55
  %58 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %59 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %58, i32 0, i32 1
  %60 = load %struct.directory*, %struct.directory** %59, align 8
  %61 = getelementptr inbounds %struct.directory, %struct.directory* %60, i32 0, i32 1
  %62 = load %struct.directory*, %struct.directory** %61, align 8
  store %struct.directory* %62, %struct.directory** %15, align 8
  %63 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %64 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %63, i32 0, i32 1
  %65 = load %struct.directory*, %struct.directory** %64, align 8
  %66 = call i32 @free(%struct.directory* %65)
  %67 = load %struct.directory*, %struct.directory** %15, align 8
  %68 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %69 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %68, i32 0, i32 1
  store %struct.directory* %67, %struct.directory** %69, align 8
  br label %20

70:                                               ; preds = %55
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @S_ISDIR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %16, align 8
  %78 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @strbuf_addstr(%struct.strbuf* %78, i8* %79)
  %81 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %82 = call i32 @strbuf_addch(%struct.strbuf* %81, i8 signext 47)
  %83 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %84 = getelementptr inbounds %struct.archiver_context, %struct.archiver_context* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.attr_check* @get_archive_attrs(i32 %89, i32 %92)
  store %struct.attr_check* %93, %struct.attr_check** %17, align 8
  %94 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @strbuf_setlen(%struct.strbuf* %94, i64 %95)
  %97 = load %struct.attr_check*, %struct.attr_check** %17, align 8
  %98 = call i64 @check_attr_export_ignore(%struct.attr_check* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %74
  store i32 0, i32* %7, align 4
  br label %130

101:                                              ; preds = %74
  %102 = load %struct.object_id*, %struct.object_id** %8, align 8
  %103 = getelementptr inbounds %struct.object_id, %struct.object_id* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %110 = call i32 @queue_directory(i32 %104, %struct.strbuf* %105, i8* %106, i32 %107, i32 %108, %struct.archiver_context* %109)
  %111 = load i32, i32* @READ_TREE_RECURSIVE, align 4
  store i32 %111, i32* %7, align 4
  br label %130

112:                                              ; preds = %70
  %113 = load %struct.archiver_context*, %struct.archiver_context** %14, align 8
  %114 = call i64 @write_directory(%struct.archiver_context* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 -1, i32* %7, align 4
  br label %130

117:                                              ; preds = %112
  %118 = load %struct.object_id*, %struct.object_id** %8, align 8
  %119 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %123 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @write_archive_entry(%struct.object_id* %118, i32 %121, i64 %124, i8* %125, i32 %126, i32 %127, i8* %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %117, %116, %101, %100
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @strncmp(i32, i32, i64) #1

declare dso_local i32 @free(%struct.directory*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local %struct.attr_check* @get_archive_attrs(i32, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i64 @check_attr_export_ignore(%struct.attr_check*) #1

declare dso_local i32 @queue_directory(i32, %struct.strbuf*, i8*, i32, i32, %struct.archiver_context*) #1

declare dso_local i64 @write_directory(%struct.archiver_context*) #1

declare dso_local i32 @write_archive_entry(%struct.object_id*, i32, i64, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
