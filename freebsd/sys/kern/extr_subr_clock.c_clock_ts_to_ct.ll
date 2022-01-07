; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_ts_to_ct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_ts_to_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SECDAY = common dso_local global i32 0, align 4
@recent_base_days = common dso_local global i32 0, align 4
@recent_base_year = common dso_local global i32 0, align 4
@POSIX_BASE_YEAR = common dso_local global i32 0, align 4
@ct_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ts_to_ct(%jd.%09ld) = [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"year %d isn't a 4 digit year\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"month %d not in 1-12\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"day %d not in 1-31\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"hour %d not in 0-23\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"minute %d not in 0-59\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"seconds %d not in 0-60\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_ts_to_ct(%struct.timespec* %0, %struct.clocktime* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.clocktime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.clocktime* %1, %struct.clocktime** %4, align 8
  %10 = load %struct.timespec*, %struct.timespec** %3, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SECDAY, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SECDAY, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @day_of_week(i32 %19)
  %21 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %22 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @recent_base_days, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @recent_base_year, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @recent_base_days, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @POSIX_BASE_YEAR, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %26
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @days_in_year(i32 %36)
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @days_in_year(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %50 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %63, %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @days_in_month(i32 %53, i32 %54)
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @days_in_month(i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %69 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %73 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, 3600
  %76 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %77 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = srem i32 %78, 3600
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sdiv i32 %80, 60
  %82 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %83 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = srem i32 %84, 60
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %88 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.timespec*, %struct.timespec** %3, align 8
  %90 = getelementptr inbounds %struct.timespec, %struct.timespec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %93 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i64, i64* @ct_debug, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %66
  %97 = load %struct.timespec*, %struct.timespec** %3, align 8
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.timespec*, %struct.timespec** %3, align 8
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %105 = call i32 @clock_print_ct(%struct.clocktime* %104, i32 9)
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %96, %66
  %108 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %109 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %114 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 10000
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %121 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @KASSERT(i32 %119, i8* %124)
  %126 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %127 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %128, 1
  br i1 %129, label %130, label %135

130:                                              ; preds = %117
  %131 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %132 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sle i32 %133, 12
  br label %135

135:                                              ; preds = %130, %117
  %136 = phi i1 [ false, %117 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %139 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @KASSERT(i32 %137, i8* %142)
  %144 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %145 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %146, 1
  br i1 %147, label %148, label %153

148:                                              ; preds = %135
  %149 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %150 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp sle i32 %151, 31
  br label %153

153:                                              ; preds = %148, %135
  %154 = phi i1 [ false, %135 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %157 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @KASSERT(i32 %155, i8* %160)
  %162 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %163 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %168 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp sle i32 %169, 23
  br label %171

171:                                              ; preds = %166, %153
  %172 = phi i1 [ false, %153 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  %174 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %175 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @KASSERT(i32 %173, i8* %178)
  %180 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %181 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %186 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = icmp sle i32 %187, 59
  br label %189

189:                                              ; preds = %184, %171
  %190 = phi i1 [ false, %171 ], [ %188, %184 ]
  %191 = zext i1 %190 to i32
  %192 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %193 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 @KASSERT(i32 %191, i8* %196)
  %198 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %199 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %189
  %203 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %204 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = icmp sle i32 %205, 60
  br label %207

207:                                              ; preds = %202, %189
  %208 = phi i1 [ false, %189 ], [ %206, %202 ]
  %209 = zext i1 %208 to i32
  %210 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %211 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @KASSERT(i32 %209, i8* %214)
  ret void
}

declare dso_local i32 @day_of_week(i32) #1

declare dso_local i32 @days_in_year(i32) #1

declare dso_local i32 @days_in_month(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @clock_print_ct(%struct.clocktime*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
