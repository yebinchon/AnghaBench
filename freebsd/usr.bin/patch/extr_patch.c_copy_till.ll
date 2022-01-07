; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_copy_till.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_copy_till.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_frozen_line = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"misordered hunks! output would be garbled\0A\00", align 1
@last_line_missing_eol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @copy_till to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_till(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @last_frozen_line, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  br label %11

11:                                               ; preds = %33, %10
  %12 = load i64, i64* @last_frozen_line, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i64, i64* @last_frozen_line, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @last_frozen_line, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* @last_frozen_line, align 8
  %25 = load i32, i32* @last_line_missing_eol, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @dump_line(i64 %24, i32 %28)
  br label %33

30:                                               ; preds = %20, %15
  %31 = load i64, i64* @last_frozen_line, align 8
  %32 = call i32 @dump_line(i64 %31, i32 1)
  br label %33

33:                                               ; preds = %30, %23
  br label %11

34:                                               ; preds = %11
  ret void
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @dump_line(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
