; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_dom4wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_dom4wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wrapindex = common dso_local global i32 0, align 4
@maxwraps = common dso_local global i32 0, align 4
@m4wraps = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"too many m4wraps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dom4wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dom4wrap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @wrapindex, align 4
  %4 = load i32, i32* @maxwraps, align 4
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* @maxwraps, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 16, i32* @maxwraps, align 4
  br label %13

10:                                               ; preds = %6
  %11 = load i32, i32* @maxwraps, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* @maxwraps, align 4
  br label %13

13:                                               ; preds = %10, %9
  %14 = load i32*, i32** @m4wraps, align 8
  %15 = load i32, i32* @maxwraps, align 4
  %16 = call i32* @xreallocarray(i32* %14, i32 %15, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** @m4wraps, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @xstrdup(i8* %18)
  %20 = load i32*, i32** @m4wraps, align 8
  %21 = load i32, i32* @wrapindex, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @wrapindex, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %19, i32* %24, align 4
  ret void
}

declare dso_local i32* @xreallocarray(i32*, i32, i32, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
