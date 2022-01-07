; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_write_trailer.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@block = common dso_local global i64 0, align 8
@RECORDSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_trailer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @BLOCKSIZE, align 4
  %3 = load i32, i32* @offset, align 4
  %4 = sub nsw i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i64, i64* @block, align 8
  %6 = load i32, i32* @offset, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @memset(i64 %8, i32 0, i32 %9)
  %11 = load i64, i64* @block, align 8
  %12 = load i32, i32* @BLOCKSIZE, align 4
  %13 = call i32 @write_or_die(i32 1, i64 %11, i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @RECORDSIZE, align 4
  %16 = mul nsw i32 2, %15
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %0
  %19 = load i64, i64* @block, align 8
  %20 = load i32, i32* @offset, align 4
  %21 = call i32 @memset(i64 %19, i32 0, i32 %20)
  %22 = load i64, i64* @block, align 8
  %23 = load i32, i32* @BLOCKSIZE, align 4
  %24 = call i32 @write_or_die(i32 1, i64 %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @write_or_die(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
