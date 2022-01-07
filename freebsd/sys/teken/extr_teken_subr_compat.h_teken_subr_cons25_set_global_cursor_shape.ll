; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr_compat.h_teken_subr_cons25_set_global_cursor_shape.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr_compat.h_teken_subr_cons25_set_global_cursor_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TP_SETGLOBALCURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @teken_subr_cons25_set_global_cursor_shape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_cons25_set_global_cursor_shape(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %40

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %28, %12
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  %27 = or i32 %19, %26
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %8, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @TP_SETGLOBALCURSOR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @teken_funcs_param(i32* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @teken_funcs_param(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
