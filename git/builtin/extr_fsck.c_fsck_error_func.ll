; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_error_func.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_error_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_options = type { i32 }
%struct.object = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"warning in %s %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"error in %s %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%d (FSCK_IGNORE?) should never trigger this callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsck_options*, %struct.object*, i32, i8*)* @fsck_error_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_error_func(%struct.fsck_options* %0, %struct.object* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsck_options*, align 8
  %7 = alloca %struct.object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.fsck_options* %0, %struct.fsck_options** %6, align 8
  store %struct.object* %1, %struct.object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %29 [
    i32 128, label %11
    i32 129, label %20
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.object*, %struct.object** %7, align 8
  %15 = call i32 @printable_type(%struct.object* %14)
  %16 = load %struct.object*, %struct.object** %7, align 8
  %17 = call i32 @describe_object(%struct.object* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @fprintf_ln(i32 %12, i32 %13, i32 %15, i32 %17, i8* %18)
  store i32 0, i32* %5, align 4
  br label %32

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.object*, %struct.object** %7, align 8
  %24 = call i32 @printable_type(%struct.object* %23)
  %25 = load %struct.object*, %struct.object** %7, align 8
  %26 = call i32 @describe_object(%struct.object* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @fprintf_ln(i32 %21, i32 %22, i32 %24, i32 %26, i8* %27)
  store i32 1, i32* %5, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @BUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %11, %20, %29
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @fprintf_ln(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printable_type(%struct.object*) #1

declare dso_local i32 @describe_object(%struct.object*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
