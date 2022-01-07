; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_print_ct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_print_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bad nsdigits %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%04d-%02d-%02d %02d:%02d:%02d.%*.*ld\00", align 1
@nsdivisors = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"%04d-%02d-%02d %02d:%02d:%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_print_ct(%struct.clocktime* %0, i32 %1) #0 {
  %3 = alloca %struct.clocktime*, align 8
  %4 = alloca i32, align 4
  store %struct.clocktime* %0, %struct.clocktime** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %12, i8* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %10
  %20 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %21 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %24 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %30 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %36 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %41 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @nsdivisors, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %42, %47
  %49 = call i32 (i8*, i32, i32, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %38, i32 %39, i32 %48)
  br label %70

50:                                               ; preds = %10
  %51 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %52 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %55 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %58 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %61 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %64 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.clocktime*, %struct.clocktime** %3, align 8
  %67 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i32, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %50, %19
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
