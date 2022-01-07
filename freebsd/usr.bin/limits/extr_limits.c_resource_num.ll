; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/limits/extr_limits.c_resource_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/limits/extr_limits.c_resource_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RLIM_INFINITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unlimit\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid value -%c `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*)* @resource_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resource_num(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i64, i64* @RLIM_INFINITY, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %138

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %138, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %138, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %138, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %138, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %8, align 8
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %128 [
    i32 141, label %35
    i32 139, label %84
    i32 140, label %84
    i32 131, label %84
    i32 142, label %84
    i32 133, label %84
    i32 137, label %84
    i32 132, label %84
    i32 128, label %84
    i32 130, label %84
    i32 135, label %124
    i32 136, label %124
    i32 134, label %124
    i32 138, label %124
    i32 129, label %124
  ]

35:                                               ; preds = %32
  store i32 0, i32* @errno, align 4
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %78, %35
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strtoq(i8* %41, i8** %9, i32 0)
  store i64 %42, i64* %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %45, %40
  br label %83

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  switch i32 %57, label %61 [
    i32 0, label %58
    i32 115, label %62
    i32 83, label %62
    i32 109, label %63
    i32 77, label %63
    i32 104, label %66
    i32 72, label %66
    i32 100, label %69
    i32 68, label %69
    i32 119, label %72
    i32 87, label %72
    i32 121, label %75
    i32 89, label %75
  ]

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %53, %58
  br label %62

62:                                               ; preds = %53, %53, %61
  br label %78

63:                                               ; preds = %53, %53
  %64 = load i64, i64* %10, align 8
  %65 = mul nsw i64 %64, 60
  store i64 %65, i64* %10, align 8
  br label %78

66:                                               ; preds = %53, %53
  %67 = load i64, i64* %10, align 8
  %68 = mul nsw i64 %67, 3600
  store i64 %68, i64* %10, align 8
  br label %78

69:                                               ; preds = %53, %53
  %70 = load i64, i64* %10, align 8
  %71 = mul nsw i64 %70, 86400
  store i64 %71, i64* %10, align 8
  br label %78

72:                                               ; preds = %53, %53
  %73 = load i64, i64* %10, align 8
  %74 = mul nsw i64 %73, 604800
  store i64 %74, i64* %10, align 8
  br label %78

75:                                               ; preds = %53, %53
  %76 = load i64, i64* %10, align 8
  %77 = mul nsw i64 %76, 31536000
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %75, %72, %69, %66, %63, %62
  %79 = load i8*, i8** %9, align 8
  store i8* %79, i8** %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %7, align 8
  br label %36

83:                                               ; preds = %52, %36
  br label %128

84:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32
  store i32 0, i32* @errno, align 4
  store i64 0, i64* %7, align 8
  br label %85

85:                                               ; preds = %116, %84
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @strtoq(i8* %90, i8** %9, i32 0)
  store i64 %91, i64* %12, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @errno, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %94, %89
  br label %123

102:                                              ; preds = %98
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  %105 = load i8, i8* %103, align 1
  %106 = sext i8 %105 to i32
  switch i32 %106, label %110 [
    i32 0, label %107
    i32 98, label %111
    i32 66, label %111
    i32 107, label %112
    i32 75, label %112
    i32 109, label %113
    i32 77, label %113
    i32 103, label %114
    i32 71, label %114
    i32 116, label %115
    i32 84, label %115
  ]

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %9, align 8
  br label %110

110:                                              ; preds = %102, %107
  store i64 1, i64* %11, align 8
  br label %116

111:                                              ; preds = %102, %102
  store i64 512, i64* %11, align 8
  br label %116

112:                                              ; preds = %102, %102
  store i64 1024, i64* %11, align 8
  br label %116

113:                                              ; preds = %102, %102
  store i64 1048576, i64* %11, align 8
  br label %116

114:                                              ; preds = %102, %102
  store i64 1073741824, i64* %11, align 8
  br label %116

115:                                              ; preds = %102, %102
  store i64 1099511627776, i64* %11, align 8
  br label %116

116:                                              ; preds = %115, %114, %113, %112, %111, %110
  %117 = load i8*, i8** %9, align 8
  store i8* %117, i8** %8, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %11, align 8
  %120 = mul nsw i64 %118, %119
  %121 = load i64, i64* %7, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %7, align 8
  br label %85

123:                                              ; preds = %101, %85
  br label %128

124:                                              ; preds = %32, %32, %32, %32, %32
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @strtoq(i8* %125, i8** %9, i32 0)
  store i64 %126, i64* %7, align 8
  %127 = load i8*, i8** %9, align 8
  store i8* %127, i8** %8, align 8
  br label %128

128:                                              ; preds = %32, %124, %123, %83
  %129 = load i8*, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %133, i8* %134)
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %28, %24, %20, %16, %3
  %139 = load i64, i64* %7, align 8
  ret i64 %139
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i32, i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
