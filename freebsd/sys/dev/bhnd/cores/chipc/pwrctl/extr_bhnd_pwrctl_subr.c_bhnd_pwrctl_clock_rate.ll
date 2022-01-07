; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_clock_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHIPC_CN_N1 = common dso_local global i32 0, align 4
@CHIPC_CN_N2 = common dso_local global i32 0, align 4
@CHIPC_F5_BIAS = common dso_local global i32 0, align 4
@CHIPC_T2_BIAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid n1 value\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid n2 value\00", align 1
@CHIPC_T6_MMASK = common dso_local global i32 0, align 4
@CHIPC_T6_M1 = common dso_local global i32 0, align 4
@CHIPC_T6_M0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unsupported PLL type %u\0A\00", align 1
@CHIPC_CLOCK_BASE2 = common dso_local global i32 0, align 4
@CHIPC_CLOCK_BASE1 = common dso_local global i32 0, align 4
@CHIPC_M1 = common dso_local global i32 0, align 4
@CHIPC_M2 = common dso_local global i32 0, align 4
@CHIPC_M3 = common dso_local global i32 0, align 4
@CHIPC_MC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unsupported pwrctl mc %#x\0A\00", align 1
@CHIPC_T2M2_BIAS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"invalid m1 value\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"invalid m2 value\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid m3 value\00", align 1
@CHIPC_T2MC_M1BYP = common dso_local global i32 0, align 4
@CHIPC_T2MC_M2BYP = common dso_local global i32 0, align 4
@CHIPC_T2MC_M3BYP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"unhandled PLL type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pwrctl_clock_rate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CHIPC_CN_N1, align 4
  %18 = call i32 @CHIPC_GET_BITS(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CHIPC_CN_N2, align 4
  %21 = call i32 @CHIPC_GET_BITS(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %64 [
    i32 134, label %23
    i32 132, label %23
    i32 131, label %23
    i32 128, label %23
    i32 133, label %29
    i32 130, label %54
    i32 129, label %55
  ]

23:                                               ; preds = %3, %3, %3, %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @bhnd_pwrctl_factor6(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @CHIPC_F5_BIAS, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %67

29:                                               ; preds = %3
  %30 = load i32, i32* @CHIPC_T2_BIAS, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @CHIPC_T2_BIAS, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 7
  br label %41

41:                                               ; preds = %38, %29
  %42 = phi i1 [ false, %29 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 5
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = icmp sle i32 %48, 23
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @KASSERT(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %67

54:                                               ; preds = %3
  store i32 100000000, i32* %4, align 4
  br label %216

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CHIPC_T6_MMASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @CHIPC_T6_M1, align 4
  store i32 %61, i32* %4, align 4
  br label %216

62:                                               ; preds = %55
  %63 = load i32, i32* @CHIPC_T6_M0, align 4
  store i32 %63, i32* %4, align 4
  br label %216

64:                                               ; preds = %3
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 0, i32* %4, align 4
  br label %216

67:                                               ; preds = %50, %23
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 132
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @CHIPC_CLOCK_BASE2, align 4
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @CHIPC_CLOCK_BASE1, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %216

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @CHIPC_M1, align 4
  %89 = call i32 @CHIPC_GET_BITS(i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @CHIPC_M2, align 4
  %92 = call i32 @CHIPC_GET_BITS(i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CHIPC_M3, align 4
  %95 = call i32 @CHIPC_GET_BITS(i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @CHIPC_MC, align 4
  %98 = call i32 @CHIPC_GET_BITS(i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %5, align 4
  switch i32 %99, label %213 [
    i32 134, label %100
    i32 132, label %100
    i32 131, label %100
    i32 128, label %100
    i32 133, label %148
  ]

100:                                              ; preds = %86, %86, %86, %86
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @bhnd_pwrctl_factor6(i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 134
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 %106, 132
  br i1 %107, label %108, label %112

108:                                              ; preds = %105, %100
  %109 = load i32, i32* @CHIPC_F5_BIAS, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @bhnd_pwrctl_factor6(i32 %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @bhnd_pwrctl_factor6(i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  switch i32 %118, label %145 [
    i32 139, label %119
    i32 138, label %121
    i32 137, label %125
    i32 136, label %131
    i32 135, label %139
  ]

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %216

121:                                              ; preds = %115
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %4, align 4
  br label %216

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sdiv i32 %126, %129
  store i32 %130, i32* %4, align 4
  br label %216

131:                                              ; preds = %115
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %14, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sdiv i32 %132, %137
  store i32 %138, i32* %4, align 4
  br label %216

139:                                              ; preds = %115
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sdiv i32 %140, %143
  store i32 %144, i32* %4, align 4
  br label %216

145:                                              ; preds = %115
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  store i32 0, i32* %4, align 4
  br label %216

148:                                              ; preds = %86
  %149 = load i32, i32* @CHIPC_T2_BIAS, align 4
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* @CHIPC_T2M2_BIAS, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* @CHIPC_T2_BIAS, align 4
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp sge i32 %158, 2
  br i1 %159, label %160, label %163

160:                                              ; preds = %148
  %161 = load i32, i32* %12, align 4
  %162 = icmp sle i32 %161, 7
  br label %163

163:                                              ; preds = %160, %148
  %164 = phi i1 [ false, %148 ], [ %162, %160 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @KASSERT(i32 %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %167 = load i32, i32* %13, align 4
  %168 = icmp sge i32 %167, 3
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i32, i32* %13, align 4
  %171 = icmp sle i32 %170, 10
  br label %172

172:                                              ; preds = %169, %163
  %173 = phi i1 [ false, %163 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @KASSERT(i32 %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* %14, align 4
  %177 = icmp sge i32 %176, 2
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i32, i32* %14, align 4
  %180 = icmp sle i32 %179, 7
  br label %181

181:                                              ; preds = %178, %172
  %182 = phi i1 [ false, %172 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @KASSERT(i32 %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @CHIPC_T2MC_M1BYP, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sdiv i32 %191, %190
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %189, %181
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @CHIPC_T2MC_M2BYP, align 4
  %196 = and i32 %194, %195
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sdiv i32 %200, %199
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @CHIPC_T2MC_M3BYP, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %11, align 4
  %210 = sdiv i32 %209, %208
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %207, %202
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %4, align 4
  br label %216

213:                                              ; preds = %86
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %54, %60, %62, %64, %85, %119, %121, %125, %131, %139, %145, %211, %213
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @CHIPC_GET_BITS(i32, i32) #1

declare dso_local i32 @bhnd_pwrctl_factor6(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
