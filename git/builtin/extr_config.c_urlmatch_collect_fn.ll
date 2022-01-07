; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_urlmatch_collect_fn.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_urlmatch_collect_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.string_list_item = type { %struct.urlmatch_current_candidate_value* }
%struct.urlmatch_current_candidate_value = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @urlmatch_collect_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlmatch_collect_fn(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca %struct.string_list_item*, align 8
  %9 = alloca %struct.urlmatch_current_candidate_value*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.string_list*
  store %struct.string_list* %11, %struct.string_list** %7, align 8
  %12 = load %struct.string_list*, %struct.string_list** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %12, i8* %13)
  store %struct.string_list_item* %14, %struct.string_list_item** %8, align 8
  %15 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %16 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %15, i32 0, i32 0
  %17 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %16, align 8
  store %struct.urlmatch_current_candidate_value* %17, %struct.urlmatch_current_candidate_value** %9, align 8
  %18 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %19 = icmp ne %struct.urlmatch_current_candidate_value* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = call %struct.urlmatch_current_candidate_value* @xmalloc(i32 8)
  store %struct.urlmatch_current_candidate_value* %21, %struct.urlmatch_current_candidate_value** %9, align 8
  %22 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %23 = getelementptr inbounds %struct.urlmatch_current_candidate_value, %struct.urlmatch_current_candidate_value* %22, i32 0, i32 1
  %24 = call i32 @strbuf_init(i32* %23, i32 0)
  %25 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %26 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %27 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %26, i32 0, i32 0
  store %struct.urlmatch_current_candidate_value* %25, %struct.urlmatch_current_candidate_value** %27, align 8
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %30 = getelementptr inbounds %struct.urlmatch_current_candidate_value, %struct.urlmatch_current_candidate_value* %29, i32 0, i32 1
  %31 = call i32 @strbuf_reset(i32* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %37 = getelementptr inbounds %struct.urlmatch_current_candidate_value, %struct.urlmatch_current_candidate_value* %36, i32 0, i32 1
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strbuf_addstr(i32* %37, i8* %38)
  %40 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %41 = getelementptr inbounds %struct.urlmatch_current_candidate_value, %struct.urlmatch_current_candidate_value* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load %struct.urlmatch_current_candidate_value*, %struct.urlmatch_current_candidate_value** %9, align 8
  %44 = getelementptr inbounds %struct.urlmatch_current_candidate_value, %struct.urlmatch_current_candidate_value* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  ret i32 0
}

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local %struct.urlmatch_current_candidate_value* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @strbuf_addstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
