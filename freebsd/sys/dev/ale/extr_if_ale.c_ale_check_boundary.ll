; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_check_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_check_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@ALE_RX_PAGES = common dso_local global i32 0, align 4
@ALE_TX_RING_SZ = common dso_local global i64 0, align 8
@ALE_TX_CMB_SZ = common dso_local global i64 0, align 8
@ALE_RX_CMB_SZ = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ale_softc*)* @ale_check_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_check_boundary(%struct.ale_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ale_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %3, align 8
  %10 = load i32, i32* @ALE_RX_PAGES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @ALE_RX_PAGES, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = getelementptr inbounds i64, i64* %16, i64 1
  store i64 %39, i64* %40, align 8
  %41 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ALE_TX_RING_SZ, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ALE_TX_CMB_SZ, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %6, align 8
  %53 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ALE_RX_CMB_SZ, align 8
  %61 = add nsw i64 %59, %60
  %62 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 %61, i64* %62, align 16
  %63 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ALE_RX_CMB_SZ, align 8
  %71 = add nsw i64 %69, %70
  %72 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @ALE_ADDR_HI(i64 %73)
  %75 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @ALE_ADDR_HI(i64 %78)
  %80 = icmp ne i64 %74, %79
  br i1 %80, label %142, label %81

81:                                               ; preds = %1
  %82 = getelementptr inbounds i64, i64* %16, i64 0
  %83 = load i64, i64* %82, align 16
  %84 = call i64 @ALE_ADDR_HI(i64 %83)
  %85 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @ALE_ADDR_HI(i64 %91)
  %93 = icmp ne i64 %84, %92
  br i1 %93, label %142, label %94

94:                                               ; preds = %81
  %95 = getelementptr inbounds i64, i64* %16, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @ALE_ADDR_HI(i64 %96)
  %98 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @ALE_ADDR_HI(i64 %104)
  %106 = icmp ne i64 %97, %105
  br i1 %106, label %142, label %107

107:                                              ; preds = %94
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @ALE_ADDR_HI(i64 %108)
  %110 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @ALE_ADDR_HI(i64 %113)
  %115 = icmp ne i64 %109, %114
  br i1 %115, label %142, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds i64, i64* %13, i64 0
  %118 = load i64, i64* %117, align 16
  %119 = call i64 @ALE_ADDR_HI(i64 %118)
  %120 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @ALE_ADDR_HI(i64 %126)
  %128 = icmp ne i64 %119, %127
  br i1 %128, label %142, label %129

129:                                              ; preds = %116
  %130 = getelementptr inbounds i64, i64* %13, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @ALE_ADDR_HI(i64 %131)
  %133 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %134 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @ALE_ADDR_HI(i64 %139)
  %141 = icmp ne i64 %132, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %129, %116, %107, %94, %81, %1
  %143 = load i32, i32* @EFBIG, align 4
  store i32 %143, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

144:                                              ; preds = %129
  %145 = load i64, i64* %8, align 8
  %146 = call i64 @ALE_ADDR_HI(i64 %145)
  %147 = getelementptr inbounds i64, i64* %16, i64 0
  %148 = load i64, i64* %147, align 16
  %149 = call i64 @ALE_ADDR_HI(i64 %148)
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %178, label %151

151:                                              ; preds = %144
  %152 = load i64, i64* %8, align 8
  %153 = call i64 @ALE_ADDR_HI(i64 %152)
  %154 = getelementptr inbounds i64, i64* %16, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @ALE_ADDR_HI(i64 %155)
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %178, label %158

158:                                              ; preds = %151
  %159 = load i64, i64* %8, align 8
  %160 = call i64 @ALE_ADDR_HI(i64 %159)
  %161 = getelementptr inbounds i64, i64* %13, i64 0
  %162 = load i64, i64* %161, align 16
  %163 = call i64 @ALE_ADDR_HI(i64 %162)
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %178, label %165

165:                                              ; preds = %158
  %166 = load i64, i64* %8, align 8
  %167 = call i64 @ALE_ADDR_HI(i64 %166)
  %168 = getelementptr inbounds i64, i64* %13, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ALE_ADDR_HI(i64 %169)
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %165
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @ALE_ADDR_HI(i64 %173)
  %175 = load i64, i64* %6, align 8
  %176 = call i64 @ALE_ADDR_HI(i64 %175)
  %177 = icmp ne i64 %174, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172, %165, %158, %151, %144
  %179 = load i32, i32* @EFBIG, align 4
  store i32 %179, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

180:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

181:                                              ; preds = %180, %178, %142
  %182 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ALE_ADDR_HI(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
