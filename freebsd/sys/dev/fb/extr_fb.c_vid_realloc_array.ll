; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fb.c_vid_realloc_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fb.c_vid_realloc_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdevsw = type { i32 }

@vid_malloc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adapters = common dso_local global i32 0, align 4
@ARRAY_DELTA = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.cdevsw** null, align 8
@vidsw = common dso_local global %struct.cdevsw** null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"fb: new array size %d\0A\00", align 1
@vidcdevsw = common dso_local global %struct.cdevsw** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vid_realloc_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vid_realloc_array() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cdevsw**, align 8
  %3 = alloca %struct.cdevsw**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @vid_malloc, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  store i32 %9, i32* %1, align 4
  br label %71

10:                                               ; preds = %0
  %11 = call i32 (...) @spltty()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @adapters, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @ARRAY_DELTA, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @ARRAY_DELTA, align 8
  %17 = call i32 @rounddown(i64 %15, i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.cdevsw** @malloc(i32 %21, i32 %22, i32 %25)
  store %struct.cdevsw** %26, %struct.cdevsw*** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.cdevsw** @malloc(i32 %30, i32 %31, i32 %34)
  store %struct.cdevsw** %35, %struct.cdevsw*** %3, align 8
  %36 = load %struct.cdevsw**, %struct.cdevsw*** @adapter, align 8
  %37 = load %struct.cdevsw**, %struct.cdevsw*** %2, align 8
  %38 = load i32, i32* @adapters, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @bcopy(%struct.cdevsw** %36, %struct.cdevsw** %37, i32 %41)
  %43 = load %struct.cdevsw**, %struct.cdevsw*** @vidsw, align 8
  %44 = load %struct.cdevsw**, %struct.cdevsw*** %3, align 8
  %45 = load i32, i32* @adapters, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @bcopy(%struct.cdevsw** %43, %struct.cdevsw** %44, i32 %48)
  %50 = load i32, i32* @adapters, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %10
  %53 = load %struct.cdevsw**, %struct.cdevsw*** @adapter, align 8
  %54 = load i32, i32* @M_DEVBUF, align 4
  %55 = call i32 @free(%struct.cdevsw** %53, i32 %54)
  %56 = load %struct.cdevsw**, %struct.cdevsw*** @vidsw, align 8
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = call i32 @free(%struct.cdevsw** %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %10
  %60 = load %struct.cdevsw**, %struct.cdevsw*** %2, align 8
  store %struct.cdevsw** %60, %struct.cdevsw*** @adapter, align 8
  %61 = load %struct.cdevsw**, %struct.cdevsw*** %3, align 8
  store %struct.cdevsw** %61, %struct.cdevsw*** @vidsw, align 8
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* @adapters, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @splx(i32 %63)
  %65 = load i64, i64* @bootverbose, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @adapters, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %59
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %70, %8
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @rounddown(i64, i64) #1

declare dso_local %struct.cdevsw** @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.cdevsw**, %struct.cdevsw**, i32) #1

declare dso_local i32 @free(%struct.cdevsw**, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
