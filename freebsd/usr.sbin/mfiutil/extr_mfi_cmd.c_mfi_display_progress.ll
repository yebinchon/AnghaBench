; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_display_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_display_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_progress = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: %.2f%% complete after \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" finished in \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_display_progress(i8* %0, %struct.mfi_progress* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mfi_progress*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.mfi_progress* %1, %struct.mfi_progress** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %8 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 1.000000e+02
  %12 = fdiv float %11, 6.553500e+04
  %13 = fpext float %12 to double
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %6, double %13)
  %15 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %16 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @print_time_humanized(i32 %17)
  %19 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %20 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %25 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 10
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %31 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 65536, %32
  %34 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %35 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  %38 = load %struct.mfi_progress*, %struct.mfi_progress** %4, align 8
  %39 = getelementptr inbounds %struct.mfi_progress, %struct.mfi_progress* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @print_time_humanized(i32 %42)
  br label %44

44:                                               ; preds = %28, %23, %2
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_time_humanized(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
