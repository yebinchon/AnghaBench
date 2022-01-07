; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_help.c_get_man_viewer_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_help.c_get_man_viewer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.man_viewer_info_list = type { i8*, i32, %struct.man_viewer_info_list* }

@man_viewer_info_list = common dso_local global %struct.man_viewer_info_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_man_viewer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_man_viewer_info(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.man_viewer_info_list*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** @man_viewer_info_list, align 8
  store %struct.man_viewer_info_list* %5, %struct.man_viewer_info_list** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %4, align 8
  %8 = icmp ne %struct.man_viewer_info_list* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %4, align 8
  %12 = getelementptr inbounds %struct.man_viewer_info_list, %struct.man_viewer_info_list* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcasecmp(i8* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %4, align 8
  %18 = getelementptr inbounds %struct.man_viewer_info_list, %struct.man_viewer_info_list* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %26

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %4, align 8
  %23 = getelementptr inbounds %struct.man_viewer_info_list, %struct.man_viewer_info_list* %22, i32 0, i32 2
  %24 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %23, align 8
  store %struct.man_viewer_info_list* %24, %struct.man_viewer_info_list** %4, align 8
  br label %6

25:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i32 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
