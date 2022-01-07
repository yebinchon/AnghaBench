; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_maybe_redirect_std_handles.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_maybe_redirect_std_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i32] [i32 71, i32 73, i32 84, i32 95, i32 82, i32 69, i32 68, i32 73, i32 82, i32 69, i32 67, i32 84, i32 95, i32 83, i32 84, i32 68, i32 73, i32 78, i32 0], align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i32] [i32 71, i32 73, i32 84, i32 95, i32 82, i32 69, i32 68, i32 73, i32 82, i32 69, i32 67, i32 84, i32 95, i32 83, i32 84, i32 68, i32 79, i32 85, i32 84, i32 0], align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 71, i32 73, i32 84, i32 95, i32 82, i32 69, i32 68, i32 73, i32 82, i32 69, i32 67, i32 84, i32 95, i32 83, i32 84, i32 68, i32 69, i32 82, i32 82, i32 0], align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@FILE_FLAG_NO_BUFFERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @maybe_redirect_std_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_redirect_std_handles() #0 {
  %1 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %2 = load i32, i32* @GENERIC_READ, align 4
  %3 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %4 = call i32 @maybe_redirect_std_handle(i8* bitcast ([19 x i32]* @.str to i8*), i32 %1, i32 0, i32 %2, i32 %3)
  %5 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %6 = load i32, i32* @GENERIC_WRITE, align 4
  %7 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %8 = call i32 @maybe_redirect_std_handle(i8* bitcast ([20 x i32]* @.str.1 to i8*), i32 %5, i32 1, i32 %6, i32 %7)
  %9 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %10 = load i32, i32* @GENERIC_WRITE, align 4
  %11 = load i32, i32* @FILE_FLAG_NO_BUFFERING, align 4
  %12 = call i32 @maybe_redirect_std_handle(i8* bitcast ([20 x i32]* @.str.2 to i8*), i32 %9, i32 2, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @maybe_redirect_std_handle(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
