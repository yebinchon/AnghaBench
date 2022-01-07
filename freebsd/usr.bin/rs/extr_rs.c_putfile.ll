; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_putfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_putfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@elem = common dso_local global i8** null, align 8
@flags = common dso_local global i32 0, align 4
@TRANSPOSE = common dso_local global i32 0, align 4
@orows = common dso_local global i32 0, align 4
@nelem = common dso_local global i32 0, align 4
@ocols = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @putfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putfile() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8**, i8*** @elem, align 8
  store i8** %5, i8*** %1, align 8
  %6 = load i32, i32* @flags, align 4
  %7 = load i32, i32* @TRANSPOSE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @orows, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %15
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @nelem, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i8**, i8*** %1, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* @orows, align 4
  %31 = sdiv i32 %29, %30
  %32 = call i32 @prints(i8* %26, i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @orows, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
  %38 = call i32 @putchar(i8 signext 10)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %11

42:                                               ; preds = %11
  br label %77

43:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @orows, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ocols, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @nelem, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8**, i8*** %1, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @prints(i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %49

71:                                               ; preds = %49
  %72 = call i32 @putchar(i8 signext 10)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %44

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %76, %42
  ret void
}

declare dso_local i32 @prints(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
