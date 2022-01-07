; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_use.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"used more bytes than were available\00", align 1
@input_crc32 = common dso_local global i32 0, align 4
@input_buffer = common dso_local global i64 0, align 8
@input_offset = common dso_local global i64 0, align 8
@consumed_bytes = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"pack too large for current definition of off_t\00", align 1
@max_input_size = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"pack exceeds maximum allowed size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @input_len, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @die(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @input_crc32, align 4
  %11 = load i64, i64* @input_buffer, align 8
  %12 = load i64, i64* @input_offset, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @crc32(i32 %10, i64 %13, i32 %14)
  store i32 %15, i32* @input_crc32, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @input_len, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* @input_len, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @input_offset, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* @input_offset, align 8
  %23 = load i64, i64* @consumed_bytes, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @signed_add_overflows(i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @die(i32 %28)
  br label %30

30:                                               ; preds = %27, %9
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @consumed_bytes, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* @consumed_bytes, align 8
  %35 = load i64, i64* @max_input_size, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i64, i64* @consumed_bytes, align 8
  %39 = load i64, i64* @max_input_size, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @die(i32 %42)
  br label %44

44:                                               ; preds = %41, %37, %30
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @crc32(i32, i64, i32) #1

declare dso_local i64 @signed_add_overflows(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
