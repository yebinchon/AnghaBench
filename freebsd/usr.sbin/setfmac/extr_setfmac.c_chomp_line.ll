; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_chomp_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_chomp_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @chomp_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chomp_line(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i8*, i8** %6, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %11 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = zext i32 %17 to i64
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %10
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @isspace(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %10

32:                                               ; preds = %27, %10
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  store i8 0, i8* %39, align 1
  %40 = load i64*, i64** %5, align 8
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %129

42:                                               ; preds = %32
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %48 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sub i64 %47, %53
  %55 = call i32 @memmove(i8* %44, i8* %45, i64 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i8**, i8*** %4, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, %61
  store i64 %64, i64* %62, align 8
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %83, %42
  %72 = load i8*, i8** %6, align 8
  %73 = load i8**, i8*** %4, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp uge i8* %72, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @isspace(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %86

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %85, i8** %6, align 8
  br label %71

86:                                               ; preds = %81, %71
  %87 = load i8*, i8** %6, align 8
  %88 = load i8**, i8*** %4, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = icmp ne i8* %87, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load i8*, i8** %6, align 8
  %97 = load i8**, i8*** %4, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %96 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = add nsw i64 %101, 1
  %103 = load i64*, i64** %5, align 8
  store i64 %102, i64* %103, align 8
  br label %122

104:                                              ; preds = %86
  %105 = load i64*, i64** %5, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  %108 = call i8* @malloc(i64 %107)
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i8*, i8** %6, align 8
  %115 = load i8**, i8*** %4, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i64*, i64** %5, align 8
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @strncpy(i8* %114, i8* %116, i64 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load i8**, i8*** %4, align 8
  store i8* %120, i8** %121, align 8
  store i32 1, i32* %7, align 4
  br label %122

122:                                              ; preds = %113, %95
  %123 = load i8**, i8*** %4, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i64*, i64** %5, align 8
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %37
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
