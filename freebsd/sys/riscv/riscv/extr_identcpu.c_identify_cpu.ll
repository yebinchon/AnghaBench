; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_identcpu.c_identify_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_identcpu.c_identify_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i64, i64 }
%struct.cpu_parts = type { i64, i8* }

@cpuid = common dso_local global i32 0, align 4
@cpu_implementers = common dso_local global %struct.TYPE_4__* null, align 8
@cpu_desc = common dso_local global %struct.TYPE_5__* null, align 8
@cpu_parts_std = common dso_local global %struct.cpu_parts* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"CPU(%d): %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @identify_cpu() #0 {
  %1 = alloca %struct.cpu_parts*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cpu_parts* null, %struct.cpu_parts** %1, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i32, i32* @cpuid, align 4
  %9 = call i64 @PCPU_GET(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @CPU_IMPL(i64 %10)
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %49, %0
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_implementers, align 8
  %15 = call i64 @nitems(%struct.TYPE_4__* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_implementers, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_implementers, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %25, %17
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_desc, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i64 %33, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_implementers, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_desc, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load %struct.cpu_parts*, %struct.cpu_parts** @cpu_parts_std, align 8
  store %struct.cpu_parts* %47, %struct.cpu_parts** %1, align 8
  br label %52

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %12

52:                                               ; preds = %32, %12
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @CPU_PART(i64 %53)
  store i64 %54, i64* %2, align 8
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %91, %52
  %56 = load %struct.cpu_parts*, %struct.cpu_parts** %1, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %56, i64 %57
  %59 = icmp ne %struct.cpu_parts* %58, null
  br i1 %59, label %60, label %94

60:                                               ; preds = %55
  %61 = load i64, i64* %2, align 8
  %62 = load %struct.cpu_parts*, %struct.cpu_parts** %1, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %62, i64 %63
  %65 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %61, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %60
  %69 = load %struct.cpu_parts*, %struct.cpu_parts** %1, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %69, i64 %70
  %72 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, -1
  br i1 %74, label %75, label %90

75:                                               ; preds = %68, %60
  %76 = load i64, i64* %2, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_desc, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i64 %76, i64* %80, align 8
  %81 = load %struct.cpu_parts*, %struct.cpu_parts** %1, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %81, i64 %82
  %84 = getelementptr inbounds %struct.cpu_parts, %struct.cpu_parts* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_desc, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i8* %85, i8** %89, align 8
  br label %94

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  br label %55

94:                                               ; preds = %75, %55
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* @bootverbose, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97, %94
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_desc, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_desc, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %101, i8* %106, i8* %111)
  br label %113

113:                                              ; preds = %100, %97
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i64 @CPU_IMPL(i64) #1

declare dso_local i64 @nitems(%struct.TYPE_4__*) #1

declare dso_local i64 @CPU_PART(i64) #1

declare dso_local i32 @printf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
