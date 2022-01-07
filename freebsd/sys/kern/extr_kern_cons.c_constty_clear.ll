; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_constty_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_constty_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@constty = common dso_local global i32* null, align 8
@consbuf = common dso_local global i32* null, align 8
@conscallout = common dso_local global i32 0, align 4
@consmsgbuf = common dso_local global i32 0, align 4
@M_TTYCONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @constty_clear() #0 {
  %1 = alloca i32, align 4
  store i32* null, i32** @constty, align 8
  %2 = load i32*, i32** @consbuf, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %17

5:                                                ; preds = %0
  %6 = call i32 @callout_stop(i32* @conscallout)
  br label %7

7:                                                ; preds = %10, %5
  %8 = call i32 @msgbuf_getchar(i32* @consmsgbuf)
  store i32 %8, i32* %1, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @cnputc(i32 %11)
  br label %7

13:                                               ; preds = %7
  %14 = load i32*, i32** @consbuf, align 8
  %15 = load i32, i32* @M_TTYCONS, align 4
  %16 = call i32 @free(i32* %14, i32 %15)
  store i32* null, i32** @consbuf, align 8
  br label %17

17:                                               ; preds = %13, %4
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @msgbuf_getchar(i32*) #1

declare dso_local i32 @cnputc(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
