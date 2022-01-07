; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 (%struct.dumperinfo*)*, i32, i64, i64, i64, i64, i32*, i32 }
%struct.kerneldumpheader = type { i32 }

@SIZEOF_METADATA = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_start(%struct.dumperinfo* %0, %struct.kerneldumpheader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dumperinfo*, align 8
  %5 = alloca %struct.kerneldumpheader*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %4, align 8
  store %struct.kerneldumpheader* %1, %struct.kerneldumpheader** %5, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %11 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %10, i32 0, i32 0
  %12 = load i32 (%struct.dumperinfo*)*, i32 (%struct.dumperinfo*)** %11, align 8
  %13 = icmp ne i32 (%struct.dumperinfo*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %16 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %15, i32 0, i32 0
  %17 = load i32 (%struct.dumperinfo*)*, i32 (%struct.dumperinfo*)** %16, align 8
  %18 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %19 = call i32 %17(%struct.dumperinfo* %18)
  store i32 %19, i32* %9, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %22 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dtoh64(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* @SIZEOF_METADATA, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %29 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %27, %32
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %37 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %20
  %42 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %43 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @E2BIG, align 4
  store i32 %47, i32* %3, align 4
  br label %84

48:                                               ; preds = %41
  %49 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %50 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %53, %54
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @htod64(i64 %56)
  %58 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %59 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %48, %20
  %61 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %62 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %65 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %69 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %67, %71
  %73 = load i64, i64* %6, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %76 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %60, %14
  %78 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %79 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %82 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %81, i32 0, i32 5
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %46
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @dtoh64(i32) #1

declare dso_local i32 @htod64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
