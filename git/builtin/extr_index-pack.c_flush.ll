; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_flush.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i64, i64)* }

@input_offset = common dso_local global i64 0, align 8
@output_fd = common dso_local global i64 0, align 8
@input_buffer = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@input_ctx = common dso_local global i32 0, align 4
@input_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush() #0 {
  %1 = load i64, i64* @input_offset, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = load i64, i64* @output_fd, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i64, i64* @output_fd, align 8
  %8 = load i64, i64* @input_buffer, align 8
  %9 = load i64, i64* @input_offset, align 8
  %10 = call i32 @write_or_die(i64 %7, i64 %8, i64 %9)
  br label %11

11:                                               ; preds = %6, %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*, i64, i64)*, i32 (i32*, i64, i64)** %13, align 8
  %15 = load i64, i64* @input_buffer, align 8
  %16 = load i64, i64* @input_offset, align 8
  %17 = call i32 %14(i32* @input_ctx, i64 %15, i64 %16)
  %18 = load i64, i64* @input_buffer, align 8
  %19 = load i64, i64* @input_buffer, align 8
  %20 = load i64, i64* @input_offset, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @input_len, align 4
  %23 = call i32 @memmove(i64 %18, i64 %21, i32 %22)
  store i64 0, i64* @input_offset, align 8
  br label %24

24:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @write_or_die(i64, i64, i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
