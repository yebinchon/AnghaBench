; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_timings.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_timings.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i32 }

@RUSAGE_SELF = common dso_local global i32 0, align 4
@MaxIterations = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"getenv(name)\00", align 1
@value1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"setenv(name, value1, 1)\00", align 1
@name2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"getenv(name2)\00", align 1
@value2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"setenv(name, value2, 1)\00", align 1
@nameValuePair = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"putenv(nameValuePair)\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rusage, align 4
  %8 = alloca %struct.rusage, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @RUSAGE_SELF, align 4
  %10 = call i32 @getrusage(i32 %9, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MaxIterations, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, i32* @name, align 4
  %17 = call i32* @getenv(i32 %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* @RUSAGE_SELF, align 4
  %28 = call i32 @getrusage(i32 %27, %struct.rusage* %7)
  %29 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %31 = call i32 @report_time(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %29, i32* %30)
  %32 = load i32, i32* @RUSAGE_SELF, align 4
  %33 = call i32 @getrusage(i32 %32, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %47, %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MaxIterations, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* @name, align 4
  %40 = load i32, i32* @value1, align 4
  %41 = call i32 @setenv(i32 %39, i32 %40, i32 1)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @err(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load i32, i32* @RUSAGE_SELF, align 4
  %52 = call i32 @getrusage(i32 %51, %struct.rusage* %7)
  %53 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %54 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %55 = call i32 @report_time(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %53, i32* %54)
  %56 = load i32, i32* @RUSAGE_SELF, align 4
  %57 = call i32 @getrusage(i32 %56, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %70, %50
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MaxIterations, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, i32* @name, align 4
  %64 = call i32* @getenv(i32 %63)
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  %68 = call i32 @err(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load i32, i32* @RUSAGE_SELF, align 4
  %75 = call i32 @getrusage(i32 %74, %struct.rusage* %7)
  %76 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %77 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %78 = call i32 @report_time(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %76, i32* %77)
  %79 = load i32, i32* @RUSAGE_SELF, align 4
  %80 = call i32 @getrusage(i32 %79, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %93, %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @MaxIterations, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, i32* @name2, align 4
  %87 = call i32* @getenv(i32 %86)
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  %91 = call i32 @err(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load i32, i32* @RUSAGE_SELF, align 4
  %98 = call i32 @getrusage(i32 %97, %struct.rusage* %7)
  %99 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %100 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %101 = call i32 @report_time(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %99, i32* %100)
  %102 = load i32, i32* @RUSAGE_SELF, align 4
  %103 = call i32 @getrusage(i32 %102, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %117, %96
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MaxIterations, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i32, i32* @name, align 4
  %110 = load i32, i32* @value2, align 4
  %111 = call i32 @setenv(i32 %109, i32 %110, i32 1)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EXIT_FAILURE, align 4
  %115 = call i32 @err(i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %104

120:                                              ; preds = %104
  %121 = load i32, i32* @RUSAGE_SELF, align 4
  %122 = call i32 @getrusage(i32 %121, %struct.rusage* %7)
  %123 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %124 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %125 = call i32 @report_time(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %123, i32* %124)
  %126 = load i32, i32* @RUSAGE_SELF, align 4
  %127 = call i32 @getrusage(i32 %126, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %140, %120
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @MaxIterations, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load i32, i32* @name2, align 4
  %134 = call i32* @getenv(i32 %133)
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = call i32 @err(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %128

143:                                              ; preds = %128
  %144 = load i32, i32* @RUSAGE_SELF, align 4
  %145 = call i32 @getrusage(i32 %144, %struct.rusage* %7)
  %146 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %147 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %148 = call i32 @report_time(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %146, i32* %147)
  %149 = load i32, i32* @RUSAGE_SELF, align 4
  %150 = call i32 @getrusage(i32 %149, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %163, %143
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @MaxIterations, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load i32, i32* @name2, align 4
  %157 = call i32* @getenv(i32 %156)
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* @EXIT_FAILURE, align 4
  %161 = call i32 @err(i32 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %155
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %151

166:                                              ; preds = %151
  %167 = load i32, i32* @RUSAGE_SELF, align 4
  %168 = call i32 @getrusage(i32 %167, %struct.rusage* %7)
  %169 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %170 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %171 = call i32 @report_time(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %169, i32* %170)
  %172 = load i32, i32* @RUSAGE_SELF, align 4
  %173 = call i32 @getrusage(i32 %172, %struct.rusage* %8)
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %186, %166
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @MaxIterations, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i32, i32* @nameValuePair, align 4
  %180 = call i32 @putenv(i32 %179)
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* @EXIT_FAILURE, align 4
  %184 = call i32 @err(i32 %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %178
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %174

189:                                              ; preds = %174
  %190 = load i32, i32* @RUSAGE_SELF, align 4
  %191 = call i32 @getrusage(i32 %190, %struct.rusage* %7)
  %192 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %193 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %194 = call i32 @report_time(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %192, i32* %193)
  %195 = load i32, i32* @EXIT_SUCCESS, align 4
  %196 = call i32 @exit(i32 %195) #3
  unreachable
}

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32* @getenv(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @report_time(i8*, i32*, i32*) #1

declare dso_local i32 @setenv(i32, i32, i32) #1

declare dso_local i32 @putenv(i32) #1

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
