; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_createdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_createdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_year = type { i32, i32, %struct.cal_month*, %struct.cal_year*, i32, i32 }
%struct.cal_month = type { i32, i32, i32, %struct.cal_day*, %struct.cal_month*, %struct.cal_year* }
%struct.cal_day = type { i32, i32, i32, %struct.cal_day*, %struct.cal_year*, %struct.cal_month* }
%struct.tm = type { i32, i32, i32 }

@hyear = common dso_local global %struct.cal_year* null, align 8
@tm0 = common dso_local global %struct.tm zeroinitializer, align 4
@cumdaytab = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @createdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createdate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cal_year*, align 8
  %8 = alloca %struct.cal_year*, align 8
  %9 = alloca %struct.cal_month*, align 8
  %10 = alloca %struct.cal_month*, align 8
  %11 = alloca %struct.cal_day*, align 8
  %12 = alloca %struct.cal_day*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.tm, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.cal_year* null, %struct.cal_year** %8, align 8
  %16 = load %struct.cal_year*, %struct.cal_year** @hyear, align 8
  store %struct.cal_year* %16, %struct.cal_year** %7, align 8
  br label %17

17:                                               ; preds = %28, %3
  %18 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %19 = icmp ne %struct.cal_year* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %22 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1900
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  store %struct.cal_year* %29, %struct.cal_year** %8, align 8
  %30 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %31 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %30, i32 0, i32 3
  %32 = load %struct.cal_year*, %struct.cal_year** %31, align 8
  store %struct.cal_year* %32, %struct.cal_year** %7, align 8
  br label %17

33:                                               ; preds = %27, %17
  %34 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %35 = icmp eq %struct.cal_year* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = call i64 @calloc(i32 1, i32 32)
  %38 = inttoptr i64 %37 to %struct.cal_year*
  store %struct.cal_year* %38, %struct.cal_year** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1900
  %41 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %42 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @easter(i32 %43)
  %45 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %46 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @paskha(i32 %47)
  %49 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %50 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = bitcast %struct.tm* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.tm* @tm0 to i8*), i64 12, i1 false)
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = call i32 @mktime(%struct.tm* %14)
  store i32 %55, i32* %15, align 4
  %56 = call i32 @localtime_r(i32* %15, %struct.tm* %14)
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %60 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %62 = icmp ne %struct.cal_year* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %36
  %64 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %65 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %66 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %65, i32 0, i32 3
  store %struct.cal_year* %64, %struct.cal_year** %66, align 8
  br label %67

67:                                               ; preds = %63, %36
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %70 = icmp eq %struct.cal_year* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  store %struct.cal_year* %72, %struct.cal_year** @hyear, align 8
  br label %73

73:                                               ; preds = %71, %68
  store %struct.cal_month* null, %struct.cal_month** %10, align 8
  %74 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %75 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %74, i32 0, i32 2
  %76 = load %struct.cal_month*, %struct.cal_month** %75, align 8
  store %struct.cal_month* %76, %struct.cal_month** %9, align 8
  br label %77

77:                                               ; preds = %87, %73
  %78 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %79 = icmp ne %struct.cal_month* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %82 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %92

87:                                               ; preds = %80
  %88 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  store %struct.cal_month* %88, %struct.cal_month** %10, align 8
  %89 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %90 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %89, i32 0, i32 4
  %91 = load %struct.cal_month*, %struct.cal_month** %90, align 8
  store %struct.cal_month* %91, %struct.cal_month** %9, align 8
  br label %77

92:                                               ; preds = %86, %77
  %93 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %94 = icmp eq %struct.cal_month* %93, null
  br i1 %94, label %95, label %135

95:                                               ; preds = %92
  %96 = call i64 @calloc(i32 1, i32 40)
  %97 = inttoptr i64 %96 to %struct.cal_month*
  store %struct.cal_month* %97, %struct.cal_month** %9, align 8
  %98 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %99 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %100 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %99, i32 0, i32 5
  store %struct.cal_year* %98, %struct.cal_year** %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %103 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32**, i32*** @cumdaytab, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @isleap(i32 %105)
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %13, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 2
  %115 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %116 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %118 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %121 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = sub nsw i32 %123, 1
  %125 = srem i32 %124, 7
  %126 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %127 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.cal_month*, %struct.cal_month** %10, align 8
  %129 = icmp ne %struct.cal_month* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %95
  %131 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %132 = load %struct.cal_month*, %struct.cal_month** %10, align 8
  %133 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %132, i32 0, i32 4
  store %struct.cal_month* %131, %struct.cal_month** %133, align 8
  br label %134

134:                                              ; preds = %130, %95
  br label %135

135:                                              ; preds = %134, %92
  %136 = load %struct.cal_month*, %struct.cal_month** %10, align 8
  %137 = icmp eq %struct.cal_month* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %140 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %141 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %140, i32 0, i32 2
  store %struct.cal_month* %139, %struct.cal_month** %141, align 8
  br label %142

142:                                              ; preds = %138, %135
  store %struct.cal_day* null, %struct.cal_day** %12, align 8
  %143 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %144 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %143, i32 0, i32 3
  %145 = load %struct.cal_day*, %struct.cal_day** %144, align 8
  store %struct.cal_day* %145, %struct.cal_day** %11, align 8
  br label %146

146:                                              ; preds = %149, %142
  %147 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %148 = icmp ne %struct.cal_day* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  store %struct.cal_day* %150, %struct.cal_day** %12, align 8
  %151 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %152 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %151, i32 0, i32 3
  %153 = load %struct.cal_day*, %struct.cal_day** %152, align 8
  store %struct.cal_day* %153, %struct.cal_day** %11, align 8
  br label %146

154:                                              ; preds = %146
  %155 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %156 = icmp eq %struct.cal_day* %155, null
  br i1 %156, label %157, label %193

157:                                              ; preds = %154
  %158 = call i64 @calloc(i32 1, i32 40)
  %159 = inttoptr i64 %158 to %struct.cal_day*
  store %struct.cal_day* %159, %struct.cal_day** %11, align 8
  %160 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %161 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %162 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %161, i32 0, i32 5
  store %struct.cal_month* %160, %struct.cal_month** %162, align 8
  %163 = load %struct.cal_year*, %struct.cal_year** %7, align 8
  %164 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %165 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %164, i32 0, i32 4
  store %struct.cal_year* %163, %struct.cal_year** %165, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %168 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %170 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %171, %172
  %174 = sub nsw i32 %173, 1
  %175 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %176 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %178 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %179, %180
  %182 = sub nsw i32 %181, 1
  %183 = srem i32 %182, 7
  %184 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %185 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %187 = icmp ne %struct.cal_day* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %157
  %189 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %190 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %191 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %190, i32 0, i32 3
  store %struct.cal_day* %189, %struct.cal_day** %191, align 8
  br label %192

192:                                              ; preds = %188, %157
  br label %193

193:                                              ; preds = %192, %154
  %194 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %195 = icmp eq %struct.cal_day* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load %struct.cal_day*, %struct.cal_day** %11, align 8
  %198 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %199 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %198, i32 0, i32 3
  store %struct.cal_day* %197, %struct.cal_day** %199, align 8
  br label %200

200:                                              ; preds = %196, %193
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @easter(i32) #1

declare dso_local i32 @paskha(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
