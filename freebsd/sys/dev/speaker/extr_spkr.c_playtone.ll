; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_playtone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_playtone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_MULT = common dso_local global i32 0, align 4
@DENOM_MULT = common dso_local global i32 0, align 4
@whole = common dso_local global i32 0, align 4
@FILLTIME = common dso_local global i32 0, align 4
@fill = common dso_local global i32 0, align 4
@pitchtab = common dso_local global i32* null, align 8
@LEGATO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @playtone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playtone(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %21, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @NUM_MULT, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @DENOM_MULT, align 4
  %19 = load i32, i32* %10, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  br label %88

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* @whole, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sdiv i32 %37, %40
  %42 = call i32 @rest(i32 %41)
  br label %88

43:                                               ; preds = %31
  %44 = load i32, i32* @whole, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %46, %49
  %51 = load i32, i32* @whole, align 4
  %52 = load i32, i32* @FILLTIME, align 4
  %53 = load i32, i32* @fill, align 4
  %54 = sub nsw i32 %52, %53
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @FILLTIME, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sdiv i32 %55, %58
  %60 = sub nsw i32 %50, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @whole, align 4
  %62 = load i32, i32* @FILLTIME, align 4
  %63 = load i32, i32* @fill, align 4
  %64 = sub nsw i32 %62, %63
  %65 = mul nsw i32 %61, %64
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* @FILLTIME, align 4
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %67, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** @pitchtab, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @tone(i32 %78, i32 %79)
  %81 = load i32, i32* @fill, align 4
  %82 = load i32, i32* @LEGATO, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %43
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @rest(i32 %85)
  br label %87

87:                                               ; preds = %84, %43
  br label %88

88:                                               ; preds = %30, %87, %34
  ret void
}

declare dso_local i32 @rest(i32) #1

declare dso_local i32 @tone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
