; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_decode_pst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_decode_pst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn_softc = type { i32, i32, i32, i32, %struct.powernow_state* }
%struct.powernow_state = type { i64, i64, i32, i8* }

@POWERNOW_MAX_STATES = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i8* null, align 8
@pn7_fid_to_mult = common dso_local global i32* null, align 8
@A0_ERRATA = common dso_local global i32 0, align 4
@pn8_fid_to_mult = common dso_local global i32* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"powernow: %2i %8dkHz FID %02x VID %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn_softc*, i32*, i32)* @decode_pst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pst(%struct.pn_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.powernow_state, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pn_softc* %0, %struct.pn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @POWERNOW_MAX_STATES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %21 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %20, i32 0, i32 4
  %22 = load %struct.powernow_state*, %struct.powernow_state** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %22, i64 %24
  %26 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %25, i32 0, i32 0
  store i64 %19, i64* %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %13

30:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %139, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %142

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* %36, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* %41, align 4
  %44 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %46 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %48 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %92 [
    i32 129, label %50
    i32 128, label %79
  ]

50:                                               ; preds = %35
  %51 = load i32*, i32** @pn7_fid_to_mult, align 8
  %52 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 100, %55
  %57 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %58 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %64 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @A0_ERRATA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %50
  %70 = load i32*, i32** @pn7_fid_to_mult, align 8
  %71 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = srem i32 %74, 10
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %139

78:                                               ; preds = %69, %50
  br label %92

79:                                               ; preds = %35
  %80 = load i32*, i32** @pn8_fid_to_mult, align 8
  %81 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 100, %84
  %86 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %87 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %35, %79, %78
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %112, %92
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %99 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %98, i32 0, i32 4
  %100 = load %struct.powernow_state*, %struct.powernow_state** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %100, i64 %103
  %105 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %10, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %106, %108
  br label %110

110:                                              ; preds = %97, %94
  %111 = phi i1 [ false, %94 ], [ %109, %97 ]
  br i1 %111, label %112, label %129

112:                                              ; preds = %110
  %113 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %114 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %113, i32 0, i32 4
  %115 = load %struct.powernow_state*, %struct.powernow_state** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %115, i64 %117
  %119 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %120 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %119, i32 0, i32 4
  %121 = load %struct.powernow_state*, %struct.powernow_state** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %121, i64 %124
  %126 = call i32 @memcpy(%struct.powernow_state* %118, %struct.powernow_state* %125, i32 32)
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %8, align 4
  br label %94

129:                                              ; preds = %110
  %130 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %131 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %130, i32 0, i32 4
  %132 = load %struct.powernow_state*, %struct.powernow_state** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %132, i64 %134
  %136 = call i32 @memcpy(%struct.powernow_state* %135, %struct.powernow_state* %10, i32 32)
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %129, %77
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %31

142:                                              ; preds = %31
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %145 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* @bootverbose, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %189

148:                                              ; preds = %142
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %185, %148
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %152 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %149
  %156 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %157 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %156, i32 0, i32 4
  %158 = load %struct.powernow_state*, %struct.powernow_state** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %158, i64 %160
  %162 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %11, align 4
  %165 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %166 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %165, i32 0, i32 4
  %167 = load %struct.powernow_state*, %struct.powernow_state** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %167, i64 %169
  %171 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %175 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %174, i32 0, i32 4
  %176 = load %struct.powernow_state*, %struct.powernow_state** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %176, i64 %178
  %180 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %173, i64 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %155
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %149

188:                                              ; preds = %149
  br label %189

189:                                              ; preds = %188, %142
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.powernow_state*, %struct.powernow_state*, i32) #1

declare dso_local i32 @printf(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
