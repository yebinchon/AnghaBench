; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_help.c_do_add_man_viewer_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_help.c_do_add_man_viewer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.man_viewer_info_list = type { %struct.man_viewer_info_list*, i32 }

@man_viewer_info_list = common dso_local global %struct.man_viewer_info_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @do_add_man_viewer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_add_man_viewer_info(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.man_viewer_info_list*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @FLEX_ALLOC_MEM(%struct.man_viewer_info_list* %8, i8* %9, i8* %10, i64 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @xstrdup(i8* %13)
  %15 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %7, align 8
  %16 = getelementptr inbounds %struct.man_viewer_info_list, %struct.man_viewer_info_list* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** @man_viewer_info_list, align 8
  %18 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %7, align 8
  %19 = getelementptr inbounds %struct.man_viewer_info_list, %struct.man_viewer_info_list* %18, i32 0, i32 0
  store %struct.man_viewer_info_list* %17, %struct.man_viewer_info_list** %19, align 8
  %20 = load %struct.man_viewer_info_list*, %struct.man_viewer_info_list** %7, align 8
  store %struct.man_viewer_info_list* %20, %struct.man_viewer_info_list** @man_viewer_info_list, align 8
  ret void
}

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.man_viewer_info_list*, i8*, i8*, i64) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
