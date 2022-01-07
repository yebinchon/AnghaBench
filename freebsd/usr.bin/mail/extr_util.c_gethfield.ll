; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_gethfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_gethfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gethfield(i32* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %16 = load i32, i32* @LINESIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  br label %20

20:                                               ; preds = %64, %4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %169

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @LINESIZE, align 4
  %29 = call i32 @readline(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %169

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %52, %32
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isprint(i8 zeroext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 58
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = phi i1 [ false, %39 ], [ false, %34 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %12, align 8
  br label %34

55:                                               ; preds = %49
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 58
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %55
  br label %20

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = load i8**, i8*** %9, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %155, %65
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = icmp uge i8* %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i8*, i8** %12, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 9
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br label %90

90:                                               ; preds = %88, %73
  %91 = phi i1 [ false, %73 ], [ %89, %88 ]
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %73

93:                                               ; preds = %90
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %166

99:                                               ; preds = %93
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @getc(i32* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @ungetc(i32 %101, i32* %102)
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 32
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 9
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %166

110:                                              ; preds = %106, %99
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @LINESIZE, align 4
  %113 = call i32 @readline(i32* %111, i8* %19, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %166

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %8, align 4
  store i8* %19, i8** %13, align 8
  br label %119

119:                                              ; preds = %132, %116
  %120 = load i8*, i8** %13, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 9
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ true, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %13, align 8
  br label %119

135:                                              ; preds = %129
  %136 = load i8*, i8** %13, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = ptrtoint i8* %19 to i64
  %139 = sub i64 %137, %138
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %14, align 4
  %144 = load i8*, i8** %12, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* @LINESIZE, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = getelementptr inbounds i8, i8* %151, i64 -2
  %153 = icmp uge i8* %147, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %166

155:                                              ; preds = %135
  %156 = load i8*, i8** %12, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %12, align 8
  store i8 32, i8* %156, align 1
  %158 = load i8*, i8** %13, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @bcopy(i8* %158, i8* %159, i32 %160)
  %162 = load i32, i32* %14, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %12, align 8
  br label %72

166:                                              ; preds = %154, %115, %109, %98
  %167 = load i8*, i8** %12, align 8
  store i8 0, i8* %167, align 1
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %169

169:                                              ; preds = %166, %31, %24
  %170 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readline(i32*, i8*, i32) #2

declare dso_local i64 @isprint(i8 zeroext) #2

declare dso_local i32 @ungetc(i32, i32*) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
