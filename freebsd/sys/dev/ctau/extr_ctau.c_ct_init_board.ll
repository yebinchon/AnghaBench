; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_init_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32, i64, i64, i32, i32 }

@B_TAU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Tau\00", align 1
@B_TAU_E1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Tau/E1\00", align 1
@B_TAU_E1C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Tau/E1c\00", align 1
@B_TAU_E1D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Tau/E1d\00", align 1
@B_TAU_G703 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Tau/G.703\00", align 1
@B_TAU_G703C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Tau/G.703c\00", align 1
@B_TAU2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Tau2\00", align 1
@B_TAU2_E1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Tau2/E1\00", align 1
@B_TAU2_E1D = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"Tau2/E1d\00", align 1
@B_TAU2_G703 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"Tau2/G.703\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Tau/???\00", align 1
@BCR0_HDRUN = common dso_local global i32 0, align 4
@dmamask = common dso_local global i32* null, align 8
@irqmask = common dso_local global i32* null, align 8
@NCHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_init_board(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %16 = load i32, i32* %13, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @B_TAU, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %7
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %157

44:                                               ; preds = %7
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @B_TAU_E1, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strcpy(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %156

55:                                               ; preds = %44
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @B_TAU_E1C, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcpy(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %155

66:                                               ; preds = %55
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @B_TAU_E1D, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strcpy(i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %154

77:                                               ; preds = %66
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @B_TAU_G703, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @strcpy(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %153

88:                                               ; preds = %77
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @B_TAU_G703C, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @strcpy(i32 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %152

99:                                               ; preds = %88
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @B_TAU2, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strcpy(i32 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %151

110:                                              ; preds = %99
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @B_TAU2_E1, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @strcpy(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %150

121:                                              ; preds = %110
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @B_TAU2_E1D, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @strcpy(i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %149

132:                                              ; preds = %121
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @B_TAU2_G703, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @strcpy(i32 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %148

143:                                              ; preds = %132
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strcpy(i32 %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149, %116
  br label %151

151:                                              ; preds = %150, %105
  br label %152

152:                                              ; preds = %151, %94
  br label %153

153:                                              ; preds = %152, %83
  br label %154

154:                                              ; preds = %153, %72
  br label %155

155:                                              ; preds = %154, %61
  br label %156

156:                                              ; preds = %155, %50
  br label %157

157:                                              ; preds = %156, %39
  %158 = load i32, i32* @BCR0_HDRUN, align 4
  %159 = load i32*, i32** @dmamask, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %158, %165
  %167 = load i32*, i32** @irqmask, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %166, %173
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 7
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %189, %157
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @NCHAN, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @ct_init_chan(%struct.TYPE_5__* %186, i32 %187)
  br label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %181

192:                                              ; preds = %181
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %194 = call i32 @ct_reinit_board(%struct.TYPE_5__* %193)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ct_init_chan(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ct_reinit_board(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
