; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_parse_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_parse_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ports = common dso_local global i32* null, align 8
@INT_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"calloc()\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"syntax error in port range\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid port number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ports(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32*, i32** @ports, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @INT_BIT, align 4
  %11 = sdiv i32 65536, %10
  %12 = call i32* @calloc(i32 %11, i32 4)
  store i32* %12, i32** @ports, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %145, %85, %17
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %146

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %46, %31
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isdigit(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  br label %33

49:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 10
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @digittoint(i8 signext %58)
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  br label %50

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 65535
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %64
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @SET_PORT(i32 %73)
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  switch i32 %77, label %85 [
    i32 45, label %78
    i32 44, label %81
    i32 0, label %84
  ]

78:                                               ; preds = %72
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %3, align 8
  br label %86

81:                                               ; preds = %72
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %72, %81
  br label %85

85:                                               ; preds = %72, %84
  br label %19

86:                                               ; preds = %78
  %87 = load i8*, i8** %3, align 8
  store i8* %87, i8** %4, align 8
  br label %88

88:                                               ; preds = %101, %86
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigit(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  br label %88

104:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i8*, i8** %3, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 10
  %112 = load i8*, i8** %3, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @digittoint(i8 signext %113)
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  br label %105

119:                                              ; preds = %105
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = icmp sgt i32 %124, 65535
  br i1 %125, label %126, label %128

126:                                              ; preds = %123, %119
  %127 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  br label %129

129:                                              ; preds = %134, %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @SET_PORT(i32 %135)
  br label %129

137:                                              ; preds = %129
  %138 = load i8*, i8** %3, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 44
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i8*, i8** %3, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %3, align 8
  br label %145

145:                                              ; preds = %142, %137
  br label %19

146:                                              ; preds = %19
  ret void
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @digittoint(i8 signext) #1

declare dso_local i32 @SET_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
