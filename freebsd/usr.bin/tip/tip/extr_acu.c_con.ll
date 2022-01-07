; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_acu.c_con.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_acu.c_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 (...)*, i64 (i8*, i32)* }

@PN = common dso_local global i8* null, align 8
@DU = common dso_local global i32 0, align 4
@CM = common dso_local global i64 0, align 8
@NOSTR = common dso_local global i64 0, align 8
@FD = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"call completed\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@acuabort = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@jmpbuf = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"\0Acall aborted\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"call aborted\00", align 1
@acu = common dso_local global %struct.TYPE_4__* null, align 8
@NOACU = common dso_local global %struct.TYPE_4__* null, align 8
@VERBOSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@conflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@AT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"unknown ACU type\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@CU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"call failed\00", align 1
@PH = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NOFILE = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"can't open phone number file\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"missing phone number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @con() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i8*, i8** @PN, align 8
  store i8* %7, i8** %2, align 8
  store volatile i32 0, i32* %6, align 4
  %8 = load i32, i32* @DU, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* @CM, align 8
  %12 = load i64, i64* @NOSTR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @FD, align 4
  %16 = load i64, i64* @CM, align 8
  %17 = load i64, i64* @CM, align 8
  %18 = call i32 @size(i64 %17)
  %19 = call i32 @parwrite(i32 %15, i64 %16, i32 %18)
  br label %20

