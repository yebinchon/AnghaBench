; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_spew_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_spew_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_lines = common dso_local global i64 0, align 8
@ofp = common dso_local global i32* null, align 8
@debug = common dso_local global i32 0, align 4
@last_frozen_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @spew_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spew_output() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @input_lines, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @input_lines, align 8
  %6 = call i32 @copy_till(i64 %5, i32 1)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32*, i32** @ofp, align 8
  %9 = call i64 @ferror(i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32*, i32** @ofp, align 8
  %13 = call i64 @fclose(i32* %12)
  %14 = icmp eq i64 %13, 0
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ false, %7 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %1, align 4
  store i32* null, i32** @ofp, align 8
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @copy_till(i64, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
