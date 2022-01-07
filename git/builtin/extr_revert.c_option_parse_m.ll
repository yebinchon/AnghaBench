; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_revert.c_option_parse_m.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_revert.c_option_parse_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, %struct.replay_opts* }
%struct.replay_opts = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"option `%s' expects a number greater than zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @option_parse_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_parse_m(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.replay_opts*, align 8
  %9 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 1
  %12 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  store %struct.replay_opts* %12, %struct.replay_opts** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %17 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i32 0, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strtol(i8* %19, i8** %9, i32 10)
  %21 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %22 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %29 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %18
  %33 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.option*, %struct.option** %5, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @error(i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %32, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
