; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_inln.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_inln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ingap = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@inchar = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inln(i32* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* @ingap, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @EOF, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i64, i64* @inchar, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %17, align 8
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %87, %82, %26
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @getc(i32* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @EOF, align 4
  %35 = icmp ne i32 %33, %34
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %92

38:                                               ; preds = %36
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %38
  %43 = load i8*, i8** %17, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = srem i32 %54, %55
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @ungetc(i32 %62, i32* %63)
  %65 = load i32, i32* @EOF, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %165

68:                                               ; preds = %61, %42
  br label %69

69:                                               ; preds = %79, %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %14, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  %76 = icmp sge i32 %75, 0
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %17, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %17, align 8
  store i8 32, i8* %80, align 1
  br label %69

82:                                               ; preds = %77
  br label %27

83:                                               ; preds = %38
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %17, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %17, align 8
  store i8 %89, i8* %90, align 1
  br label %27

92:                                               ; preds = %86, %36
  br label %115

93:                                               ; preds = %6
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %10, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @getc(i32* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* @EOF, align 4
  %102 = icmp ne i32 %100, %101
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i1 [ false, %94 ], [ %102, %98 ]
  br i1 %104, label %105, label %114

105:                                              ; preds = %103
  %106 = load i32, i32* %16, align 4
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %16, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %17, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %17, align 8
  store i8 %111, i8* %112, align 1
  br label %94

114:                                              ; preds = %108, %103
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i8*, i8** %17, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @EOF, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load i32*, i32** %13, align 8
  store i32 0, i32* %126, align 4
  %127 = load i32*, i32** %11, align 8
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  store i32 -1, i32* %7, align 4
  br label %165

131:                                              ; preds = %125
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %7, align 4
  br label %165

133:                                              ; preds = %115
  %134 = load i32, i32* %16, align 4
  %135 = icmp eq i32 %134, 10
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32*, i32** %13, align 8
  store i32 0, i32* %137, align 4
  %138 = load i32*, i32** %11, align 8
  store i32 0, i32* %138, align 4
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %7, align 4
  br label %165

140:                                              ; preds = %133
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %153, %143
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @getc(i32* %145)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* @EOF, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32, i32* %16, align 4
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %154

153:                                              ; preds = %149
  br label %144

154:                                              ; preds = %152, %144
  %155 = load i32*, i32** %11, align 8
  store i32 0, i32* %155, align 4
  %156 = load i32*, i32** %13, align 8
  store i32 0, i32* %156, align 4
  br label %163

157:                                              ; preds = %140
  %158 = load i32, i32* %14, align 4
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = load i32*, i32** %13, align 8
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %163, %136, %131, %130, %67
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
