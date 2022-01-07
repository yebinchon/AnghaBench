; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_psdate.c_aindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_psdate.c_aindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32)* @aindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aindex(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %11
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @strncpy(i8* %13, i8* %15, i32 %16)
  %18 = call i32 @strlen(i32 %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %33, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @tolower(i8 zeroext %27)
  %29 = trunc i64 %28 to i8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %31
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %46 = load i8**, i8*** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %45, i8* %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %44, %37
  %54 = phi i1 [ false, %37 ], [ %52, %44 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %53
  %60 = load i8**, i8*** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 -1, i32* %8, align 4
  br label %114

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isalpha(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi i1 [ false, %68 ], [ %79, %74 ]
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  br label %68

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %109, %86
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %87
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 44
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 zeroext %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %99, %93
  %106 = phi i1 [ true, %93 ], [ %104, %99 ]
  br label %107

107:                                              ; preds = %105, %87
  %108 = phi i1 [ false, %87 ], [ %106, %105 ]
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  %110 = load i8**, i8*** %5, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  br label %87

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %66
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @tolower(i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
