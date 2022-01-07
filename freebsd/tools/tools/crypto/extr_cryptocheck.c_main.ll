; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@CRYPTO_FLAG_HARDWARE = common dso_local global i32 0, align 4
@crid = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"A:a:d:vz\00", align 1
@optarg = common dso_local global i8* null, align 8
@aad_len = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Too many sizes, ignoring extras\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Bad size %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Algorithm required\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"blkcipher\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"authenc\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"aead\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Invalid algorithm %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.alg*, align 8
  %8 = alloca [128 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %14 = load i32, i32* @CRYPTO_FLAG_HARDWARE, align 4
  store i32 %14, i32* @crid, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* @verbose, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %32 [
    i32 65, label %22
    i32 97, label %25
    i32 100, label %27
    i32 118, label %30
    i32 122, label %31
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* @aad_len, align 4
  br label %34

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %6, align 8
  br label %34

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @crlookup(i8* %28)
  store i32 %29, i32* @crid, align 4
  br label %34

30:                                               ; preds = %20
  store i32 1, i32* @verbose, align 4
  br label %34

31:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %34

32:                                               ; preds = %20
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %31, %30, %27, %25, %22
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %70, %35
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %50 = call i64 @nitems(i64* %49)
  %51 = icmp uge i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %77

54:                                               ; preds = %47
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strtol(i8* %57, i8** %13, i32 0)
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 %59
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %65, %54
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %5, align 8
  br label %44

77:                                               ; preds = %52, %44
  %78 = load i8*, i8** %6, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %134

85:                                               ; preds = %82
  %86 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  store i64 16, i64* %86, align 16
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %133

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %99, %91
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %96, 2
  %98 = icmp ult i64 %97, 245760
  br i1 %98, label %99, label %115

99:                                               ; preds = %92
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %102 = call i64 @nitems(i64* %101)
  %103 = icmp ult i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i64, i64* %10, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = mul i64 %109, 2
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 %111
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %92

115:                                              ; preds = %92
  %116 = load i64, i64* %10, align 8
  %117 = sub i64 %116, 1
  %118 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %119, 245760
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %124 = call i64 @nitems(i64* %123)
  %125 = icmp ult i64 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 %128
  store i64 245760, i64* %129, align 8
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %121, %115
  br label %133

133:                                              ; preds = %132, %85
  br label %134

134:                                              ; preds = %133, %82
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @strcasecmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %140 = load i64, i64* %10, align 8
  %141 = call i32 @run_hash_tests(i64* %139, i64 %140)
  br label %224

142:                                              ; preds = %134
  %143 = load i8*, i8** %6, align 8
  %144 = call i64 @strcasecmp(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @run_hmac_tests(i64* %147, i64 %148)
  br label %223

150:                                              ; preds = %142
  %151 = load i8*, i8** %6, align 8
  %152 = call i64 @strcasecmp(i8* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @run_blkcipher_tests(i64* %155, i64 %156)
  br label %222

158:                                              ; preds = %150
  %159 = load i8*, i8** %6, align 8
  %160 = call i64 @strcasecmp(i8* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @run_authenc_tests(i64* %163, i64 %164)
  br label %221

166:                                              ; preds = %158
  %167 = load i8*, i8** %6, align 8
  %168 = call i64 @strcasecmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @run_aead_tests(i64* %171, i64 %172)
  br label %220

174:                                              ; preds = %166
  %175 = load i8*, i8** %6, align 8
  %176 = call i64 @strcasecmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %174
  %179 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %180 = load i64, i64* %10, align 8
  %181 = call i32 @run_hash_tests(i64* %179, i64 %180)
  %182 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @run_hmac_tests(i64* %182, i64 %183)
  %185 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @run_blkcipher_tests(i64* %185, i64 %186)
  %188 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @run_authenc_tests(i64* %188, i64 %189)
  %191 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @run_aead_tests(i64* %191, i64 %192)
  br label %219

194:                                              ; preds = %174
  %195 = load i8*, i8** %6, align 8
  %196 = call i32* @strchr(i8* %195, i8 signext 43)
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i8*, i8** %6, align 8
  %200 = call %struct.alg* @build_authenc_name(i8* %199)
  store %struct.alg* %200, %struct.alg** %7, align 8
  %201 = load %struct.alg*, %struct.alg** %7, align 8
  %202 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %203 = load i64, i64* %10, align 8
  %204 = call i32 @run_test_sizes(%struct.alg* %201, i64* %202, i64 %203)
  br label %218

205:                                              ; preds = %194
  %206 = load i8*, i8** %6, align 8
  %207 = call %struct.alg* @find_alg(i8* %206)
  store %struct.alg* %207, %struct.alg** %7, align 8
  %208 = load %struct.alg*, %struct.alg** %7, align 8
  %209 = icmp eq %struct.alg* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %210, %205
  %214 = load %struct.alg*, %struct.alg** %7, align 8
  %215 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @run_test_sizes(%struct.alg* %214, i64* %215, i64 %216)
  br label %218

218:                                              ; preds = %213, %198
  br label %219

219:                                              ; preds = %218, %178
  br label %220

220:                                              ; preds = %219, %170
  br label %221

221:                                              ; preds = %220, %162
  br label %222

222:                                              ; preds = %221, %154
  br label %223

223:                                              ; preds = %222, %146
  br label %224

224:                                              ; preds = %223, %138
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @crlookup(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @nitems(i64*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @run_hash_tests(i64*, i64) #1

declare dso_local i32 @run_hmac_tests(i64*, i64) #1

declare dso_local i32 @run_blkcipher_tests(i64*, i64) #1

declare dso_local i32 @run_authenc_tests(i64*, i64) #1

declare dso_local i32 @run_aead_tests(i64*, i64) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.alg* @build_authenc_name(i8*) #1

declare dso_local i32 @run_test_sizes(%struct.alg*, i64*, i64) #1

declare dso_local %struct.alg* @find_alg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
