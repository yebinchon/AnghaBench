; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_apply.c_cmd_apply.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_apply.c_cmd_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@apply_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_apply(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.apply_state, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @the_repository, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @init_apply_state(%struct.apply_state* %10, i32 %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @exit(i32 128) #3
  unreachable

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* @apply_usage, align 4
  %21 = call i32 @apply_parse_options(i32 %18, i8** %19, %struct.apply_state* %10, i32* %7, i32* %8, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @check_apply_state(%struct.apply_state* %10, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @exit(i32 128) #3
  unreachable

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @apply_all_patches(%struct.apply_state* %10, i32 %28, i8** %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = call i32 @clear_apply_state(%struct.apply_state* %10)
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i64 @init_apply_state(%struct.apply_state*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @apply_parse_options(i32, i8**, %struct.apply_state*, i32*, i32*, i32) #1

declare dso_local i64 @check_apply_state(%struct.apply_state*, i32) #1

declare dso_local i32 @apply_all_patches(%struct.apply_state*, i32, i8**, i32) #1

declare dso_local i32 @clear_apply_state(%struct.apply_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
