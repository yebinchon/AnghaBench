; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_b_n_cut.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_b_n_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@maxval = common dso_local global i64 0, align 8
@positions = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@autostop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @b_n_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_n_cut(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %182, %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @fgetln(i32* %15, i64* %7)
  store i8* %16, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %183

18:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %172, %18
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %177

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @mbrlen(i8* %23, i64 %24, i32* %12)
  store i32 %25, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 1, i32* %11, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 @memset(i32* %12, i32 0, i32 4)
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %35
  br label %177

44:                                               ; preds = %38
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @maxval, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %122

48:                                               ; preds = %44
  %49 = load i32*, i32** @positions, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 1, %50
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %122, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %78, %55
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @maxval, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32*, i32** @positions, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 1, %70
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %68, %64, %57
  %77 = phi i1 [ false, %64 ], [ false, %57 ], [ %75, %68 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %57

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = icmp ult i64 %82, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %110, %81
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @maxval, align 8
  %99 = icmp ult i64 %97, %98
  br label %100

100:                                              ; preds = %96, %89
  %101 = phi i1 [ false, %89 ], [ %99, %96 ]
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = load i32*, i32** @positions, align 8
  %104 = load i64, i64* %6, align 8
  %105 = add i64 1, %104
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %89

113:                                              ; preds = %100
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @stdout, align 4
  %120 = call i32 @fwrite(i8* %117, i32 1, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %113
  br label %163

122:                                              ; preds = %48, %44
  store i32 1, i32* %9, align 4
  %123 = load i64, i64* %5, align 8
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %151, %122
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 %126, %128
  %130 = icmp ult i64 %125, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %124
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @maxval, align 8
  %134 = icmp uge i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @autostop, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135, %131
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @maxval, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i32*, i32** @positions, align 8
  %144 = load i64, i64* %6, align 8
  %145 = add i64 1, %144
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142, %135
  store i32 0, i32* %9, align 4
  br label %154

150:                                              ; preds = %142, %138
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %6, align 8
  br label %124

154:                                              ; preds = %149, %124
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i8*, i8** %8, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @stdout, align 4
  %161 = call i32 @fwrite(i8* %158, i32 1, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %121
  %164 = load i32, i32* %10, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %8, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %7, align 8
  %171 = sub i64 %170, %169
  store i64 %171, i64* %7, align 8
  br label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %5, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %5, align 8
  br label %19

177:                                              ; preds = %43, %19
  %178 = load i64, i64* %7, align 8
  %179 = icmp ugt i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @putchar(i8 signext 10)
  br label %182

182:                                              ; preds = %180, %177
  br label %14

183:                                              ; preds = %14
  %184 = load i32, i32* %11, align 4
  ret i32 %184
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @mbrlen(i8*, i64, i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
