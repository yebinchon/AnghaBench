; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_pcpustats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_pcpustats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUSTATES = common dso_local global i32 0, align 4
@cur_cp_times = common dso_local global double* null, align 8
@last_cp_times = common dso_local global double* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"{ke:name/%d}\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CP_USER = common dso_local global i32 0, align 4
@CP_NICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@CP_SYS = common dso_local global i32 0, align 4
@CP_INTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@CP_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @pcpustats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpustats(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %72, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  %20 = and i64 %16, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %72

23:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @CPUSTATES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load double*, double** @cur_cp_times, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CPUSTATES, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %29, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fptosi double %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load double*, double** @last_cp_times, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CPUSTATES, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %39, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double*, double** @cur_cp_times, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CPUSTATES, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %48, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fsub double %56, %47
  store double %57, double* %55, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sitofp i64 %58 to double
  %60 = load double*, double** @last_cp_times, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @CPUSTATES, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %60, i64 %66
  store double %59, double* %67, align 8
  br label %68

68:                                               ; preds = %28
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %24

71:                                               ; preds = %24
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %11

75:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  %76 = call i32 @xo_open_list(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %177, %75
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %180

81:                                               ; preds = %77
  %82 = load i64, i64* %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = shl i64 1, %84
  %86 = and i64 %82, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %177

89:                                               ; preds = %81
  %90 = call i32 @xo_open_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %109, %89
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @CPUSTATES, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load double*, double** @cur_cp_times, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @CPUSTATES, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %98, i64 %104
  %106 = load double, double* %105, align 8
  %107 = load double, double* %6, align 8
  %108 = fadd double %107, %106
  store double %108, double* %6, align 8
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load double, double* %6, align 8
  %114 = fcmp une double %113, 0.000000e+00
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load double, double* %6, align 8
  %117 = fdiv double 1.000000e+02, %116
  store double %117, double* %5, align 8
  br label %119

118:                                              ; preds = %112
  store double 0.000000e+00, double* %5, align 8
  br label %119

119:                                              ; preds = %118, %115
  %120 = load double*, double** @cur_cp_times, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @CPUSTATES, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* @CP_USER, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %120, i64 %126
  %128 = load double, double* %127, align 8
  %129 = load double*, double** @cur_cp_times, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @CPUSTATES, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* @CP_NICE, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %129, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fadd double %128, %137
  %139 = load double, double* %5, align 8
  %140 = fmul double %138, %139
  %141 = call i32 @percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %140, i32* %9)
  %142 = load double*, double** @cur_cp_times, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @CPUSTATES, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* @CP_SYS, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %142, i64 %148
  %150 = load double, double* %149, align 8
  %151 = load double*, double** @cur_cp_times, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @CPUSTATES, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* @CP_INTR, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %151, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fadd double %150, %159
  %161 = load double, double* %5, align 8
  %162 = fmul double %160, %161
  %163 = call i32 @percent(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), double %162, i32* %9)
  %164 = load double*, double** @cur_cp_times, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @CPUSTATES, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* @CP_IDLE, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %164, i64 %170
  %172 = load double, double* %171, align 8
  %173 = load double, double* %5, align 8
  %174 = fmul double %172, %173
  %175 = call i32 @percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %174, i32* %9)
  %176 = call i32 @xo_close_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %119, %88
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %77

180:                                              ; preds = %77
  %181 = call i32 @xo_close_list(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32) #1

declare dso_local i32 @percent(i8*, double, i32*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
