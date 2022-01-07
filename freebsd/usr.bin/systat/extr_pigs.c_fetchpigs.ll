; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_pigs.c_fetchpigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_pigs.c_fetchpigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, %struct.kinfo_proc* }
%struct.kinfo_proc = type { float, i32, i64 }

@fetchpigs.lastnproc = internal global i32 0, align 4
@kd = common dso_local global i32 0, align 4
@KERN_PROC_ALL = common dso_local global i32 0, align 4
@nproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pt = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@P_INMEM = common dso_local global i32 0, align 4
@fscale = common dso_local global double 0.000000e+00, align 8
@lccpu = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetchpigs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = load i32, i32* @kd, align 4
  %6 = load i32, i32* @KERN_PROC_ALL, align 4
  %7 = call %struct.kinfo_proc* @kvm_getprocs(i32 %5, i32 %6, i32 0, i32* @nproc)
  store %struct.kinfo_proc* %7, %struct.kinfo_proc** %4, align 8
  %8 = icmp eq %struct.kinfo_proc* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* @kd, align 4
  %11 = call i32 @kvm_geterr(i32 %10)
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pt, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pt, align 8
  %17 = call i32 @free(%struct.TYPE_4__* %16)
  br label %18

18:                                               ; preds = %15, %9
  br label %99

19:                                               ; preds = %0
  %20 = load i32, i32* @nproc, align 4
  %21 = load i32, i32* @fetchpigs.lastnproc, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pt, align 8
  %25 = call i32 @free(%struct.TYPE_4__* %24)
  %26 = load i32, i32* @nproc, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_4__* @malloc(i32 %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** @pt, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @die(i32 0)
  br label %35

35:                                               ; preds = %32, %23
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* @nproc, align 4
  store i32 %37, i32* @fetchpigs.lastnproc, align 4
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %96, %36
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @nproc, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pt, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.kinfo_proc* %46, %struct.kinfo_proc** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pt, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store float* %56, float** %3, align 8
  %57 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %57, i64 %59
  %61 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %60, i32 0, i32 0
  %62 = load float, float* %61, align 8
  store float %62, float* %2, align 4
  %63 = load float, float* %2, align 4
  %64 = fcmp oeq float %63, 0.000000e+00
  br i1 %64, label %75, label %65

65:                                               ; preds = %42
  %66 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %66, i64 %68
  %70 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @P_INMEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65, %42
  %76 = load float*, float** %3, align 8
  store float 0.000000e+00, float* %76, align 4
  br label %95

77:                                               ; preds = %65
  %78 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %78, i64 %80
  %82 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sitofp i64 %83 to double
  %85 = load double, double* @fscale, align 8
  %86 = fdiv double %84, %85
  %87 = load float, float* %2, align 4
  %88 = load float, float* @lccpu, align 4
  %89 = fmul float %87, %88
  %90 = call double @exp(float %89)
  %91 = fsub double 1.000000e+00, %90
  %92 = fdiv double %86, %91
  %93 = fptrunc double %92 to float
  %94 = load float*, float** %3, align 8
  store float %93, float* %94, align 4
  br label %95

95:                                               ; preds = %77, %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %38

99:                                               ; preds = %18, %38
  ret void
}

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32, i32, i32, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @kvm_geterr(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local double @exp(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
