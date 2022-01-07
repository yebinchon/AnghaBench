; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }

@address = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@eaddress = common dso_local global i32 0, align 4
@blocksize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %200 [
    i32 138, label %17
    i32 137, label %25
    i32 136, label %30
    i32 135, label %48
    i32 134, label %56
    i32 133, label %93
    i32 132, label %131
    i32 131, label %147
    i32 130, label %153
    i32 129, label %158
    i32 128, label %162
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @address, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (i8*, ...) @printf(i8* %20, i8* %23)
  br label %200

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %200

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @eaddress, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @eaddress, align 4
  %37 = load i32, i32* @address, align 4
  %38 = sub nsw i32 %36, %37
  br label %45

39:                                               ; preds = %30
  %40 = load i32, i32* @blocksize, align 4
  %41 = load i32, i32* @address, align 4
  %42 = load i32, i32* @blocksize, align 4
  %43 = srem i32 %41, %42
  %44 = sub nsw i32 %40, %43
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i32 [ %38, %35 ], [ %44, %39 ]
  %47 = call i32 @conv_c(%struct.TYPE_5__* %31, i8* %32, i32 %46)
  br label %200

48:                                               ; preds = %2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 (i8*, ...) @printf(i8* %51, i32 %54)
  br label %200

56:                                               ; preds = %2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %77 [
    i32 4, label %60
    i32 8, label %69
  ]

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i8*, ...) @bcopy(i8* %61, float* %7, i64 4)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load float, float* %7, align 4
  %67 = fpext float %66 to double
  %68 = call i32 (i8*, ...) @printf(i8* %65, double %67)
  br label %92

69:                                               ; preds = %56
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 (i8*, ...) @bcopy(i8* %70, double* %6, i64 8)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load double, double* %6, align 8
  %76 = call i32 (i8*, ...) @printf(i8* %74, double %75)
  br label %92

77:                                               ; preds = %56
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %81, 16
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 (i8*, ...) @bcopy(i8* %84, x86_fp80* %5, i64 16)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load x86_fp80, x86_fp80* %5, align 16
  %90 = call i32 (i8*, ...) @printf(i8* %88, x86_fp80 %89)
  br label %91

91:                                               ; preds = %83, %77
  br label %92

92:                                               ; preds = %91, %69, %60
  br label %200

93:                                               ; preds = %2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %130 [
    i32 1, label %97
    i32 2, label %106
    i32 4, label %114
    i32 8, label %122
  ]

97:                                               ; preds = %93
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 (i8*, ...) @printf(i8* %100, i8* %104)
  br label %130

106:                                              ; preds = %93
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 (i8*, ...) @bcopy(i8* %107, i8** %8, i64 8)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 (i8*, ...) @printf(i8* %111, i8* %112)
  br label %130

114:                                              ; preds = %93
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (i8*, ...) @bcopy(i8* %115, i8** %10, i64 8)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 (i8*, ...) @printf(i8* %119, i8* %120)
  br label %130

122:                                              ; preds = %93
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 (i8*, ...) @bcopy(i8* %123, i8** %9, i64 8)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 (i8*, ...) @printf(i8* %127, i8* %128)
  br label %130

130:                                              ; preds = %93, %122, %114, %106, %97
  br label %200

131:                                              ; preds = %2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @isprint(i8 signext %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load i8*, i8** %4, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  br label %144

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i32 [ %142, %139 ], [ 46, %143 ]
  %146 = call i32 (i8*, ...) @printf(i8* %134, i32 %145)
  br label %200

147:                                              ; preds = %2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 (i8*, ...) @printf(i8* %150, i8* %151)
  br label %200

153:                                              ; preds = %2
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %156)
  br label %200

158:                                              ; preds = %2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @conv_u(%struct.TYPE_5__* %159, i8* %160)
  br label %200

162:                                              ; preds = %2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %199 [
    i32 1, label %166
    i32 2, label %175
    i32 4, label %183
    i32 8, label %191
  ]

166:                                              ; preds = %162
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %4, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 (i8*, ...) @printf(i8* %169, i8* %173)
  br label %199

175:                                              ; preds = %162
  %176 = load i8*, i8** %4, align 8
  %177 = call i32 (i8*, ...) @bcopy(i8* %176, i8** %11, i64 8)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = call i32 (i8*, ...) @printf(i8* %180, i8* %181)
  br label %199

183:                                              ; preds = %162
  %184 = load i8*, i8** %4, align 8
  %185 = call i32 (i8*, ...) @bcopy(i8* %184, i8** %12, i64 8)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = call i32 (i8*, ...) @printf(i8* %188, i8* %189)
  br label %199

191:                                              ; preds = %162
  %192 = load i8*, i8** %4, align 8
  %193 = call i32 (i8*, ...) @bcopy(i8* %192, i8** %13, i64 8)
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = call i32 (i8*, ...) @printf(i8* %196, i8* %197)
  br label %199

199:                                              ; preds = %162, %191, %183, %175, %166
  br label %200

200:                                              ; preds = %2, %199, %158, %153, %147, %144, %130, %92, %48, %45, %25, %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @conv_c(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @bcopy(i8*, ...) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @conv_u(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
