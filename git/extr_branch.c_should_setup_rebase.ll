; ModuleID = '/home/carl/AnghaBench/git/extr_branch.c_should_setup_rebase.c'
source_filename = "/home/carl/AnghaBench/git/extr_branch.c_should_setup_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@autorebase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @should_setup_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_setup_rebase(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @autorebase, align 4
  switch i32 %4, label %15 [
    i32 129, label %5
    i32 130, label %6
    i32 128, label %10
    i32 131, label %14
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %10, %6, %5
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
