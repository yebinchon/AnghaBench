; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/fifolog_create/extr_fifolog_create.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/fifolog_create/extr_fifolog_create.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"l:r:s:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't parse -l argument\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't parse -r argument\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't parse -s argument\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Inconsistent -l, -r and -s values\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Inconsistent -r and -s values (gives remainder)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"-s arg not divisible by -l arg\00", align 1
@DEF_RECSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"-s arg not divisible by %jd\00", align 1
@DEF_RECCNT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %39 [
    i32 108, label %18
    i32 114, label %25
    i32 115, label %32
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @optarg, align 4
  %20 = call i32 @expand_number(i32 %19, i32* %8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  br label %41

25:                                               ; preds = %16
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @expand_number(i32 %26, i32* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  br label %41

32:                                               ; preds = %16
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @expand_number(i32 %33, i32* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  br label %41

39:                                               ; preds = %16
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %38, %31, %24
  br label %11

42:                                               ; preds = %11
  %43 = load i64, i64* @optind, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i64, i64* @optind, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  store i8** %50, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %42
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %66, %67
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  br label %190

73:                                               ; preds = %61, %58, %55
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = srem i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %8, align 4
  br label %189

93:                                               ; preds = %79, %76, %73
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = srem i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  br label %188

110:                                              ; preds = %99, %96, %93
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* @DEF_RECSIZE, align 4
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = srem i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %119
  br label %187

129:                                              ; preds = %116, %113, %110
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %7, align 4
  br label %186

142:                                              ; preds = %135, %132, %129
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* @DEF_RECSIZE, align 4
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %153, %154
  store i32 %155, i32* %7, align 4
  br label %185

156:                                              ; preds = %148, %145, %142
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* @DEF_RECCNT, align 4
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 %166, %167
  store i32 %168, i32* %7, align 4
  br label %184

169:                                              ; preds = %162, %159, %156
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, i32* @DEF_RECSIZE, align 4
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @DEF_RECCNT, align 4
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %178, %175, %172, %169
  br label %184

184:                                              ; preds = %183, %165
  br label %185

185:                                              ; preds = %184, %151
  br label %186

186:                                              ; preds = %185, %138
  br label %187

187:                                              ; preds = %186, %128
  br label %188

188:                                              ; preds = %187, %109
  br label %189

189:                                              ; preds = %188, %89
  br label %190

190:                                              ; preds = %189, %72
  %191 = load i8**, i8*** %5, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i8* @fifolog_create(i8* %193, i32 %194, i32 %195)
  store i8* %196, i8** %10, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %203

200:                                              ; preds = %190
  %201 = load i8*, i8** %10, align 8
  %202 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %200, %199
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @expand_number(i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @fifolog_create(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
