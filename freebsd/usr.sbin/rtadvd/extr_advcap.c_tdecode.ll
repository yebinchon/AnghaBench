; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_advcap.c_tdecode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_advcap.c_tdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"E\1B^^\\\\::n\0Ar\0Dt\09b\08f\0C\22\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @tdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tdecode(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i8 58, i8* %9, align 1
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %111, %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 34
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  store i8 34, i8* %9, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %97, %20
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br label %32

32:                                               ; preds = %27, %21
  %33 = phi i1 [ false, %21 ], [ %31, %27 ]
  br i1 %33, label %34, label %102

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %97 [
    i32 94, label %36
    i32 92, label %42
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 31
  store i32 %41, i32* %6, align 4
  br label %97

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %65, %42
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %97

59:                                               ; preds = %47
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %47

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i32 @isdigit(i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 48
  store i32 %73, i32* %6, align 4
  store i32 2, i32* %8, align 4
  br label %74

74:                                               ; preds = %93, %71
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 3
  store i32 %76, i32* %6, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %3, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @isdigit(i8 signext %90)
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ false, %84 ], [ %92, %88 ]
  br i1 %94, label %74, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %34, %96, %54, %36
  %98 = load i32, i32* %6, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  store i8 %99, i8* %100, align 1
  br label %21

102:                                              ; preds = %32
  %103 = load i32, i32* %6, align 4
  %104 = load i8, i8* %9, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8, i8* %9, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 58
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i8 58, i8* %9, align 1
  br label %12

112:                                              ; preds = %107, %102
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  store i8 0, i8* %113, align 1
  %115 = load i8**, i8*** %4, align 8
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %3, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i8**, i8*** %4, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i8*, i8** %3, align 8
  ret i8* %119
}

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
