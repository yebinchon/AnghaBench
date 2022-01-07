; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg_s = type { i32, i8**, double, i32, i64, i64*, i8*, i64, %struct.timeval, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"th_min %d th_max %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1::%d\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"sched=%-12s\09time=%d.%03d sec (%.0f nsec) enq %lu %lu deq\0A\09wfi=%.02f\09flow=%-16s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"done ac %d av %p\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"arg %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cfg_s, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca [40 x i8], align 16
  %10 = alloca %struct.timeval, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @bzero(%struct.cfg_s* %6, i32 88)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 1
  store i8** %14, i8*** %15, align 8
  %16 = call i32 @init(%struct.cfg_s* %6)
  %17 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %18 = call i32 @gettimeofday(%struct.timeval* %17, i32* null)
  %19 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, i32, ...) @D(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = call i32 @mainloop(%struct.cfg_s* %6)
  %25 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %26 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %27 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %28 = call i32 @timersub(%struct.timeval* %10, %struct.timeval* %26, %struct.timeval* %27)
  %29 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 1000000
  %33 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sitofp i32 %36 to double
  store double %37, double* %7, align 8
  %38 = load double, double* %7, align 8
  %39 = fmul double %38, 1.000000e+03
  store double %39, double* %7, align 8
  %40 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 2
  %41 = load double, double* %40, align 8
  %42 = load double, double* %7, align 8
  %43 = fdiv double %42, %41
  store double %43, double* %7, align 8
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %45 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %72, %2
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 5
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %55, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 4
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %63, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %48

75:                                               ; preds = %48
  %76 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 8
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 1000
  %85 = load double, double* %7, align 8
  %86 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 2
  %87 = load double, double* %86, align 8
  %88 = fptoui double %87 to i64
  %89 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 6
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %75
  %97 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %6, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  br label %101

99:                                               ; preds = %75
  %100 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i8* [ %98, %96 ], [ %100, %99 ]
  %103 = call i32 (i8*, i32, i32, ...) @D(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80, i32 %84, double %85, i64 %88, i64 %90, i64 %92, i8* %102)
  %104 = call i32 @dump(%struct.cfg_s* %6)
  %105 = load i32, i32* %4, align 4
  %106 = load i8**, i8*** %5, align 8
  %107 = call i32 (i32, i8*, i32, ...) @DX(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %105, i8** %106)
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %120, %101
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, i32, ...) @DX(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %113, i8* %118)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %108

123:                                              ; preds = %108
  ret i32 0
}

declare dso_local i32 @bzero(%struct.cfg_s*, i32) #1

declare dso_local i32 @init(%struct.cfg_s*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @D(i8*, i32, i32, ...) #1

declare dso_local i32 @mainloop(%struct.cfg_s*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dump(%struct.cfg_s*) #1

declare dso_local i32 @DX(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