20:                                               ; preds = %14, %10
  %21 = load i32, i32* @HOST, align 4
  %22 = call i32 @value(i32 %21)
  %23 = load i8*, i8** @DV, align 8
  %24 = call i32 @logent(i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @NOSTR, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %1, align 8
  br label %235

27:                                               ; preds = %0
  %28 = load i32, i32* @SIGINT, align 4
  %29 = load i32, i32* @acuabort, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  %31 = load i32, i32* @SIGQUIT, align 4
  %32 = load i32, i32* @acuabort, align 4
  %33 = call i32 @signal(i32 %31, i32 %32)
  %34 = load i32, i32* @jmpbuf, align 4
  %35 = call i64 @setjmp(i32 %34) #3
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %27
  %38 = load i32, i32* @SIGINT, align 4
  %39 = load i32, i32* @SIG_IGN, align 4
  %40 = call i32 @signal(i32 %38, i32 %39)
  %41 = load i32, i32* @SIGQUIT, align 4
  %42 = load i32, i32* @SIG_IGN, align 4
  %43 = call i32 @signal(i32 %41, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @HOST, align 4
  %46 = call i32 @value(i32 %45)
  %47 = call i32 @logent(i32 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NOACU, align 8
  %50 = icmp ne %struct.TYPE_4__* %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %37
  %52 = load i32, i32* @VERBOSE, align 4
  %53 = call i32 @value(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @setboolean(i32 %53, i32 %54)
  %56 = load i64, i64* @conflag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i64, i64* @NOSTR, align 8
  %60 = call i32 @disconnect(i64 %59)
  br label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = call i32 (...) %64()
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %37
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %235

68:                                               ; preds = %27
  %69 = load i32, i32* @AT, align 4
  %70 = call %struct.TYPE_4__* @acutype(i32 %69)
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** @acu, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NOACU, align 8
  %72 = icmp eq %struct.TYPE_4__* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %235

74:                                               ; preds = %68
  %75 = load i8*, i8** %2, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 64
  br i1 %78, label %79, label %124

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %113, %102, %79
  %81 = load i8*, i8** %2, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %80
  %85 = load i8*, i8** %2, align 8
  store i8* %85, i8** %3, align 8
  %86 = load i8*, i8** %2, align 8
  %87 = call i32 @strcspn(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i8*, i8** %2, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %2, align 8
  %91 = load i8*, i8** %2, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i8*, i8** %2, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %2, align 8
  store i8 0, i8* %96, align 1
  br label %98

98:                                               ; preds = %95, %84
  %99 = load i8*, i8** %3, align 8
  %100 = call i64 @strlen(i8* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %80

103:                                              ; preds = %98
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64 (i8*, i32)*, i64 (i8*, i32)** %105, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* @CU, align 4
  %109 = call i64 %106(i8* %107, i32 %108)
  store i64 %109, i64* @conflag, align 8
  %110 = load i64, i64* @conflag, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %123

113:                                              ; preds = %103
  %114 = load i32, i32* @HOST, align 4
  %115 = call i32 @value(i32 %114)
  %116 = load i8*, i8** %3, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @logent(i32 %115, i8* %116, i8* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %121 = load volatile i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store volatile i32 %122, i32* %6, align 4
  br label %80

123:                                              ; preds = %112, %80
  br label %197

124:                                              ; preds = %74
  %125 = load i8*, i8** @PH, align 8
  %126 = call i32* @fopen(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %126, i32** %5, align 8
  %127 = load i32*, i32** @NOFILE, align 8
  %128 = icmp eq i32* %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** @PH, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %130)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  br label %235

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %184, %173, %157, %132
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %135 = load i32*, i32** %5, align 8
  %136 = call i64 @fgets(i8* %134, i32 256, i32* %135)
  %137 = load i64, i64* @NOSTR, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %194

139:                                              ; preds = %133
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %141 = call i32 @strcspn(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %142
  store i8* %143, i8** %2, align 8
  %144 = load i8*, i8** %2, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i8*, i8** %2, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %2, align 8
  store i8 0, i8* %149, align 1
  br label %151

151:                                              ; preds = %148, %139
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %153 = load i32, i32* @HOST, align 4
  %154 = call i32 @value(i32 %153)
  %155 = call i64 @strcmp(i8* %152, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %133

158:                                              ; preds = %151
  %159 = load i8*, i8** %2, align 8
  %160 = call i32 @strspn(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %161 = load i8*, i8** %2, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %2, align 8
  %164 = load i8*, i8** %2, align 8
  store i8* %164, i8** %3, align 8
  %165 = load i8*, i8** %2, align 8
  %166 = load i8*, i8** %2, align 8
  %167 = call i32 @strcspn(i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %3, align 8
  %171 = call i64 @strlen(i8* %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %158
  br label %133

174:                                              ; preds = %158
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i64 (i8*, i32)*, i64 (i8*, i32)** %176, align 8
  %178 = load i8*, i8** %3, align 8
  %179 = load i32, i32* @CU, align 4
  %180 = call i64 %177(i8* %178, i32 %179)
  store i64 %180, i64* @conflag, align 8
  %181 = load i64, i64* @conflag, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %194

184:                                              ; preds = %174
  %185 = load i32, i32* @HOST, align 4
  %186 = call i32 @value(i32 %185)
  %187 = load i8*, i8** %3, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @logent(i32 %186, i8* %187, i8* %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %192 = load volatile i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store volatile i32 %193, i32* %6, align 4
  br label %133

194:                                              ; preds = %183, %133
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @fclose(i32* %195)
  br label %197

197:                                              ; preds = %194, %123
  %198 = load i64, i64* @conflag, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %197
  %201 = load i64, i64* @CM, align 8
  %202 = load i64, i64* @NOSTR, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load i32, i32* @FD, align 4
  %206 = load i64, i64* @CM, align 8
  %207 = load i64, i64* @CM, align 8
  %208 = call i32 @size(i64 %207)
  %209 = call i32 @parwrite(i32 %205, i64 %206, i32 %208)
  br label %210

210:                                              ; preds = %204, %200
  %211 = load i32, i32* @HOST, align 4
  %212 = call i32 @value(i32 %211)
  %213 = load i8*, i8** %3, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @logent(i32 %212, i8* %213, i8* %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i64, i64* @NOSTR, align 8
  %219 = inttoptr i64 %218 to i8*
  store i8* %219, i8** %1, align 8
  br label %235

220:                                              ; preds = %197
  %221 = load volatile i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* @HOST, align 4
  %225 = call i32 @value(i32 %224)
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @logent(i32 %225, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  br label %235

230:                                              ; preds = %220
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acu, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32 (...)*, i32 (...)** %232, align 8
  %234 = call i32 (...) %233()
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %235

235:                                              ; preds = %230, %223, %210, %129, %73, %67, %20
  %236 = load i8*, i8** %1, align 8
  ret i8* %236
}

declare dso_local i32 @parwrite(i32, i64, i32) #1

declare dso_local i32 @size(i64) #1

declare dso_local i32 @logent(i32, i8*, i8*, i8*) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @setboolean(i32, i32) #1

declare dso_local i32 @disconnect(i64) #1

declare dso_local %struct.TYPE_4__* @acutype(i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
