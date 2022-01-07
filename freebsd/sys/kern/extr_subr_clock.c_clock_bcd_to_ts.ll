; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_bcd_to_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_bcd_to_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ct_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"clock_bcd_to_ts: bad BCD: [%04x-%02x-%02x %02x:%02x:%02x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %0, %struct.timespec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcd_clocktime*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clocktime, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcd_clocktime* %0, %struct.bcd_clocktime** %5, align 8
  store %struct.timespec* %1, %struct.timespec** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %12 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %16 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 255
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @validbcd(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @validbcd(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %28 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @validbcd(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %34 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @validbcd(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %40 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @validbcd(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %46 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @validbcd(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %52 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @validbcd(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %50, %44, %38, %32, %26, %22, %3
  %57 = load i64, i64* @ct_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %61 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %64 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %67 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %70 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %73 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %76 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %59, %56
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %4, align 4
  br label %143

81:                                               ; preds = %50
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @FROMBCD(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @FROMBCD(i32 %84)
  %86 = mul nsw i32 %85, 100
  %87 = add nsw i32 %83, %86
  %88 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %90 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @FROMBCD(i32 %91)
  %93 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %95 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @FROMBCD(i32 %96)
  %98 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %100 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @FROMBCD(i32 %101)
  %103 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 3
  store i32 %102, i32* %103, align 4
  %104 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %105 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @FROMBCD(i32 %106)
  %108 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %110 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FROMBCD(i32 %111)
  %113 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 5
  store i32 %112, i32* %113, align 4
  %114 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %115 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 7
  store i32 %116, i32* %117, align 4
  %118 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %119 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 6
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %81
  %125 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 12
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 3
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %132 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %8, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 12
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %135, %130
  br label %140

140:                                              ; preds = %139, %81
  %141 = load %struct.timespec*, %struct.timespec** %6, align 8
  %142 = call i32 @clock_ct_to_ts(%struct.clocktime* %8, %struct.timespec* %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %140, %79
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @validbcd(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FROMBCD(i32) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
