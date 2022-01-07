; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_kbd_realloc_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_kbd_realloc_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keyboards = common dso_local global i32 0, align 4
@ARRAY_DELTA = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@keyboard = common dso_local global i32** null, align 8
@kbdsw = common dso_local global i32** null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"kbd: new array size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kbd_realloc_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_realloc_array() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @spltty()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @keyboards, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @ARRAY_DELTA, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @ARRAY_DELTA, align 8
  %12 = call i32 @rounddown(i64 %10, i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i32** @malloc(i32 %16, i32 %17, i32 %20)
  store i32** %21, i32*** %2, align 8
  %22 = load i32**, i32*** %2, align 8
  %23 = icmp eq i32** %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @splx(i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %1, align 4
  br label %83

28:                                               ; preds = %0
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i32** @malloc(i32 %32, i32 %33, i32 %36)
  store i32** %37, i32*** %3, align 8
  %38 = load i32**, i32*** %3, align 8
  %39 = icmp eq i32** %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i32**, i32*** %2, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(i32** %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @splx(i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %1, align 4
  br label %83

47:                                               ; preds = %28
  %48 = load i32**, i32*** @keyboard, align 8
  %49 = load i32**, i32*** %2, align 8
  %50 = load i32, i32* @keyboards, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @bcopy(i32** %48, i32** %49, i32 %53)
  %55 = load i32**, i32*** @kbdsw, align 8
  %56 = load i32**, i32*** %3, align 8
  %57 = load i32, i32* @keyboards, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @bcopy(i32** %55, i32** %56, i32 %60)
  %62 = load i32, i32* @keyboards, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load i32**, i32*** @keyboard, align 8
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = call i32 @free(i32** %65, i32 %66)
  %68 = load i32**, i32*** @kbdsw, align 8
  %69 = load i32, i32* @M_DEVBUF, align 4
  %70 = call i32 @free(i32** %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %47
  %72 = load i32**, i32*** %2, align 8
  store i32** %72, i32*** @keyboard, align 8
  %73 = load i32**, i32*** %3, align 8
  store i32** %73, i32*** @kbdsw, align 8
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* @keyboards, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @splx(i32 %75)
  %77 = load i64, i64* @bootverbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @keyboards, align 4
  %81 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %71
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %82, %40, %24
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @rounddown(i64, i64) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @bcopy(i32**, i32**, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
