; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_AddPoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_AddPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataset = type { i32, i32, double*, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataset*, double)* @AddPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddPoint(%struct.dataset* %0, double %1) #0 {
  %3 = alloca %struct.dataset*, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  store %struct.dataset* %0, %struct.dataset** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.dataset*, %struct.dataset** %3, align 8
  %7 = getelementptr inbounds %struct.dataset, %struct.dataset* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.dataset*, %struct.dataset** %3, align 8
  %10 = getelementptr inbounds %struct.dataset, %struct.dataset* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.dataset*, %struct.dataset** %3, align 8
  %15 = getelementptr inbounds %struct.dataset, %struct.dataset* %14, i32 0, i32 2
  %16 = load double*, double** %15, align 8
  store double* %16, double** %5, align 8
  %17 = load %struct.dataset*, %struct.dataset** %3, align 8
  %18 = getelementptr inbounds %struct.dataset, %struct.dataset* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 4
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dataset*, %struct.dataset** %3, align 8
  %22 = getelementptr inbounds %struct.dataset, %struct.dataset* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call double* @calloc(i32 8, i32 %23)
  %25 = load %struct.dataset*, %struct.dataset** %3, align 8
  %26 = getelementptr inbounds %struct.dataset, %struct.dataset* %25, i32 0, i32 2
  store double* %24, double** %26, align 8
  %27 = load %struct.dataset*, %struct.dataset** %3, align 8
  %28 = getelementptr inbounds %struct.dataset, %struct.dataset* %27, i32 0, i32 2
  %29 = load double*, double** %28, align 8
  %30 = icmp ne double* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.dataset*, %struct.dataset** %3, align 8
  %34 = getelementptr inbounds %struct.dataset, %struct.dataset* %33, i32 0, i32 2
  %35 = load double*, double** %34, align 8
  %36 = load double*, double** %5, align 8
  %37 = load %struct.dataset*, %struct.dataset** %3, align 8
  %38 = getelementptr inbounds %struct.dataset, %struct.dataset* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(double* %35, double* %36, i32 %42)
  %44 = load double*, double** %5, align 8
  %45 = call i32 @free(double* %44)
  br label %46

46:                                               ; preds = %13, %2
  %47 = load double, double* %4, align 8
  %48 = load %struct.dataset*, %struct.dataset** %3, align 8
  %49 = getelementptr inbounds %struct.dataset, %struct.dataset* %48, i32 0, i32 2
  %50 = load double*, double** %49, align 8
  %51 = load %struct.dataset*, %struct.dataset** %3, align 8
  %52 = getelementptr inbounds %struct.dataset, %struct.dataset* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds double, double* %50, i64 %55
  store double %47, double* %56, align 8
  %57 = load double, double* %4, align 8
  %58 = load %struct.dataset*, %struct.dataset** %3, align 8
  %59 = getelementptr inbounds %struct.dataset, %struct.dataset* %58, i32 0, i32 3
  %60 = load double, double* %59, align 8
  %61 = fadd double %60, %57
  store double %61, double* %59, align 8
  ret void
}

declare dso_local double* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(double*, double*, i32) #1

declare dso_local i32 @free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
