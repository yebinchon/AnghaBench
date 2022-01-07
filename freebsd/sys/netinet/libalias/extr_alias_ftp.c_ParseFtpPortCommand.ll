; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_ParseFtpPortCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_ftp.c_ParseFtpPortCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"PORT \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i8*, i32)* @ParseFtpPortCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFtpPortCommand(%struct.libalias* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 18
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i32 5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %125

22:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 5, i32* %9, align 4
  br label %23

23:                                               ; preds = %109, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %8, align 1
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %108 [
    i32 0, label %34
    i32 1, label %43
    i32 3, label %43
    i32 5, label %43
    i32 7, label %43
    i32 9, label %43
    i32 11, label %43
    i32 2, label %55
    i32 4, label %55
    i32 6, label %55
    i32 8, label %55
    i32 10, label %80
    i32 12, label %80
  ]

34:                                               ; preds = %27
  %35 = load i8, i8* %8, align 1
  %36 = call i32 @isspace(i8 signext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %108

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %27, %27, %27, %27, %27, %27, %42
  %44 = load i8, i8* %8, align 1
  %45 = call i32 @isdigit(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %125

54:                                               ; preds = %47
  br label %108

55:                                               ; preds = %27, %27, %27, %27
  %56 = load i8, i8* %8, align 1
  %57 = call i32 @isdigit(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 10, %60
  %62 = load i8, i8* %8, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %61, %63
  %65 = sub nsw i32 %64, 48
  store i32 %65, i32* %13, align 4
  br label %79

66:                                               ; preds = %55
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 44
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %78

77:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %125

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %59
  br label %108

80:                                               ; preds = %27, %27
  %81 = load i8, i8* %8, align 1
  %82 = call i32 @isdigit(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 10, %85
  %87 = load i8, i8* %8, align 1
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = sub nsw i32 %89, 48
  store i32 %90, i32* %13, align 4
  br label %107

91:                                               ; preds = %80
  %92 = load i8, i8* %8, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 44
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 12
  br i1 %97, label %98, label %105

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 %99, 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %106

105:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %125

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %84
  br label %108

108:                                              ; preds = %27, %107, %79, %54, %38
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %23

112:                                              ; preds = %23
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 13
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @htonl(i32 %116)
  %118 = load %struct.libalias*, %struct.libalias** %5, align 8
  %119 = getelementptr inbounds %struct.libalias, %struct.libalias* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.libalias*, %struct.libalias** %5, align 8
  %123 = getelementptr inbounds %struct.libalias, %struct.libalias* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  store i32 1, i32* %4, align 4
  br label %125

124:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %115, %105, %77, %53, %21, %16
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
