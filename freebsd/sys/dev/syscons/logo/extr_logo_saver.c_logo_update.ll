; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/logo/extr_logo_saver.c_logo_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/logo/extr_logo_saver.c_logo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logo_update.xpos = internal global i32 0, align 4
@logo_update.ypos = internal global i32 0, align 4
@logo_update.xinc = internal global i32 1, align 4
@logo_update.yinc = internal global i32 1, align 4
@logo_w = common dso_local global i64 0, align 8
@scrw = common dso_local global i64 0, align 8
@logo_h = common dso_local global i64 0, align 8
@scrh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @logo_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logo_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @logo_update.xpos, align 4
  %4 = sext i32 %3 to i64
  %5 = load i64, i64* @logo_w, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i32, i32* @logo_update.xinc, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %6, %8
  %10 = load i64, i64* @scrw, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @logo_update.xpos, align 4
  %14 = load i32, i32* @logo_update.xinc, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @logo_update.xinc, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* @logo_update.xinc, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* @logo_update.ypos, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @logo_h, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @logo_update.yinc, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* @scrh, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @logo_update.ypos, align 4
  %32 = load i32, i32* @logo_update.yinc, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %20
  %36 = load i32, i32* @logo_update.yinc, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* @logo_update.yinc, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* @logo_update.xinc, align 4
  %40 = load i32, i32* @logo_update.xpos, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @logo_update.xpos, align 4
  %42 = load i32, i32* @logo_update.yinc, align 4
  %43 = load i32, i32* @logo_update.ypos, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* @logo_update.ypos, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @logo_update.xpos, align 4
  %47 = load i32, i32* @logo_update.ypos, align 4
  %48 = call i32 @logo_blit(i32* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @logo_blit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
