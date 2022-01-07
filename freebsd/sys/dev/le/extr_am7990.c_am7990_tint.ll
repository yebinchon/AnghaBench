; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am7990.c_am7990_tint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am7990.c_am7990_tint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, i64, i32, i32, i32, i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, %struct.ifnet* }
%struct.letmd = type { i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }

@LE_T1_OWN = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@LE_T1_ERR = common dso_local global i32 0, align 4
@LE_T3_BUFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"transmit buffer error\0A\00", align 1
@LE_T3_UFLO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"underflow\0A\00", align 1
@LE_T3_LCAR = common dso_local global i32 0, align 4
@LE_CARRIER = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"lost carrier\0A\00", align 1
@LE_T3_LCOL = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@LE_T3_RTRY = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@LE_T1_ONE = common dso_local global i32 0, align 4
@LE_T1_MORE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@LE_DEBUG = common dso_local global i32 0, align 4
@LE_T3_TDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*)* @am7990_tint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am7990_tint(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.letmd, align 4
  %5 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %6 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %7 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %6, i32 0, i32 7
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %10 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %170, %1
  %13 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %14 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %175

18:                                               ; preds = %12
  %19 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %20 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %19, i32 0, i32 6
  %21 = load i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)** %20, align 8
  %22 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %23 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @LE_TMDADDR(%struct.lance_softc* %23, i32 %24)
  %26 = call i32 %21(%struct.lance_softc* %22, %struct.letmd* %4, i32 %25, i32 20)
  %27 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LE_T1_OWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %175

33:                                               ; preds = %18
  %34 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LE_T1_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %137

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LE_T3_BUFF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %64

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LE_T3_UFLO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LE_T3_BUFF, align 4
  %68 = load i32, i32* @LE_T3_UFLO, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %74 = call i32 @lance_init_locked(%struct.lance_softc* %73)
  br label %187

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LE_T3_LCAR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %75
  %82 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %83 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LE_CARRIER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %90 = load i32, i32* @LINK_STATE_DOWN, align 4
  %91 = call i32 @if_link_state_change(%struct.ifnet* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %81
  %93 = load i32, i32* @LE_CARRIER, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %96 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %100 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %99, i32 0, i32 5
  %101 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %100, align 8
  %102 = icmp ne i32 (%struct.lance_softc*)* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %105 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %104, i32 0, i32 5
  %106 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %105, align 8
  %107 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %108 = call i32 %106(%struct.lance_softc* %107)
  br label %112

109:                                              ; preds = %92
  %110 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %111 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %75
  %114 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @LE_T3_LCOL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %121 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %122 = call i32 @if_inc_counter(%struct.ifnet* %120, i32 %121, i32 1)
  br label %123

123:                                              ; preds = %119, %113
  %124 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @LE_T3_RTRY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %131 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %132 = call i32 @if_inc_counter(%struct.ifnet* %130, i32 %131, i32 16)
  br label %133

133:                                              ; preds = %129, %123
  %134 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %135 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %136 = call i32 @if_inc_counter(%struct.ifnet* %134, i32 %135, i32 1)
  br label %162

137:                                              ; preds = %33
  %138 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @LE_T1_ONE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %145 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %146 = call i32 @if_inc_counter(%struct.ifnet* %144, i32 %145, i32 1)
  br label %158

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @LE_T1_MORE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %155 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %156 = call i32 @if_inc_counter(%struct.ifnet* %154, i32 %155, i32 2)
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %160 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %161 = call i32 @if_inc_counter(%struct.ifnet* %159, i32 %160, i32 1)
  br label %162

162:                                              ; preds = %158, %133
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  %165 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %166 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %162
  %171 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %172 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, -1
  store i64 %174, i64* %172, align 8
  br label %12

175:                                              ; preds = %32, %17
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %178 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %180 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 5, i32 0
  %185 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %186 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %175, %72
  ret void
}

declare dso_local i32 @LE_TMDADDR(%struct.lance_softc*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @lance_init_locked(%struct.lance_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
