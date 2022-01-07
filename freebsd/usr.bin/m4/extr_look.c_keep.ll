; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_keep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_keep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kept_capacity = common dso_local global i32 0, align 4
@kept_size = common dso_local global i32 0, align 4
@kept = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Out of memory while saving %d strings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @keep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keep(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @kept_capacity, align 4
  %4 = load i32, i32* @kept_size, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, i32* @kept_capacity, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @kept_capacity, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* @kept_capacity, align 4
  br label %13

12:                                               ; preds = %6
  store i32 50, i32* @kept_capacity, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i8**, i8*** @kept, align 8
  %15 = load i32, i32* @kept_capacity, align 4
  %16 = load i32, i32* @kept_capacity, align 4
  %17 = call i8** @xreallocarray(i8** %14, i32 %15, i32 8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8** %17, i8*** @kept, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i8*, i8** %2, align 8
  %20 = load i8**, i8*** @kept, align 8
  %21 = load i32, i32* @kept_size, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @kept_size, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  store i8* %19, i8** %24, align 8
  ret void
}

declare dso_local i8** @xreallocarray(i8**, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
