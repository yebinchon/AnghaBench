; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_dialtone.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_dialtone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R1 = common dso_local global i32 0, align 4
@NR13_REG = common dso_local global i32 0, align 4
@C1 = common dso_local global i32 0, align 4
@NR23_REG = common dso_local global i32 0, align 4
@C2 = common dso_local global i32 0, align 4
@C3 = common dso_local global i32 0, align 4
@C4 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@NR51_REG = common dso_local global i32 0, align 4
@NR24_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dialtone(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %79, %3
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %73 [
    i32 49, label %20
    i32 50, label %23
    i32 51, label %26
    i32 65, label %29
    i32 97, label %29
    i32 52, label %32
    i32 53, label %35
    i32 54, label %38
    i32 66, label %41
    i32 98, label %41
    i32 55, label %44
    i32 56, label %47
    i32 57, label %50
    i32 67, label %53
    i32 99, label %53
    i32 42, label %56
    i32 48, label %59
    i32 35, label %62
    i32 68, label %65
    i32 100, label %65
    i32 44, label %68
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* @R1, align 4
  store i32 %21, i32* @NR13_REG, align 4
  %22 = load i32, i32* @C1, align 4
  store i32 %22, i32* @NR23_REG, align 4
  br label %74

23:                                               ; preds = %14
  %24 = load i32, i32* @R1, align 4
  store i32 %24, i32* @NR13_REG, align 4
  %25 = load i32, i32* @C2, align 4
  store i32 %25, i32* @NR23_REG, align 4
  br label %74

26:                                               ; preds = %14
  %27 = load i32, i32* @R1, align 4
  store i32 %27, i32* @NR13_REG, align 4
  %28 = load i32, i32* @C3, align 4
  store i32 %28, i32* @NR23_REG, align 4
  br label %74

29:                                               ; preds = %14, %14
  %30 = load i32, i32* @R1, align 4
  store i32 %30, i32* @NR13_REG, align 4
  %31 = load i32, i32* @C4, align 4
  store i32 %31, i32* @NR23_REG, align 4
  br label %74

32:                                               ; preds = %14
  %33 = load i32, i32* @R2, align 4
  store i32 %33, i32* @NR13_REG, align 4
  %34 = load i32, i32* @C1, align 4
  store i32 %34, i32* @NR23_REG, align 4
  br label %74

35:                                               ; preds = %14
  %36 = load i32, i32* @R2, align 4
  store i32 %36, i32* @NR13_REG, align 4
  %37 = load i32, i32* @C2, align 4
  store i32 %37, i32* @NR23_REG, align 4
  br label %74

38:                                               ; preds = %14
  %39 = load i32, i32* @R2, align 4
  store i32 %39, i32* @NR13_REG, align 4
  %40 = load i32, i32* @C3, align 4
  store i32 %40, i32* @NR23_REG, align 4
  br label %74

41:                                               ; preds = %14, %14
  %42 = load i32, i32* @R2, align 4
  store i32 %42, i32* @NR13_REG, align 4
  %43 = load i32, i32* @C4, align 4
  store i32 %43, i32* @NR23_REG, align 4
  br label %74

44:                                               ; preds = %14
  %45 = load i32, i32* @R3, align 4
  store i32 %45, i32* @NR13_REG, align 4
  %46 = load i32, i32* @C1, align 4
  store i32 %46, i32* @NR23_REG, align 4
  br label %74

47:                                               ; preds = %14
  %48 = load i32, i32* @R3, align 4
  store i32 %48, i32* @NR13_REG, align 4
  %49 = load i32, i32* @C2, align 4
  store i32 %49, i32* @NR23_REG, align 4
  br label %74

50:                                               ; preds = %14
  %51 = load i32, i32* @R3, align 4
  store i32 %51, i32* @NR13_REG, align 4
  %52 = load i32, i32* @C3, align 4
  store i32 %52, i32* @NR23_REG, align 4
  br label %74

53:                                               ; preds = %14, %14
  %54 = load i32, i32* @R3, align 4
  store i32 %54, i32* @NR13_REG, align 4
  %55 = load i32, i32* @C4, align 4
  store i32 %55, i32* @NR23_REG, align 4
  br label %74

56:                                               ; preds = %14
  %57 = load i32, i32* @R4, align 4
  store i32 %57, i32* @NR13_REG, align 4
  %58 = load i32, i32* @C1, align 4
  store i32 %58, i32* @NR23_REG, align 4
  br label %74

59:                                               ; preds = %14
  %60 = load i32, i32* @R4, align 4
  store i32 %60, i32* @NR13_REG, align 4
  %61 = load i32, i32* @C2, align 4
  store i32 %61, i32* @NR23_REG, align 4
  br label %74

62:                                               ; preds = %14
  %63 = load i32, i32* @R4, align 4
  store i32 %63, i32* @NR13_REG, align 4
  %64 = load i32, i32* @C3, align 4
  store i32 %64, i32* @NR23_REG, align 4
  br label %74

65:                                               ; preds = %14, %14
  %66 = load i32, i32* @R4, align 4
  store i32 %66, i32* @NR13_REG, align 4
  %67 = load i32, i32* @C4, align 4
  store i32 %67, i32* @NR23_REG, align 4
  br label %74

68:                                               ; preds = %14
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @delay(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @delay(i32 %71)
  br label %73

73:                                               ; preds = %14, %68
  store i32 0, i32* @NR51_REG, align 4
  br label %79

74:                                               ; preds = %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20
  store i32 135, i32* @NR24_REG, align 4
  store i32 51, i32* @NR51_REG, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @delay(i32 %75)
  store i32 0, i32* @NR51_REG, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @delay(i32 %77)
  br label %79

79:                                               ; preds = %74, %73
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  br label %8

82:                                               ; preds = %8
  ret void
}

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
