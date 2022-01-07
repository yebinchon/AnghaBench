; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pull.c_argv_push_verbosity.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pull.c_argv_push_verbosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@opt_verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argv_array*)* @argv_push_verbosity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_push_verbosity(%struct.argv_array* %0) #0 {
  %2 = alloca %struct.argv_array*, align 8
  %3 = alloca i32, align 4
  store %struct.argv_array* %0, %struct.argv_array** %2, align 8
  %4 = load i32, i32* @opt_verbosity, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %10 = call i32 @argv_array_push(%struct.argv_array* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* @opt_verbosity, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %22, %14
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %21 = call i32 @argv_array_push(%struct.argv_array* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %16

25:                                               ; preds = %16
  ret void
}

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
