; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrstruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.itimerval = type { i64 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"caprights\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"itimerval\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sockaddr\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unknown structure\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"invalid record\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktrstruct(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.itimerval, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.sockaddr_storage, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ false, %15 ], [ %25, %19 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %15

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %144

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %144

45:                                               ; preds = %37
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %6, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  %53 = sub i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %144

57:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @isalpha(i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %144

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 8
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %144

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @memcpy(%struct.stat* %10, i8* %85, i64 %86)
  %88 = call i32 @ktrcaprights(%struct.stat* %10)
  br label %143

89:                                               ; preds = %76
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 8
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %144

97:                                               ; preds = %93
  %98 = bitcast %struct.itimerval* %11 to %struct.stat*
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @memcpy(%struct.stat* %98, i8* %99, i64 %100)
  %102 = bitcast %struct.itimerval* %11 to %struct.stat*
  %103 = call i32 @ktritimerval(%struct.stat* %102)
  br label %142

104:                                              ; preds = %89
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 8
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %144

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @memcpy(%struct.stat* %12, i8* %113, i64 %114)
  %116 = call i32 @ktrstat(%struct.stat* %12)
  br label %141

117:                                              ; preds = %104
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = load i64, i64* %8, align 8
  %123 = icmp ugt i64 %122, 8
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %144

125:                                              ; preds = %121
  %126 = bitcast %struct.sockaddr_storage* %13 to %struct.stat*
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @memcpy(%struct.stat* %126, i8* %127, i64 %128)
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %144

135:                                              ; preds = %125
  %136 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  %137 = call i32 @ktrsockaddr(%struct.sockaddr* %136)
  br label %140

138:                                              ; preds = %117
  %139 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  br label %141

141:                                              ; preds = %140, %112
  br label %142

142:                                              ; preds = %141, %97
  br label %143

143:                                              ; preds = %142, %84
  br label %146

144:                                              ; preds = %134, %124, %111, %96, %83, %71, %56, %44, %36
  %145 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %143
  ret void
}

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.stat*, i8*, i64) #1

declare dso_local i32 @ktrcaprights(%struct.stat*) #1

declare dso_local i32 @ktritimerval(%struct.stat*) #1

declare dso_local i32 @ktrstat(%struct.stat*) #1

declare dso_local i32 @ktrsockaddr(%struct.sockaddr*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
