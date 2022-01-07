; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_reinitialize_almost_everything.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_reinitialize_almost_everything.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_lines = common dso_local global i64 0, align 8
@last_frozen_line = common dso_local global i64 0, align 8
@filec = common dso_local global i64 0, align 8
@out_of_mem = common dso_local global i32 0, align 4
@filearg = common dso_local global i32** null, align 8
@source_file = common dso_local global i32* null, align 8
@outname = common dso_local global i32* null, align 8
@last_offset = common dso_local global i64 0, align 8
@diff_type = common dso_local global i64 0, align 8
@revision = common dso_local global i32* null, align 8
@reverse_flag_specified = common dso_local global i32 0, align 4
@reverse = common dso_local global i32 0, align 4
@skip_rest_of_patch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reinitialize_almost_everything to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinitialize_almost_everything() #0 {
  %1 = call i32 (...) @re_patch()
  %2 = call i32 (...) @re_input()
  store i64 0, i64* @input_lines, align 8
  store i64 0, i64* @last_frozen_line, align 8
  store i64 0, i64* @filec, align 8
  %3 = load i32, i32* @out_of_mem, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = load i32**, i32*** @filearg, align 8
  %7 = getelementptr inbounds i32*, i32** %6, i64 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @free(i32* %8)
  %10 = load i32**, i32*** @filearg, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  store i32* null, i32** %11, align 8
  br label %12

12:                                               ; preds = %5, %0
  %13 = load i32*, i32** @source_file, align 8
  %14 = call i32 @free(i32* %13)
  store i32* null, i32** @source_file, align 8
  %15 = load i32*, i32** @outname, align 8
  %16 = call i32 @free(i32* %15)
  store i32* null, i32** @outname, align 8
  store i64 0, i64* @last_offset, align 8
  store i64 0, i64* @diff_type, align 8
  %17 = load i32*, i32** @revision, align 8
  %18 = call i32 @free(i32* %17)
  store i32* null, i32** @revision, align 8
  %19 = load i32, i32* @reverse_flag_specified, align 4
  store i32 %19, i32* @reverse, align 4
  store i32 0, i32* @skip_rest_of_patch, align 4
  %20 = call i32 (...) @get_some_switches()
  ret void
}

declare dso_local i32 @re_patch(...) #1

declare dso_local i32 @re_input(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @get_some_switches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
