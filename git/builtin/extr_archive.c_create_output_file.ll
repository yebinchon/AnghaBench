; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_archive.c_create_output_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_archive.c_create_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create archive file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"could not redirect output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_output_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_output_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @O_CREAT, align 4
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @O_TRUNC, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i8* %4, i32 %9, i32 438)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 (i32, ...) @die_errno(i32 %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @dup2(i32 %21, i32 1)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (i32, ...) @die_errno(i32 %25)
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @close(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %17
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @die_errno(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
