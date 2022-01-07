; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i8*, %struct.TYPE_4__* }

@spec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @size(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  br label %11

11:                                               ; preds = %127, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %131

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %116, %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %119

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 37
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %116

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i64, i64* @spec, align 8
  %52 = add nsw i64 %51, 1
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32* @strchr(i64 %52, i8 zeroext %54)
  %56 = icmp ne i32* %55, null
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi i1 [ false, %44 ], [ %56, %50 ]
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %44

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @badnoconv()
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isdigit(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @atoi(i8* %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %87, %78
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isdigit(i8 zeroext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %81

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %72, %67
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  switch i32 %92, label %115 [
    i32 99, label %93
    i32 100, label %96
    i32 105, label %96
    i32 111, label %96
    i32 117, label %96
    i32 120, label %96
    i32 88, label %96
    i32 101, label %99
    i32 69, label %99
    i32 102, label %99
    i32 103, label %99
    i32 71, label %99
    i32 115, label %102
    i32 95, label %106
  ]

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %115

96:                                               ; preds = %89, %89, %89, %89, %89, %89
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %4, align 4
  br label %115

99:                                               ; preds = %89, %89, %89, %89, %89
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 8
  store i32 %101, i32* %4, align 4
  br label %115

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %115

106:                                              ; preds = %89
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  switch i32 %110, label %114 [
    i32 99, label %111
    i32 112, label %111
    i32 117, label %111
  ]

111:                                              ; preds = %106, %106, %106
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %106, %111
  br label %115

115:                                              ; preds = %114, %89, %102, %99, %96, %93
  br label %116

116:                                              ; preds = %115, %42
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  br label %33

119:                                              ; preds = %33
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %119, %19
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  store %struct.TYPE_4__* %130, %struct.TYPE_4__** %3, align 8
  br label %11

131:                                              ; preds = %11
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32* @strchr(i64, i8 zeroext) #1

declare dso_local i32 @badnoconv(...) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
