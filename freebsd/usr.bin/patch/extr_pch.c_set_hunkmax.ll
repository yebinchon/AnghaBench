; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_set_hunkmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_set_hunkmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_line = common dso_local global i32* null, align 8
@hunkmax = common dso_local global i32 0, align 4
@p_len = common dso_local global i32* null, align 8
@p_char = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_hunkmax() #0 {
  %1 = load i32*, i32** @p_line, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @hunkmax, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = trunc i64 %6 to i32
  %8 = call i8* @malloc(i32 %7)
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** @p_line, align 8
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i32*, i32** @p_len, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @hunkmax, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 2
  %17 = trunc i64 %16 to i32
  %18 = call i8* @malloc(i32 %17)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** @p_len, align 8
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32*, i32** @p_char, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @hunkmax, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* @malloc(i32 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** @p_char, align 8
  br label %30

30:                                               ; preds = %23, %20
  ret void
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
