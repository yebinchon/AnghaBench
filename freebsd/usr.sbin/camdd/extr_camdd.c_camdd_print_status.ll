; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_print_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_dev = type { i64, i64, i32 }
%struct.timespec = type { x86_fp80, i32, [12 x i8] }

@CLOCK_MONOTONIC_PRECISE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to get done time\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%ju bytes %s %s\0A%ju bytes %s %s\0A%.4Lf seconds elapsed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"read from\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"written to\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%.2Lf MB/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camdd_print_status(%struct.camdd_dev* %0, %struct.camdd_dev* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.camdd_dev*, align 8
  %5 = alloca %struct.camdd_dev*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.timespec, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca i32, align 4
  store %struct.camdd_dev* %0, %struct.camdd_dev** %4, align 8
  store %struct.camdd_dev* %1, %struct.camdd_dev** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @CLOCK_MONOTONIC_PRECISE, align 4
  %13 = call i32 @clock_gettime(i32 %12, %struct.timespec* %7)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %78

18:                                               ; preds = %3
  %19 = load %struct.timespec*, %struct.timespec** %6, align 8
  %20 = call i32 @timespecsub(%struct.timespec* %7, %struct.timespec* %19, %struct.timespec* %7)
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %22 = load x86_fp80, x86_fp80* %21, align 16
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 16
  %25 = mul nsw i32 %24, 1000000000
  %26 = sitofp i32 %25 to x86_fp80
  %27 = fadd x86_fp80 %22, %26
  store x86_fp80 %27, x86_fp80* %8, align 16
  %28 = load x86_fp80, x86_fp80* %8, align 16
  store x86_fp80 %28, x86_fp80* %10, align 16
  %29 = load x86_fp80, x86_fp80* %10, align 16
  %30 = fdiv x86_fp80 %29, 0xK401CEE6B280000000000
  store x86_fp80 %30, x86_fp80* %10, align 16
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %33 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = sitofp i32 %35 to x86_fp80
  %37 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %38 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %43 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %44 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.camdd_dev*, %struct.camdd_dev** %5, align 8
  %47 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.camdd_dev*, %struct.camdd_dev** %5, align 8
  %51 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %56 = load %struct.camdd_dev*, %struct.camdd_dev** %5, align 8
  %57 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load x86_fp80, x86_fp80* %10, align 16
  %60 = call i32 (i32, i8*, x86_fp80, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %36, i8* %42, i32 %45, i32 %49, i8* %55, i32 %58, x86_fp80 %59)
  %61 = load %struct.camdd_dev*, %struct.camdd_dev** %5, align 8
  %62 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %65 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call x86_fp80 @min(i64 %63, i64 %66)
  store x86_fp80 %67, x86_fp80* %9, align 16
  %68 = load x86_fp80, x86_fp80* %9, align 16
  %69 = fdiv x86_fp80 %68, 0xK40138000000000000000
  store x86_fp80 %69, x86_fp80* %9, align 16
  %70 = load x86_fp80, x86_fp80* %9, align 16
  %71 = fmul x86_fp80 %70, 0xK401CEE6B280000000000
  store x86_fp80 %71, x86_fp80* %9, align 16
  %72 = load x86_fp80, x86_fp80* %8, align 16
  %73 = load x86_fp80, x86_fp80* %9, align 16
  %74 = fdiv x86_fp80 %73, %72
  store x86_fp80 %74, x86_fp80* %9, align 16
  %75 = load i32, i32* @stderr, align 4
  %76 = load x86_fp80, x86_fp80* %9, align 16
  %77 = call i32 (i32, i8*, x86_fp80, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), x86_fp80 %76)
  br label %78

78:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @fprintf(i32, i8*, x86_fp80, ...) #1

declare dso_local x86_fp80 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
