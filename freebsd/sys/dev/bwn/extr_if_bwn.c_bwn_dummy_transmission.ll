; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dummy_transmission.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dummy_transmission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { i32 }
%struct.bwn_phy = type { i32, i32, i32 }

@__const.bwn_dummy_transmission.buffer = private unnamed_addr constant [5 x i32] [i32 0, i32 13893632, i32 0, i32 16777216, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_dummy_transmission(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_phy*, align 8
  %8 = alloca %struct.bwn_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 1
  store %struct.bwn_phy* %14, %struct.bwn_phy** %7, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 0
  %17 = load %struct.bwn_softc*, %struct.bwn_softc** %16, align 8
  store %struct.bwn_softc* %17, %struct.bwn_softc** %8, align 8
  %18 = bitcast [5 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([5 x i32]* @__const.bwn_dummy_transmission.buffer to i8*), i64 20, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  store i32 30, i32* %10, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 131532, i32* %22, align 16
  br label %25

23:                                               ; preds = %3
  store i32 250, i32* %10, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 754798, i32* %24, align 16
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %27 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %26, i32 0, i32 0
  %28 = load %struct.bwn_softc*, %struct.bwn_softc** %27, align 8
  %29 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %42, %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %31, 5
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = mul i32 %35, 4
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bwn_ram_write(%struct.bwn_mac* %34, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %47 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %46, i32 1384, i32 0)
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %49 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  %50 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bhnd_get_hwrev(i32 %51)
  %53 = icmp slt i32 %52, 11
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 256
  %56 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %48, i32 1984, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 65, i32 64
  store i32 %60, i32* %11, align 4
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %61, i32 1292, i32 %62)
  %64 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %65 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %78, label %68

68:                                               ; preds = %45
  %69 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %70 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %75 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %68, %45
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %80 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %79, i32 1300, i32 6658)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %83 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %82, i32 1288, i32 0)
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %85 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %84, i32 1290, i32 0)
  %86 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %87 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %86, i32 1356, i32 0)
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %89 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %88, i32 1386, i32 20)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %91 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %90, i32 1384, i32 2086)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %93 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %92, i32 1280, i32 0)
  %94 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %95 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %103 [
    i32 128, label %97
    i32 130, label %97
    i32 129, label %100
  ]

97:                                               ; preds = %81, %81
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %99 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %98, i32 1282, i32 208)
  br label %106

100:                                              ; preds = %81
  %101 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %102 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %101, i32 1282, i32 80)
  br label %106

103:                                              ; preds = %81
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %105 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %104, i32 1282, i32 48)
  br label %106

106:                                              ; preds = %103, %100, %97
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %108 = call i32 @BWN_READ_2(%struct.bwn_mac* %107, i32 1282)
  %109 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %110 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 8272
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %115 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 5
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %120 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %119, i32 81, i32 23)
  br label %121

121:                                              ; preds = %118, %113, %106
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %135, %121
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %128 = call i32 @BWN_READ_2(%struct.bwn_mac* %127, i32 1294)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 128
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %138

133:                                              ; preds = %126
  %134 = call i32 @DELAY(i32 10)
  br label %135

135:                                              ; preds = %133
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %122

138:                                              ; preds = %132, %122
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %151, %138
  %140 = load i32, i32* %9, align 4
  %141 = icmp ult i32 %140, 10
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %144 = call i32 @BWN_READ_2(%struct.bwn_mac* %143, i32 1294)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = and i32 %145, 1024
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %154

149:                                              ; preds = %142
  %150 = call i32 @DELAY(i32 10)
  br label %151

151:                                              ; preds = %149
  %152 = load i32, i32* %9, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %139

154:                                              ; preds = %148, %139
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %167, %154
  %156 = load i32, i32* %9, align 4
  %157 = icmp ult i32 %156, 25
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %160 = call i32 @BWN_READ_2(%struct.bwn_mac* %159, i32 1680)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, 256
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  br label %170

165:                                              ; preds = %158
  %166 = call i32 @DELAY(i32 10)
  br label %167

167:                                              ; preds = %165
  %168 = load i32, i32* %9, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %155

170:                                              ; preds = %164, %155
  %171 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %172 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 8272
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load %struct.bwn_phy*, %struct.bwn_phy** %7, align 8
  %177 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 5
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %182 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %181, i32 81, i32 55)
  br label %183

183:                                              ; preds = %180, %175, %170
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #2

declare dso_local i32 @bwn_ram_write(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @bhnd_get_hwrev(i32) #2

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
