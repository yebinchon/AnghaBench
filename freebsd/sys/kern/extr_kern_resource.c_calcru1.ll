; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_calcru1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_calcru1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }
%struct.rusage_ext = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"calcru: negative runtime of %jd usec for pid %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"calcru: runtime went backwards from %ju usec to %ju usec for pid %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.rusage_ext*, %struct.timeval*, %struct.timeval*)* @calcru1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calcru1(%struct.proc* %0, %struct.rusage_ext* %1, %struct.timeval* %2, %struct.timeval* %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.rusage_ext*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.rusage_ext* %1, %struct.rusage_ext** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  %16 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %17 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %20 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %23 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %14, align 4
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %35 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cputick2usec(i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.proc*, %struct.proc** %5, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %51 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %41, %33
  %54 = load i32, i32* %15, align 4
  %55 = icmp sle i32 %54, undef
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %57, 67108864
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @__predict_true(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %12, align 4
  br label %84

75:                                               ; preds = %59
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @mul64_by_fraction(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @mul64_by_fraction(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %75, %64
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %87 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %93 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %98 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %103 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %108 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %100
  br label %149

111:                                              ; preds = %84
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 3
  %114 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %115 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 101, %119
  %121 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %122 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 100, %123
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %118, %111
  %127 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %128 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %10, align 4
  %130 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %131 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %12, align 4
  %133 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %134 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  br label %148

136:                                              ; preds = %118
  %137 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %138 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.proc*, %struct.proc** %5, align 8
  %142 = getelementptr inbounds %struct.proc, %struct.proc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.proc*, %struct.proc** %5, align 8
  %145 = getelementptr inbounds %struct.proc, %struct.proc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %136, %126
  br label %149

149:                                              ; preds = %148, %110
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %152 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %155 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.rusage_ext*, %struct.rusage_ext** %6, align 8
  %158 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sdiv i32 %159, 1000000
  %161 = load %struct.timeval*, %struct.timeval** %7, align 8
  %162 = getelementptr inbounds %struct.timeval, %struct.timeval* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = srem i32 %163, 1000000
  %165 = load %struct.timeval*, %struct.timeval** %7, align 8
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sdiv i32 %167, 1000000
  %169 = load %struct.timeval*, %struct.timeval** %8, align 8
  %170 = getelementptr inbounds %struct.timeval, %struct.timeval* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %12, align 4
  %172 = srem i32 %171, 1000000
  %173 = load %struct.timeval*, %struct.timeval** %8, align 8
  %174 = getelementptr inbounds %struct.timeval, %struct.timeval* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  ret void
}

declare dso_local i32 @cputick2usec(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @mul64_by_fraction(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
