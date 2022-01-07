; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_read.c_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_read.c_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@EOF = common dso_local global i32 0, align 4
@rflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bytes(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %12, align 8
  store i8* %17, i8** %15, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  store i32 0, i32* %14, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %41, %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @getc(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @EOF, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %12, align 8
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  %40 = load i8*, i8** %15, align 8
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %39, %31
  br label %26

42:                                               ; preds = %26
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @ferror(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @ierr(i8* %47)
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @free(i8* %49)
  store i32 1, i32* %4, align 4
  br label %167

51:                                               ; preds = %42
  %52 = load i64, i64* @rflag, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %51
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8* %56, i8** %13, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %75, %54
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = icmp uge i8* %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i8*, i8** %13, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @WR(i8* %71, i32 %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %69, %66, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %13, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %134

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  store i8* %86, i8** %13, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %113, %83
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = icmp uge i8* %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %87
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @WR(i8* %101, i32 %102)
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** %15, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @WR(i8* %108, i32 %109)
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %13, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %87

118:                                              ; preds = %87
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @WR(i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i8*, i8** %15, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @WR(i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %80
  br label %164

135:                                              ; preds = %51
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @WR(i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %138, %135
  %151 = load i8*, i8** %12, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load i8*, i8** %15, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @WR(i8* %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %150
  br label %164

164:                                              ; preds = %163, %134
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @free(i8* %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %164, %46
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @ierr(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @WR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
