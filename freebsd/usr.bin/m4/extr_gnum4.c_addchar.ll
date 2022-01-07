; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_addchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_addchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current = common dso_local global i32 0, align 4
@bufsize = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @addchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @current, align 4
  %4 = add nsw i32 %3, 1
  %5 = load i32, i32* @bufsize, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* @bufsize, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1024, i32* @bufsize, align 4
  br label %14

11:                                               ; preds = %7
  %12 = load i32, i32* @bufsize, align 4
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* @bufsize, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = load i32*, i32** @buffer, align 8
  %16 = load i32, i32* @bufsize, align 4
  %17 = call i32* @xrealloc(i32* %15, i32 %16, i32* null)
  store i32* %17, i32** @buffer, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32*, i32** @buffer, align 8
  %21 = load i32, i32* @current, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @current, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %19, i32* %24, align 4
  ret void
}

declare dso_local i32* @xrealloc(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
