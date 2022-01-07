; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_kwval_lconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_kwval_lconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kwval_lconv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lconv*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  %5 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %5, %struct.lconv** %3, align 8
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %83 [
    i32 147, label %7
    i32 146, label %12
    i32 149, label %16
    i32 138, label %20
    i32 136, label %24
    i32 137, label %28
    i32 131, label %33
    i32 135, label %37
    i32 145, label %41
    i32 148, label %44
    i32 130, label %47
    i32 129, label %50
    i32 134, label %53
    i32 133, label %56
    i32 128, label %59
    i32 132, label %62
    i32 141, label %65
    i32 140, label %68
    i32 144, label %71
    i32 143, label %74
    i32 139, label %77
    i32 142, label %80
  ]

7:                                                ; preds = %1
  %8 = load %struct.lconv*, %struct.lconv** %3, align 8
  %9 = getelementptr inbounds %struct.lconv, %struct.lconv* %8, i32 0, i32 21
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @format_grouping(i32 %10)
  store i8* %11, i8** %4, align 8
  br label %84

12:                                               ; preds = %1
  %13 = load %struct.lconv*, %struct.lconv** %3, align 8
  %14 = getelementptr inbounds %struct.lconv, %struct.lconv* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.lconv*, %struct.lconv** %3, align 8
  %18 = getelementptr inbounds %struct.lconv, %struct.lconv* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.lconv*, %struct.lconv** %3, align 8
  %22 = getelementptr inbounds %struct.lconv, %struct.lconv* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %4, align 8
  br label %84

24:                                               ; preds = %1
  %25 = load %struct.lconv*, %struct.lconv** %3, align 8
  %26 = getelementptr inbounds %struct.lconv, %struct.lconv* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %84

28:                                               ; preds = %1
  %29 = load %struct.lconv*, %struct.lconv** %3, align 8
  %30 = getelementptr inbounds %struct.lconv, %struct.lconv* %29, i32 0, i32 20
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @format_grouping(i32 %31)
  store i8* %32, i8** %4, align 8
  br label %84

33:                                               ; preds = %1
  %34 = load %struct.lconv*, %struct.lconv** %3, align 8
  %35 = getelementptr inbounds %struct.lconv, %struct.lconv* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %84

37:                                               ; preds = %1
  %38 = load %struct.lconv*, %struct.lconv** %3, align 8
  %39 = getelementptr inbounds %struct.lconv, %struct.lconv* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  br label %84

41:                                               ; preds = %1
  %42 = load %struct.lconv*, %struct.lconv** %3, align 8
  %43 = getelementptr inbounds %struct.lconv, %struct.lconv* %42, i32 0, i32 6
  store i8* %43, i8** %4, align 8
  br label %84

44:                                               ; preds = %1
  %45 = load %struct.lconv*, %struct.lconv** %3, align 8
  %46 = getelementptr inbounds %struct.lconv, %struct.lconv* %45, i32 0, i32 7
  store i8* %46, i8** %4, align 8
  br label %84

47:                                               ; preds = %1
  %48 = load %struct.lconv*, %struct.lconv** %3, align 8
  %49 = getelementptr inbounds %struct.lconv, %struct.lconv* %48, i32 0, i32 8
  store i8* %49, i8** %4, align 8
  br label %84

50:                                               ; preds = %1
  %51 = load %struct.lconv*, %struct.lconv** %3, align 8
  %52 = getelementptr inbounds %struct.lconv, %struct.lconv* %51, i32 0, i32 9
  store i8* %52, i8** %4, align 8
  br label %84

53:                                               ; preds = %1
  %54 = load %struct.lconv*, %struct.lconv** %3, align 8
  %55 = getelementptr inbounds %struct.lconv, %struct.lconv* %54, i32 0, i32 10
  store i8* %55, i8** %4, align 8
  br label %84

56:                                               ; preds = %1
  %57 = load %struct.lconv*, %struct.lconv** %3, align 8
  %58 = getelementptr inbounds %struct.lconv, %struct.lconv* %57, i32 0, i32 11
  store i8* %58, i8** %4, align 8
  br label %84

59:                                               ; preds = %1
  %60 = load %struct.lconv*, %struct.lconv** %3, align 8
  %61 = getelementptr inbounds %struct.lconv, %struct.lconv* %60, i32 0, i32 12
  store i8* %61, i8** %4, align 8
  br label %84

62:                                               ; preds = %1
  %63 = load %struct.lconv*, %struct.lconv** %3, align 8
  %64 = getelementptr inbounds %struct.lconv, %struct.lconv* %63, i32 0, i32 13
  store i8* %64, i8** %4, align 8
  br label %84

65:                                               ; preds = %1
  %66 = load %struct.lconv*, %struct.lconv** %3, align 8
  %67 = getelementptr inbounds %struct.lconv, %struct.lconv* %66, i32 0, i32 14
  store i8* %67, i8** %4, align 8
  br label %84

68:                                               ; preds = %1
  %69 = load %struct.lconv*, %struct.lconv** %3, align 8
  %70 = getelementptr inbounds %struct.lconv, %struct.lconv* %69, i32 0, i32 15
  store i8* %70, i8** %4, align 8
  br label %84

71:                                               ; preds = %1
  %72 = load %struct.lconv*, %struct.lconv** %3, align 8
  %73 = getelementptr inbounds %struct.lconv, %struct.lconv* %72, i32 0, i32 16
  store i8* %73, i8** %4, align 8
  br label %84

74:                                               ; preds = %1
  %75 = load %struct.lconv*, %struct.lconv** %3, align 8
  %76 = getelementptr inbounds %struct.lconv, %struct.lconv* %75, i32 0, i32 17
  store i8* %76, i8** %4, align 8
  br label %84

77:                                               ; preds = %1
  %78 = load %struct.lconv*, %struct.lconv** %3, align 8
  %79 = getelementptr inbounds %struct.lconv, %struct.lconv* %78, i32 0, i32 18
  store i8* %79, i8** %4, align 8
  br label %84

80:                                               ; preds = %1
  %81 = load %struct.lconv*, %struct.lconv** %3, align 8
  %82 = getelementptr inbounds %struct.lconv, %struct.lconv* %81, i32 0, i32 19
  store i8* %82, i8** %4, align 8
  br label %84

83:                                               ; preds = %1
  br label %84

84:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %37, %33, %28, %24, %20, %16, %12, %7
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i8* @format_grouping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
