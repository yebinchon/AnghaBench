; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_cat-file.c_batch_option_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_cat-file.c_batch_option_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, %struct.batch_options* }
%struct.batch_options = type { i32, i32, i8* }

@.str = private unnamed_addr constant [39 x i8] c"only one batch option may be specified\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @batch_option_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batch_option_callback(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.batch_options*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 1
  %11 = load %struct.batch_options*, %struct.batch_options** %10, align 8
  store %struct.batch_options* %11, %struct.batch_options** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @BUG_ON_OPT_NEG(i32 %12)
  %14 = load %struct.batch_options*, %struct.batch_options** %8, align 8
  %15 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @error(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.batch_options*, %struct.batch_options** %8, align 8
  %23 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.option*, %struct.option** %5, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.batch_options*, %struct.batch_options** %8, align 8
  %32 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.batch_options*, %struct.batch_options** %8, align 8
  %35 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
