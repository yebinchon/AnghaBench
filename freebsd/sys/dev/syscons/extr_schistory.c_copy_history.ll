; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_schistory.c_copy_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_schistory.c_copy_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @copy_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_history(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @sc_vtb_rows(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @sc_vtb_cols(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sc_vtb_cols(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @imin(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @sc_vtb_tail(i32* %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %50, %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sc_vtb_append(i32* %27, i32 %28, i32* %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @sc_vtb_tail(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @sc_vtb_pos(i32* %37, i32 %39, i32 %42)
  %44 = call i32 @sc_vtb_seek(i32* %36, i32 %43)
  br label %45

45:                                               ; preds = %35, %26
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @sc_vtb_pos(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %22

53:                                               ; preds = %22
  ret void
}

declare dso_local i32 @sc_vtb_rows(i32*) #1

declare dso_local i32 @sc_vtb_cols(i32*) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @sc_vtb_tail(i32*) #1

declare dso_local i32 @sc_vtb_append(i32*, i32, i32*, i32) #1

declare dso_local i32 @sc_vtb_seek(i32*, i32) #1

declare dso_local i32 @sc_vtb_pos(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
