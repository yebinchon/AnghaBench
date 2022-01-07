; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_inet_aton.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_inet_aton.c_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %65, %2
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strtoul(i8* %19, i8** %9, i32 0)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @ULONG_MAX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %18
  store i32 0, i32* %3, align 4
  br label %144

32:                                               ; preds = %27, %24
  %33 = load i64, i64* %12, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %144

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %58 [
    i32 46, label %48
    i32 0, label %57
  ]

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %144

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  br label %65

57:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %65

58:                                               ; preds = %39
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @isspace(i8 zeroext %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  br label %65

64:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %144

65:                                               ; preds = %63, %57, %52
  br label %14

66:                                               ; preds = %14
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %135 [
    i32 0, label %68
    i32 1, label %69
    i32 2, label %83
    i32 3, label %105
  ]

68:                                               ; preds = %66
  br label %135

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %70, 16777215
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = icmp sgt i32 %74, 255
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %69
  store i32 0, i32* %3, align 4
  br label %144

77:                                               ; preds = %72
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = shl i32 %79, 24
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %135

83:                                               ; preds = %66
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 65535
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = icmp sgt i32 %88, 255
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86, %83
  store i32 0, i32* %3, align 4
  br label %144

95:                                               ; preds = %90
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = shl i32 %97, 24
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %98, %101
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %135

105:                                              ; preds = %66
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %106, 255
  br i1 %107, label %120, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = icmp sgt i32 %110, 255
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 255
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 255
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %112, %108, %105
  store i32 0, i32* %3, align 4
  br label %144

121:                                              ; preds = %116
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %123 = load i32, i32* %122, align 16
  %124 = shl i32 %123, 24
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 16
  %128 = or i32 %124, %127
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %130, 8
  %132 = or i32 %128, %131
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %66, %121, %95, %77, %68
  %136 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %137 = icmp ne %struct.in_addr* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @htonl(i32 %139)
  %141 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %142 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %135
  store i32 1, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %120, %94, %76, %64, %51, %38, %31
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
