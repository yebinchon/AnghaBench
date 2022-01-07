; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_cat-file.c_batch_object_write.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_cat-file.c_batch_object_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.batch_options = type { i64, i32 }
%struct.expand_data = type { i32, i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJECT_INFO_LOOKUP_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s missing\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@expand_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.strbuf*, %struct.batch_options*, %struct.expand_data*)* @batch_object_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batch_object_write(i8* %0, %struct.strbuf* %1, %struct.batch_options* %2, %struct.expand_data* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.batch_options*, align 8
  %8 = alloca %struct.expand_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store %struct.batch_options* %2, %struct.batch_options** %7, align 8
  store %struct.expand_data* %3, %struct.expand_data** %8, align 8
  %9 = load %struct.expand_data*, %struct.expand_data** %8, align 8
  %10 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @the_repository, align 4
  %15 = load %struct.expand_data*, %struct.expand_data** %8, align 8
  %16 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %15, i32 0, i32 0
  %17 = load %struct.expand_data*, %struct.expand_data** %8, align 8
  %18 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %17, i32 0, i32 1
  %19 = load i32, i32* @OBJECT_INFO_LOOKUP_REPLACE, align 4
  %20 = call i64 @oid_object_info_extended(i32 %14, i32* %16, i32* %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  br label %31

27:                                               ; preds = %22
  %28 = load %struct.expand_data*, %struct.expand_data** %8, align 8
  %29 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %28, i32 0, i32 0
  %30 = call i8* @oid_to_hex(i32* %29)
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i8* [ %26, %25 ], [ %30, %27 ]
  %33 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @fflush(i32 %34)
  br label %66

36:                                               ; preds = %13, %4
  %37 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %38 = call i32 @strbuf_reset(%struct.strbuf* %37)
  %39 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %40 = load %struct.batch_options*, %struct.batch_options** %7, align 8
  %41 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @expand_format, align 4
  %44 = load %struct.expand_data*, %struct.expand_data** %8, align 8
  %45 = call i32 @strbuf_expand(%struct.strbuf* %39, i32 %42, i32 %43, %struct.expand_data* %44)
  %46 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %47 = call i32 @strbuf_addch(%struct.strbuf* %46, i8 signext 10)
  %48 = load %struct.batch_options*, %struct.batch_options** %7, align 8
  %49 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @batch_write(%struct.batch_options* %48, i8* %51, i32 %54)
  %56 = load %struct.batch_options*, %struct.batch_options** %7, align 8
  %57 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %36
  %61 = load %struct.batch_options*, %struct.batch_options** %7, align 8
  %62 = load %struct.expand_data*, %struct.expand_data** %8, align 8
  %63 = call i32 @print_object_or_die(%struct.batch_options* %61, %struct.expand_data* %62)
  %64 = load %struct.batch_options*, %struct.batch_options** %7, align 8
  %65 = call i32 @batch_write(%struct.batch_options* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %66

66:                                               ; preds = %31, %60, %36
  ret void
}

declare dso_local i64 @oid_object_info_extended(i32, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_expand(%struct.strbuf*, i32, i32, %struct.expand_data*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @batch_write(%struct.batch_options*, i8*, i32) #1

declare dso_local i32 @print_object_or_die(%struct.batch_options*, %struct.expand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
