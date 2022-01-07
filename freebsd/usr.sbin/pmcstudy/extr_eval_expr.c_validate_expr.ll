; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_validate_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_validate_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32, %struct.expression* }

@.str = private unnamed_addr constant [20 x i8] c"Op but no val1 set\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NULL after open paren\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"'( OP' -- not allowed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"'Val (' -- not allowed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"'Val OP Val (' -- not allowed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Found close paren and not complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"val1 set, val2 about to be set op empty\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"unknown type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expression*, i32, i32, i32, i32*)* @validate_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_expr(%struct.expression* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.expression*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %13, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %14, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.expression*, %struct.expression** %7, align 8
  %31 = icmp eq %struct.expression* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %198

45:                                               ; preds = %41, %38, %35, %32
  store i32 1, i32* %6, align 4
  br label %198

46:                                               ; preds = %27
  %47 = load %struct.expression*, %struct.expression** %7, align 8
  %48 = getelementptr inbounds %struct.expression, %struct.expression* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %183 [
    i32 132, label %50
    i32 134, label %50
    i32 133, label %50
    i32 135, label %50
    i32 130, label %71
    i32 131, label %152
    i32 129, label %168
    i32 128, label %168
  ]

50:                                               ; preds = %46, %46, %46, %46
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %70

60:                                               ; preds = %56, %53, %50
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %13, align 4
  br label %69

67:                                               ; preds = %63, %60
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %198

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %59
  br label %189

71:                                               ; preds = %46
  %72 = load %struct.expression*, %struct.expression** %7, align 8
  %73 = getelementptr inbounds %struct.expression, %struct.expression* %72, i32 0, i32 1
  %74 = load %struct.expression*, %struct.expression** %73, align 8
  %75 = icmp eq %struct.expression* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @exit(i32 -1) #3
  unreachable

79:                                               ; preds = %71
  %80 = load %struct.expression*, %struct.expression** %7, align 8
  %81 = getelementptr inbounds %struct.expression, %struct.expression* %80, i32 0, i32 1
  %82 = load %struct.expression*, %struct.expression** %81, align 8
  %83 = getelementptr inbounds %struct.expression, %struct.expression* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 132
  br i1 %85, label %107, label %86

86:                                               ; preds = %79
  %87 = load %struct.expression*, %struct.expression** %7, align 8
  %88 = getelementptr inbounds %struct.expression, %struct.expression* %87, i32 0, i32 1
  %89 = load %struct.expression*, %struct.expression** %88, align 8
  %90 = getelementptr inbounds %struct.expression, %struct.expression* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 134
  br i1 %92, label %107, label %93

93:                                               ; preds = %86
  %94 = load %struct.expression*, %struct.expression** %7, align 8
  %95 = getelementptr inbounds %struct.expression, %struct.expression* %94, i32 0, i32 1
  %96 = load %struct.expression*, %struct.expression** %95, align 8
  %97 = getelementptr inbounds %struct.expression, %struct.expression* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 135
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.expression*, %struct.expression** %7, align 8
  %102 = getelementptr inbounds %struct.expression, %struct.expression* %101, i32 0, i32 1
  %103 = load %struct.expression*, %struct.expression** %102, align 8
  %104 = getelementptr inbounds %struct.expression, %struct.expression* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 133
  br i1 %106, label %107, label %109

107:                                              ; preds = %100, %93, %86, %79
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %198

109:                                              ; preds = %100
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %198

117:                                              ; preds = %112, %109
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %198

128:                                              ; preds = %123, %120, %117
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %11, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  %136 = load %struct.expression*, %struct.expression** %7, align 8
  %137 = getelementptr inbounds %struct.expression, %struct.expression* %136, i32 0, i32 1
  %138 = load %struct.expression*, %struct.expression** %137, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @validate_expr(%struct.expression* %138, i32 0, i32 0, i32 0, i32* %139)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 1, i32* %14, align 4
  br label %144

143:                                              ; preds = %135
  store i32 -1, i32* %6, align 4
  br label %198

144:                                              ; preds = %142
  br label %151

145:                                              ; preds = %128
  %146 = load %struct.expression*, %struct.expression** %7, align 8
  %147 = getelementptr inbounds %struct.expression, %struct.expression* %146, i32 0, i32 1
  %148 = load %struct.expression*, %struct.expression** %147, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @validate_expr(%struct.expression* %148, i32 0, i32 0, i32 0, i32* %149)
  store i32 %150, i32* %6, align 4
  br label %198

151:                                              ; preds = %144
  br label %189

152:                                              ; preds = %46
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32*, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  br label %198

166:                                              ; preds = %162, %159, %152
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %198

168:                                              ; preds = %46, %46
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 1, i32* %12, align 4
  br label %182

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 1, i32* %14, align 4
  br label %181

179:                                              ; preds = %175, %172
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %198

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %181, %171
  br label %189

183:                                              ; preds = %46
  %184 = load %struct.expression*, %struct.expression** %7, align 8
  %185 = getelementptr inbounds %struct.expression, %struct.expression* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  %188 = call i32 @exit(i32 -5) #3
  unreachable

189:                                              ; preds = %182, %151, %70
  %190 = load %struct.expression*, %struct.expression** %7, align 8
  %191 = getelementptr inbounds %struct.expression, %struct.expression* %190, i32 0, i32 1
  %192 = load %struct.expression*, %struct.expression** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @validate_expr(%struct.expression* %192, i32 %193, i32 %194, i32 %195, i32* %196)
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %189, %179, %166, %165, %145, %143, %126, %115, %107, %67, %45, %44
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
