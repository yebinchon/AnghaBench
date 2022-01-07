; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_option_parse_whitespace.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_option_parse_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.apply_state* }
%struct.apply_state = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @apply_option_parse_whitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_option_parse_whitespace(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.apply_state*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.apply_state*, %struct.apply_state** %10, align 8
  store %struct.apply_state* %11, %struct.apply_state** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @BUG_ON_OPT_NEG(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.apply_state*, %struct.apply_state** %8, align 8
  %16 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.apply_state*, %struct.apply_state** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @parse_whitespace_option(%struct.apply_state* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i64 @parse_whitespace_option(%struct.apply_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
