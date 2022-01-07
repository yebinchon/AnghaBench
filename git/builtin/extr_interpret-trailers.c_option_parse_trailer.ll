; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_interpret-trailers.c_option_parse_trailer.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_interpret-trailers.c_option_parse_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.new_trailer_item = type { i8*, i32, i32, i32, i32 }

@where = common dso_local global i32 0, align 4
@if_exists = common dso_local global i32 0, align 4
@if_missing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @option_parse_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_parse_trailer(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.new_trailer_item*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  store %struct.list_head* %12, %struct.list_head** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.list_head*, %struct.list_head** %8, align 8
  %17 = call i32 @new_trailers_clear(%struct.list_head* %16)
  store i32 0, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %40

22:                                               ; preds = %18
  %23 = call %struct.new_trailer_item* @xmalloc(i32 24)
  store %struct.new_trailer_item* %23, %struct.new_trailer_item** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.new_trailer_item*, %struct.new_trailer_item** %9, align 8
  %26 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @where, align 4
  %28 = load %struct.new_trailer_item*, %struct.new_trailer_item** %9, align 8
  %29 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @if_exists, align 4
  %31 = load %struct.new_trailer_item*, %struct.new_trailer_item** %9, align 8
  %32 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @if_missing, align 4
  %34 = load %struct.new_trailer_item*, %struct.new_trailer_item** %9, align 8
  %35 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.new_trailer_item*, %struct.new_trailer_item** %9, align 8
  %37 = getelementptr inbounds %struct.new_trailer_item, %struct.new_trailer_item* %36, i32 0, i32 1
  %38 = load %struct.list_head*, %struct.list_head** %8, align 8
  %39 = call i32 @list_add_tail(i32* %37, %struct.list_head* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %22, %21, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @new_trailers_clear(%struct.list_head*) #1

declare dso_local %struct.new_trailer_item* @xmalloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
