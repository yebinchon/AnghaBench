; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i64, i32, i64, i32*, %struct.cryptoini* }
%struct.safe_softc = type { i32 }
%struct.safe_session = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@CRYPTO_NULL_HMAC = common dso_local global i64 0, align 8
@CRYPTO_NULL_CBC = common dso_local global i64 0, align 8
@MD5_HASH_LEN = common dso_local global i64 0, align 8
@SHA1_HASH_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @safe_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.safe_softc*, align 8
  %9 = alloca %struct.cryptoini*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca %struct.safe_session*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.safe_softc* @device_get_softc(i32 %13)
  store %struct.safe_softc* %14, %struct.safe_softc** %8, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %11, align 8
  store %struct.safe_session* null, %struct.safe_session** %12, align 8
  %15 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %16 = icmp eq %struct.cryptoini* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.safe_softc*, %struct.safe_softc** %8, align 8
  %19 = icmp eq %struct.safe_softc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %212

22:                                               ; preds = %17
  %23 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %23, %struct.cryptoini** %9, align 8
  br label %24

24:                                               ; preds = %84, %22
  %25 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %26 = icmp ne %struct.cryptoini* %25, null
  br i1 %26, label %27, label %88

27:                                               ; preds = %24
  %28 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %29 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %41 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CRYPTO_NULL_HMAC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39, %33, %27
  %46 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %47 = icmp ne %struct.cryptoini* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %212

50:                                               ; preds = %45
  %51 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  store %struct.cryptoini* %51, %struct.cryptoini** %11, align 8
  br label %83

52:                                               ; preds = %39
  %53 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %54 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 128
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  %58 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %59 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 130
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %64 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 129
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %69 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CRYPTO_NULL_CBC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67, %62, %57, %52
  %74 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %75 = icmp ne %struct.cryptoini* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %4, align 4
  br label %212

78:                                               ; preds = %73
  %79 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  store %struct.cryptoini* %79, %struct.cryptoini** %10, align 8
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %4, align 4
  br label %212

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %50
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %86 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %85, i32 0, i32 4
  %87 = load %struct.cryptoini*, %struct.cryptoini** %86, align 8
  store %struct.cryptoini* %87, %struct.cryptoini** %9, align 8
  br label %24

88:                                               ; preds = %24
  %89 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %90 = icmp eq %struct.cryptoini* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %93 = icmp eq %struct.cryptoini* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %4, align 4
  br label %212

96:                                               ; preds = %91, %88
  %97 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %98 = icmp ne %struct.cryptoini* %97, null
  br i1 %98, label %99, label %138

99:                                               ; preds = %96
  %100 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %101 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  switch i64 %102, label %137 [
    i64 128, label %103
    i64 130, label %111
    i64 129, label %119
  ]

103:                                              ; preds = %99
  %104 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %105 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 64
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* %4, align 4
  br label %212

110:                                              ; preds = %103
  br label %137

111:                                              ; preds = %99
  %112 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %113 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 192
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %4, align 4
  br label %212

118:                                              ; preds = %111
  br label %137

119:                                              ; preds = %99
  %120 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %121 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 128
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %126 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 192
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %131 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 256
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %4, align 4
  br label %212

136:                                              ; preds = %129, %124, %119
  br label %137

137:                                              ; preds = %99, %136, %118, %110
  br label %138

138:                                              ; preds = %137, %96
  %139 = load i32, i32* %6, align 4
  %140 = call %struct.safe_session* @crypto_get_driver_session(i32 %139)
  store %struct.safe_session* %140, %struct.safe_session** %12, align 8
  %141 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %142 = icmp ne %struct.cryptoini* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %138
  %144 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %145 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @read_random(i32 %146, i32 4)
  %148 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %149 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %152 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %154 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %143
  %158 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %159 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %160 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @safe_setup_enckey(%struct.safe_session* %158, i32* %161)
  br label %163

163:                                              ; preds = %157, %143
  br label %164

164:                                              ; preds = %163, %138
  %165 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %166 = icmp ne %struct.cryptoini* %165, null
  br i1 %166, label %167, label %211

167:                                              ; preds = %164
  %168 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %169 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %172 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %174 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %167
  %178 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %179 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i64, i64* @MD5_HASH_LEN, align 8
  %185 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %186 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  br label %191

187:                                              ; preds = %177
  %188 = load i64, i64* @SHA1_HASH_LEN, align 8
  %189 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %190 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %183
  br label %192

192:                                              ; preds = %191, %167
  %193 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %194 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.safe_session*, %struct.safe_session** %12, align 8
  %199 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %200 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %203 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %206 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sdiv i32 %207, 8
  %209 = call i32 @safe_setup_mackey(%struct.safe_session* %198, i64 %201, i32* %204, i32 %208)
  br label %210

210:                                              ; preds = %197, %192
  br label %211

211:                                              ; preds = %210, %164
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %211, %134, %116, %108, %94, %80, %76, %48, %20
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local %struct.safe_softc* @device_get_softc(i32) #1

declare dso_local %struct.safe_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @read_random(i32, i32) #1

declare dso_local i32 @safe_setup_enckey(%struct.safe_session*, i32*) #1

declare dso_local i32 @safe_setup_mackey(%struct.safe_session*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
