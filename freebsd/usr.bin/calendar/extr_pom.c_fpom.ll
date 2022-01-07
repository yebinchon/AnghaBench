; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_fpom.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_fpom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i64 }

@EPOCH = common dso_local global i32 0, align 4
@DAYSPERLEAPYEAR = common dso_local global i32 0, align 4
@DAYSPERYEAR = common dso_local global i32 0, align 4
@FSECSPERMINUTE = common dso_local global i32 0, align 4
@FSECSPERHOUR = common dso_local global i32 0, align 4
@FHOURSPERDAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpom(i32 %0, double %1, double* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm, align 8
  %11 = alloca %struct.tm, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %25 = load double*, double** %8, align 8
  store double* %25, double** %22, align 8
  %26 = load double*, double** %7, align 8
  store double* %26, double** %23, align 8
  %27 = call i32 @memset(%struct.tm* %11, i32 0, i32 32)
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1900
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i32 23, i32* %33, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  store i32 59, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 4
  store i32 59, i32* %35, align 8
  %36 = call i32 @memset(%struct.tm* %12, i32 0, i32 32)
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1900
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 4
  store i32 1, i32* %44, align 8
  %45 = call i32 @mktime(%struct.tm* %11)
  store i32 %45, i32* %9, align 4
  %46 = call i32 @gmtime_r(i32* %9, %struct.tm* %10)
  store i32 0, i32* %19, align 4
  %47 = load i32, i32* @EPOCH, align 4
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %66, %4
  %49 = load i32, i32* %17, align 4
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 1900, %54
  %56 = call i64 @isleap(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @DAYSPERLEAPYEAR, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @DAYSPERYEAR, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %19, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %48

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FSECSPERMINUTE, align 4
  %78 = sdiv i32 %76, %77
  %79 = add nsw i32 %74, %78
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FSECSPERHOUR, align 4
  %83 = sdiv i32 %81, %82
  %84 = add nsw i32 %79, %83
  %85 = load i32, i32* @FHOURSPERDAY, align 4
  %86 = sdiv i32 %84, %85
  %87 = add nsw i32 %72, %86
  %88 = sitofp i32 %87 to double
  store double %88, double* %13, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %13, align 8
  %92 = fadd double %91, %90
  store double %92, double* %13, align 8
  %93 = call i32 @mktime(%struct.tm* %12)
  store i32 %93, i32* %9, align 4
  %94 = call i32 @gmtime_r(i32* %9, %struct.tm* %10)
  store i32 0, i32* %19, align 4
  %95 = load i32, i32* @EPOCH, align 4
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %114, %69
  %97 = load i32, i32* %17, align 4
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 1900, %102
  %104 = call i64 @isleap(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @DAYSPERLEAPYEAR, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @DAYSPERYEAR, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %96

117:                                              ; preds = %96
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @FSECSPERMINUTE, align 4
  %126 = sdiv i32 %124, %125
  %127 = add nsw i32 %122, %126
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FSECSPERHOUR, align 4
  %131 = sdiv i32 %129, %130
  %132 = add nsw i32 %127, %131
  %133 = load i32, i32* @FHOURSPERDAY, align 4
  %134 = sdiv i32 %132, %133
  %135 = add nsw i32 %120, %134
  %136 = sitofp i32 %135 to double
  store double %136, double* %14, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sitofp i32 %137 to double
  %139 = load double, double* %14, align 8
  %140 = fadd double %139, %138
  store double %140, double* %14, align 8
  %141 = load double, double* %13, align 8
  %142 = call double @potm(double %141)
  store double %142, double* %15, align 8
  %143 = load double, double* %14, align 8
  %144 = call double @potm(double %143)
  store double %144, double* %16, align 8
  %145 = load double, double* %15, align 8
  %146 = load double, double* %16, align 8
  %147 = fcmp ogt double %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 -1, i32 1
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i64 @isleap(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %117
  %154 = load i32, i32* @DAYSPERLEAPYEAR, align 4
  br label %157

155:                                              ; preds = %117
  %156 = load i32, i32* @DAYSPERYEAR, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = add nsw i32 1, %158
  store i32 %159, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %224, %157
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %19, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %227

164:                                              ; preds = %160
  %165 = load double, double* %13, align 8
  %166 = call double @potm(double %165)
  store double %166, double* %15, align 8
  %167 = load double, double* %14, align 8
  %168 = call double @potm(double %167)
  store double %168, double* %16, align 8
  %169 = load double, double* %15, align 8
  %170 = load double, double* %16, align 8
  %171 = fcmp ogt double %169, %170
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 -1, i32 1
  store i32 %173, i32* %21, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %21, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %218

177:                                              ; preds = %164
  %178 = load double, double* %13, align 8
  %179 = fsub double %178, 1.000000e+00
  %180 = load i32, i32* %20, align 4
  %181 = call double @potm_minute(double %179, i32 %180)
  %182 = load double, double* %6, align 8
  %183 = load i32, i32* @FHOURSPERDAY, align 4
  %184 = sitofp i32 %183 to double
  %185 = fdiv double %182, %184
  %186 = fadd double %181, %185
  store double %186, double* %24, align 8
  %187 = load i32, i32* %20, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %201

189:                                              ; preds = %177
  %190 = load i32, i32* %21, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = load i32, i32* %18, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sitofp i32 %194 to double
  %196 = load double, double* %24, align 8
  %197 = fadd double %195, %196
  %198 = load double*, double** %22, align 8
  store double %197, double* %198, align 8
  %199 = load double*, double** %22, align 8
  %200 = getelementptr inbounds double, double* %199, i32 1
  store double* %200, double** %22, align 8
  br label %217

201:                                              ; preds = %189, %177
  %202 = load i32, i32* %20, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %216

204:                                              ; preds = %201
  %205 = load i32, i32* %21, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i32, i32* %18, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sitofp i32 %209 to double
  %211 = load double, double* %24, align 8
  %212 = fadd double %210, %211
  %213 = load double*, double** %23, align 8
  store double %212, double* %213, align 8
  %214 = load double*, double** %23, align 8
  %215 = getelementptr inbounds double, double* %214, i32 1
  store double* %215, double** %23, align 8
  br label %216

216:                                              ; preds = %207, %204, %201
  br label %217

217:                                              ; preds = %216, %192
  br label %218

218:                                              ; preds = %217, %164
  %219 = load i32, i32* %21, align 4
  store i32 %219, i32* %20, align 4
  %220 = load double, double* %13, align 8
  %221 = fadd double %220, 1.000000e+00
  store double %221, double* %13, align 8
  %222 = load double, double* %14, align 8
  %223 = fadd double %222, 1.000000e+00
  store double %223, double* %14, align 8
  br label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  br label %160

227:                                              ; preds = %160
  %228 = load double*, double** %23, align 8
  store double -1.000000e+00, double* %228, align 8
  %229 = load double*, double** %22, align 8
  store double -1.000000e+00, double* %229, align 8
  ret void
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @isleap(i32) #1

declare dso_local double @potm(double) #1

declare dso_local double @potm_minute(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
