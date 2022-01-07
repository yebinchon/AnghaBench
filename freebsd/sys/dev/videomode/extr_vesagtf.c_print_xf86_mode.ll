; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_vesagtf.c_print_xf86_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_vesagtf.c_print_xf86_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { double, double, double, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"  # %dx%d @ %.2f Hz (GTF) hsync: %.2f kHz; pclk: %.2f MHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"  Modeline \22%dx%d_%.2f\22  %.2f  %d %d %d %d  %d %d %d %d  -HSync +Vsync\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_xf86_mode(%struct.videomode* %0) #0 {
  %2 = alloca %struct.videomode*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.videomode* %0, %struct.videomode** %2, align 8
  %5 = load %struct.videomode*, %struct.videomode** %2, align 8
  %6 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fmul double 1.000000e+03, %7
  %9 = load %struct.videomode*, %struct.videomode** %2, align 8
  %10 = getelementptr inbounds %struct.videomode, %struct.videomode* %9, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fdiv double %8, %11
  %13 = fptrunc double %12 to float
  store float %13, float* %4, align 4
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = fmul double 1.000000e+00, %15
  %17 = load %struct.videomode*, %struct.videomode** %2, align 8
  %18 = getelementptr inbounds %struct.videomode, %struct.videomode* %17, i32 0, i32 2
  %19 = load double, double* %18, align 8
  %20 = fdiv double %16, %19
  %21 = fptrunc double %20 to float
  store float %21, float* %3, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.videomode*, %struct.videomode** %2, align 8
  %24 = getelementptr inbounds %struct.videomode, %struct.videomode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.videomode*, %struct.videomode** %2, align 8
  %27 = getelementptr inbounds %struct.videomode, %struct.videomode* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load float, float* %3, align 4
  %30 = fpext float %29 to double
  %31 = load float, float* %4, align 4
  %32 = fpext float %31 to double
  %33 = load %struct.videomode*, %struct.videomode** %2, align 8
  %34 = getelementptr inbounds %struct.videomode, %struct.videomode* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = fdiv double %35, 1.000000e+03
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, double %30, double %32, double %36)
  %38 = load %struct.videomode*, %struct.videomode** %2, align 8
  %39 = getelementptr inbounds %struct.videomode, %struct.videomode* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.videomode*, %struct.videomode** %2, align 8
  %42 = getelementptr inbounds %struct.videomode, %struct.videomode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load float, float* %3, align 4
  %45 = fpext float %44 to double
  %46 = load %struct.videomode*, %struct.videomode** %2, align 8
  %47 = getelementptr inbounds %struct.videomode, %struct.videomode* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fdiv double %48, 1.000000e+03
  %50 = load %struct.videomode*, %struct.videomode** %2, align 8
  %51 = getelementptr inbounds %struct.videomode, %struct.videomode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.videomode*, %struct.videomode** %2, align 8
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.videomode*, %struct.videomode** %2, align 8
  %57 = getelementptr inbounds %struct.videomode, %struct.videomode* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.videomode*, %struct.videomode** %2, align 8
  %60 = getelementptr inbounds %struct.videomode, %struct.videomode* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = load %struct.videomode*, %struct.videomode** %2, align 8
  %63 = getelementptr inbounds %struct.videomode, %struct.videomode* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.videomode*, %struct.videomode** %2, align 8
  %66 = getelementptr inbounds %struct.videomode, %struct.videomode* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.videomode*, %struct.videomode** %2, align 8
  %69 = getelementptr inbounds %struct.videomode, %struct.videomode* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.videomode*, %struct.videomode** %2, align 8
  %72 = getelementptr inbounds %struct.videomode, %struct.videomode* %71, i32 0, i32 2
  %73 = load double, double* %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43, double %45, double %49, i32 %52, i32 %55, i32 %58, double %61, i32 %64, i32 %67, i32 %70, double %73)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
