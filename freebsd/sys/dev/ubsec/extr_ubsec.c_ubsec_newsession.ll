; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i64, i64, i32, i32*, %struct.cryptoini* }
%struct.ubsec_softc = type { i32 }
%struct.ubsec_session = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@CRYPTO_DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_3DES_CBC = common dso_local global i64 0, align 8
@MD5_HASH_LEN = common dso_local global i64 0, align 8
@SHA1_HASH_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @ubsec_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.ubsec_softc*, align 8
  %9 = alloca %struct.cryptoini*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca %struct.ubsec_session*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.ubsec_softc* @device_get_softc(i32 %13)
  store %struct.ubsec_softc* %14, %struct.ubsec_softc** %8, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %11, align 8
  store %struct.ubsec_session* null, %struct.ubsec_session** %12, align 8
  %15 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %16 = icmp eq %struct.cryptoini* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %19 = icmp eq %struct.ubsec_softc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %153

22:                                               ; preds = %17
  %23 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %23, %struct.cryptoini** %9, align 8
  br label %24

24:                                               ; preds = %69, %22
  %25 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %26 = icmp ne %struct.cryptoini* %25, null
  br i1 %26, label %27, label %73

27:                                               ; preds = %24
  %28 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %29 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %35 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %27
  %40 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %41 = icmp ne %struct.cryptoini* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %153

44:                                               ; preds = %39
  %45 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  store %struct.cryptoini* %45, %struct.cryptoini** %11, align 8
  br label %68

46:                                               ; preds = %33
  %47 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %48 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %54 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %46
  %59 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %60 = icmp ne %struct.cryptoini* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %4, align 4
  br label %153

63:                                               ; preds = %58
  %64 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  store %struct.cryptoini* %64, %struct.cryptoini** %10, align 8
  br label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %4, align 4
  br label %153

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.cryptoini*, %struct.cryptoini** %9, align 8
  %71 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %70, i32 0, i32 4
  %72 = load %struct.cryptoini*, %struct.cryptoini** %71, align 8
  store %struct.cryptoini* %72, %struct.cryptoini** %9, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %75 = icmp eq %struct.cryptoini* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %78 = icmp eq %struct.cryptoini* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %4, align 4
  br label %153

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %6, align 4
  %83 = call %struct.ubsec_session* @crypto_get_driver_session(i32 %82)
  store %struct.ubsec_session* %83, %struct.ubsec_session** %12, align 8
  %84 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %85 = icmp ne %struct.cryptoini* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %88 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @read_random(i32 %89, i32 4)
  %91 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %92 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %97 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %98 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %101 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @ubsec_setup_enckey(%struct.ubsec_session* %96, i64 %99, i32* %102)
  br label %104

104:                                              ; preds = %95, %86
  br label %105

105:                                              ; preds = %104, %81
  %106 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %107 = icmp ne %struct.cryptoini* %106, null
  br i1 %107, label %108, label %152

108:                                              ; preds = %105
  %109 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %110 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %113 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %115 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %108
  %119 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %120 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, i64* @MD5_HASH_LEN, align 8
  %126 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %127 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %132

128:                                              ; preds = %118
  %129 = load i64, i64* @SHA1_HASH_LEN, align 8
  %130 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %131 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %108
  %134 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %135 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.ubsec_session*, %struct.ubsec_session** %12, align 8
  %140 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %141 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %144 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %147 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sdiv i32 %148, 8
  %150 = call i32 @ubsec_setup_mackey(%struct.ubsec_session* %139, i64 %142, i32* %145, i32 %149)
  br label %151

151:                                              ; preds = %138, %133
  br label %152

152:                                              ; preds = %151, %105
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %79, %65, %61, %42, %20
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.ubsec_softc* @device_get_softc(i32) #1

declare dso_local %struct.ubsec_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @read_random(i32, i32) #1

declare dso_local i32 @ubsec_setup_enckey(%struct.ubsec_session*, i64, i32*) #1

declare dso_local i32 @ubsec_setup_mackey(%struct.ubsec_session*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
