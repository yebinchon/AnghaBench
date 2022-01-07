; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_tx_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_tx_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glob_arg = type { double }
%struct.my_ctrs = type { i32, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"%s nothing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"%s %llu packets %llu bytes %llu events %d bytes each in %.2f seconds.\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Speed: %spps Bandwidth: %sbps (raw %sbps). Average batch: %.2f pkts\0A\00", align 1
@normalize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glob_arg*, %struct.my_ctrs*, double, i8*)* @tx_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_output(%struct.glob_arg* %0, %struct.my_ctrs* %1, double %2, i8* %3) #0 {
  %5 = alloca %struct.glob_arg*, align 8
  %6 = alloca %struct.my_ctrs*, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [40 x i8], align 16
  %14 = alloca [80 x i8], align 16
  %15 = alloca [80 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.glob_arg* %0, %struct.glob_arg** %5, align 8
  store %struct.my_ctrs* %1, %struct.my_ctrs** %6, align 8
  store double %2, double* %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %18 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %107

24:                                               ; preds = %4
  %25 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %26 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %29 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %16, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %34 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %38 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %42 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load double, double* %7, align 8
  %46 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %36, i64 %40, i64 %43, i32 %44, double %45)
  %47 = load double, double* %7, align 8
  %48 = fcmp oeq double %47, 0.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  store double 0x3EB0C6F7A0B5ED8D, double* %7, align 8
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 60
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 60, i32* %16, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %56 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sitofp i32 %57 to double
  %59 = load double, double* %7, align 8
  %60 = fdiv double %58, %59
  store double %60, double* %11, align 8
  %61 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %62 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double 8.000000e+00, %64
  %66 = load double, double* %7, align 8
  %67 = fdiv double %65, %66
  store double %67, double* %9, align 8
  %68 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %69 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to double
  %72 = fmul double 8.000000e+00, %71
  %73 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %74 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sitofp i32 %75 to double
  %77 = load %struct.glob_arg*, %struct.glob_arg** %5, align 8
  %78 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = fmul double %76, %79
  %81 = fadd double %72, %80
  %82 = load double, double* %7, align 8
  %83 = fdiv double %81, %82
  store double %83, double* %10, align 8
  %84 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %85 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sitofp i32 %86 to double
  %88 = load %struct.my_ctrs*, %struct.my_ctrs** %6, align 8
  %89 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = fdiv double %87, %91
  store double %92, double* %12, align 8
  %93 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %94 = load double, double* %11, align 8
  %95 = load i32, i32* @normalize, align 4
  %96 = call i8* @norm(i8* %93, double %94, i32 %95)
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %98 = load double, double* %9, align 8
  %99 = load i32, i32* @normalize, align 4
  %100 = call i8* @norm(i8* %97, double %98, i32 %99)
  %101 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %102 = load double, double* %10, align 8
  %103 = load i32, i32* @normalize, align 4
  %104 = call i8* @norm(i8* %101, double %102, i32 %103)
  %105 = load double, double* %12, align 8
  %106 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* %96, i8* %100, i8* %104, double %105)
  br label %107

107:                                              ; preds = %54, %21
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @norm(i8*, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
