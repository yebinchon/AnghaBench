; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_eu_methods = type { i32 (%struct.sec_softc*, %struct.sec_session*, %struct.cryptoini.0*, %struct.cryptoini.0*)*, i32* }
%struct.sec_softc = type { i32 }
%struct.sec_session = type { i32, i32, %struct.sec_eu_methods*, i32, i32 }
%struct.cryptoini.0 = type opaque
%struct.cryptoini = type { i32, i64 }

@sec_eus = common dso_local global %struct.sec_eu_methods* null, align 8
@SEC_MAX_KEY_LEN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @sec_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.sec_softc*, align 8
  %9 = alloca %struct.sec_eu_methods*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca %struct.sec_session*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.sec_softc* @device_get_softc(i32 %14)
  store %struct.sec_softc* %15, %struct.sec_softc** %8, align 8
  %16 = load %struct.sec_eu_methods*, %struct.sec_eu_methods** @sec_eus, align 8
  store %struct.sec_eu_methods* %16, %struct.sec_eu_methods** %9, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %11, align 8
  store i32 -1, i32* %13, align 4
  %17 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %18 = call i32 @sec_split_cri(%struct.cryptoini* %17, %struct.cryptoini** %10, %struct.cryptoini** %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %4, align 4
  br label %156

23:                                               ; preds = %3
  %24 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %25 = icmp ne %struct.cryptoini* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %28 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %33 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 8
  %36 = load i32, i32* @SEC_MAX_KEY_LEN, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @E2BIG, align 4
  store i32 %39, i32* %4, align 4
  br label %156

40:                                               ; preds = %31, %26, %23
  %41 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %42 = icmp ne %struct.cryptoini* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %45 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %50 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 8
  %53 = load i32, i32* @SEC_MAX_KEY_LEN, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @E2BIG, align 4
  store i32 %56, i32* %4, align 4
  br label %156

57:                                               ; preds = %48, %43, %40
  %58 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %59 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %64 = icmp ne %struct.cryptoini* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %67 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 256
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @E2BIG, align 4
  store i32 %71, i32* %4, align 4
  br label %156

72:                                               ; preds = %65, %62, %57
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.sec_session* @crypto_get_driver_session(i32 %73)
  store %struct.sec_session* %74, %struct.sec_session** %12, align 8
  br label %75

75:                                               ; preds = %94, %72
  %76 = load %struct.sec_eu_methods*, %struct.sec_eu_methods** %9, align 8
  %77 = getelementptr inbounds %struct.sec_eu_methods, %struct.sec_eu_methods* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.sec_eu_methods*, %struct.sec_eu_methods** %9, align 8
  %82 = getelementptr inbounds %struct.sec_eu_methods, %struct.sec_eu_methods* %81, i32 0, i32 0
  %83 = load i32 (%struct.sec_softc*, %struct.sec_session*, %struct.cryptoini.0*, %struct.cryptoini.0*)*, i32 (%struct.sec_softc*, %struct.sec_session*, %struct.cryptoini.0*, %struct.cryptoini.0*)** %82, align 8
  %84 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %85 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %86 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %87 = bitcast %struct.cryptoini* %86 to %struct.cryptoini.0*
  %88 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %89 = bitcast %struct.cryptoini* %88 to %struct.cryptoini.0*
  %90 = call i32 %83(%struct.sec_softc* %84, %struct.sec_session* %85, %struct.cryptoini.0* %87, %struct.cryptoini.0* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %97

94:                                               ; preds = %80
  %95 = load %struct.sec_eu_methods*, %struct.sec_eu_methods** %9, align 8
  %96 = getelementptr inbounds %struct.sec_eu_methods, %struct.sec_eu_methods* %95, i32 1
  store %struct.sec_eu_methods* %96, %struct.sec_eu_methods** %9, align 8
  br label %75

97:                                               ; preds = %93, %75
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %4, align 4
  br label %156

102:                                              ; preds = %97
  %103 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %104 = icmp ne %struct.cryptoini* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %107 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %112 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %113, 8
  %115 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %116 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %118 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %121 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %124 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memcpy(i32 %119, i64 %122, i32 %125)
  br label %127

127:                                              ; preds = %110, %105, %102
  %128 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %129 = icmp ne %struct.cryptoini* %128, null
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %132 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %137 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %138, 8
  %140 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %141 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %143 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %146 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %149 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @memcpy(i32 %144, i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %135, %130, %127
  %153 = load %struct.sec_eu_methods*, %struct.sec_eu_methods** %9, align 8
  %154 = load %struct.sec_session*, %struct.sec_session** %12, align 8
  %155 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %154, i32 0, i32 2
  store %struct.sec_eu_methods* %153, %struct.sec_eu_methods** %155, align 8
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %152, %100, %70, %55, %38, %21
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.sec_softc* @device_get_softc(i32) #1

declare dso_local i32 @sec_split_cri(%struct.cryptoini*, %struct.cryptoini**, %struct.cryptoini**) #1

declare dso_local %struct.sec_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
