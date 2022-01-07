; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am79900.c_am79900_tint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_am79900.c_am79900_tint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, i64, i32, i32, i32, i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, %struct.ifnet* }
%struct.letmd = type { i32, i32, i32 }
%struct.ifnet = type { i32 }

@LE_T1_OWN = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@LE_T1_ERR = common dso_local global i32 0, align 4
@LE_T2_BUFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"transmit buffer error\0A\00", align 1
@LE_T2_UFLO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"underflow\0A\00", align 1
@LE_T2_LCAR = common dso_local global i32 0, align 4
@LE_CARRIER = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"lost carrier\0A\00", align 1
@LE_T2_LCOL = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@LE_T2_RTRY = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@LE_T1_ONE = common dso_local global i32 0, align 4
@LE_T1_MORE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@LE_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*)* @am79900_tint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79900_tint(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.letmd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %8 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %9 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %8, i32 0, i32 7
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %12 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %168, %1
  %15 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %16 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %173

20:                                               ; preds = %14
  %21 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %22 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %21, i32 0, i32 6
  %23 = load i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)*, i32 (%struct.lance_softc*, %struct.letmd*, i32, i32)** %22, align 8
  %24 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %25 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @LE_TMDADDR(%struct.lance_softc* %25, i32 %26)
  %28 = call i32 %23(%struct.lance_softc* %24, %struct.letmd* %4, i32 %27, i32 12)
  %29 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LE_LE32TOH(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LE_T1_OWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %173

37:                                               ; preds = %20
  %38 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @LE_T1_ERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %137

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.letmd, %struct.letmd* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LE_LE32TOH(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @LE_T2_BUFF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %68

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @LE_T2_UFLO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LE_T2_BUFF, align 4
  %71 = load i32, i32* @LE_T2_UFLO, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %77 = call i32 @lance_init_locked(%struct.lance_softc* %76)
  br label %185

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @LE_T2_LCAR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %78
  %84 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %85 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @LE_CARRIER, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %92 = load i32, i32* @LINK_STATE_DOWN, align 4
  %93 = call i32 @if_link_state_change(%struct.ifnet* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, i32* @LE_CARRIER, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %98 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %102 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %101, i32 0, i32 5
  %103 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %102, align 8
  %104 = icmp ne i32 (%struct.lance_softc*)* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %107 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %106, i32 0, i32 5
  %108 = load i32 (%struct.lance_softc*)*, i32 (%struct.lance_softc*)** %107, align 8
  %109 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %110 = call i32 %108(%struct.lance_softc* %109)
  br label %114

111:                                              ; preds = %94
  %112 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %113 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %78
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @LE_T2_LCOL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %122 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %123 = call i32 @if_inc_counter(%struct.ifnet* %121, i32 %122, i32 1)
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @LE_T2_RTRY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %131 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %132 = call i32 @if_inc_counter(%struct.ifnet* %130, i32 %131, i32 16)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %135 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %136 = call i32 @if_inc_counter(%struct.ifnet* %134, i32 %135, i32 1)
  br label %160

137:                                              ; preds = %37
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @LE_T1_ONE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %144 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %145 = call i32 @if_inc_counter(%struct.ifnet* %143, i32 %144, i32 1)
  br label %156

146:                                              ; preds = %137
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @LE_T1_MORE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %153 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %154 = call i32 @if_inc_counter(%struct.ifnet* %152, i32 %153, i32 2)
  br label %155

155:                                              ; preds = %151, %146
  br label %156

156:                                              ; preds = %155, %142
  %157 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %158 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %159 = call i32 @if_inc_counter(%struct.ifnet* %157, i32 %158, i32 1)
  br label %160

160:                                              ; preds = %156, %133
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %164 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %167, %160
  %169 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %170 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, -1
  store i64 %172, i64* %170, align 8
  br label %14

173:                                              ; preds = %36, %19
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %176 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %178 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 5, i32 0
  %183 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %184 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %173, %75
  ret void
}

declare dso_local i32 @LE_TMDADDR(%struct.lance_softc*, i32) #1

declare dso_local i32 @LE_LE32TOH(i32) #1

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
