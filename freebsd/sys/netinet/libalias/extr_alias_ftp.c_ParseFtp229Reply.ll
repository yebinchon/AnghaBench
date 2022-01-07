; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_ParseFtp229Reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_ParseFtp229Reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"229 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i8*, i32)* @ParseFtp229Reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFtp229Reply(%struct.libalias* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 11
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %112

21:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  store i8 124, i8* %9, align 1
  store i32 0, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %22

22:                                               ; preds = %101, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %8, align 1
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %100 [
    i32 0, label %33
    i32 1, label %41
    i32 2, label %45
    i32 3, label %45
    i32 4, label %56
    i32 5, label %68
    i32 6, label %91
  ]

33:                                               ; preds = %26
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 40
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %100

41:                                               ; preds = %26
  %42 = load i8, i8* %8, align 1
  store i8 %42, i8* %9, align 1
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %100

45:                                               ; preds = %26, %26
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %112

55:                                               ; preds = %51
  br label %100

56:                                               ; preds = %26
  %57 = load i8, i8* %8, align 1
  %58 = call i32 @isdigit(i8 signext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %112

67:                                               ; preds = %60
  br label %100

68:                                               ; preds = %26
  %69 = load i8, i8* %8, align 1
  %70 = call i32 @isdigit(i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 10, %73
  %75 = load i8, i8* %8, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = sub nsw i32 %77, 48
  store i32 %78, i32* %12, align 4
  br label %90

79:                                               ; preds = %68
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %9, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %89

88:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %112

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %72
  br label %100

91:                                               ; preds = %26
  %92 = load i8, i8* %8, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 41
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %112

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %26, %99, %90, %67, %55, %41, %40
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %22

104:                                              ; preds = %22
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 7
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.libalias*, %struct.libalias** %5, align 8
  %110 = getelementptr inbounds %struct.libalias, %struct.libalias* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 1, i32* %4, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %107, %98, %88, %66, %54, %20, %15
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
