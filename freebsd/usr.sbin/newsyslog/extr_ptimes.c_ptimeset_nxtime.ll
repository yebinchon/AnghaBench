; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptimeset_nxtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptimeset_nxtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptime_data = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TSPEC_YEAR = common dso_local global i32 0, align 4
@TSPEC_MONTHOFYEAR = common dso_local global i32 0, align 4
@TSPEC_LDAYOFMONTH = common dso_local global i32 0, align 4
@TSPEC_DAYOFMONTH = common dso_local global i32 0, align 4
@TSPEC_DAYOFWEEK = common dso_local global i32 0, align 4
@TSPEC_HOUROFDAY = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptimeset_nxtime(%struct.ptime_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptime_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ptime_data, align 4
  store %struct.ptime_data* %0, %struct.ptime_data** %3, align 8
  %9 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %10 = icmp eq %struct.ptime_data* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %193

12:                                               ; preds = %1
  %13 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %14 = bitcast %struct.ptime_data* %8 to i8*
  %15 = bitcast %struct.ptime_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 24, i1 false)
  %16 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %17 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TSPEC_YEAR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %193

23:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %24 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %25 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TSPEC_MONTHOFYEAR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %23
  %31 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %32 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %38 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 29
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @days_pmonth(i32 1, i32 %49)
  %51 = icmp slt i32 %50, 29
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %42
  br label %63

58:                                               ; preds = %36, %30
  %59 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %57
  %64 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 -1, i32* %65, align 4
  %66 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %67 = call i32 @mktime(%struct.TYPE_3__* %66)
  %68 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  br label %171

69:                                               ; preds = %23
  %70 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %71 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TSPEC_LDAYOFMONTH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %69
  %77 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %78 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 11
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %84 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %89 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @days_pmonth(i32 %87, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %100

93:                                               ; preds = %76
  %94 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %95 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @days_pmonth(i32 0, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %82
  br label %170

101:                                              ; preds = %69
  %102 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %103 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TSPEC_DAYOFMONTH, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %101
  %109 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %110 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %114 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @days_pmonth(i32 %112, i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %119 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  %122 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %123 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %146, %108
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 11
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %135

132:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @days_pmonth(i32 %136, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %141 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %139, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %150

146:                                              ; preds = %135
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %4, align 4
  br label %126

150:                                              ; preds = %145
  br label %169

151:                                              ; preds = %101
  %152 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %153 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @TSPEC_DAYOFWEEK, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  store i32 7, i32* %4, align 4
  br label %168

159:                                              ; preds = %151
  %160 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %161 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TSPEC_HOUROFDAY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 1, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %159
  br label %168

168:                                              ; preds = %167, %158
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %100
  br label %171

171:                                              ; preds = %170, %63
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load i32, i32* @SECS_PER_HOUR, align 4
  %176 = mul nsw i32 %175, 24
  %177 = load i32, i32* %4, align 4
  %178 = mul nsw i32 %176, %177
  %179 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  %182 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 2
  %183 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %8, i32 0, i32 1
  %184 = call %struct.TYPE_3__* @localtime(i32* %183)
  %185 = bitcast %struct.TYPE_3__* %182 to i8*
  %186 = bitcast %struct.TYPE_3__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 16, i1 false)
  br label %187

187:                                              ; preds = %174, %171
  %188 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %189 = call i32 @ptime_adjust4dst(%struct.ptime_data* %8, %struct.ptime_data* %188)
  %190 = load %struct.ptime_data*, %struct.ptime_data** %3, align 8
  %191 = bitcast %struct.ptime_data* %190 to i8*
  %192 = bitcast %struct.ptime_data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 4 %192, i64 24, i1 false)
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %187, %22, %11
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @days_pmonth(i32, i32) #2

declare dso_local i32 @mktime(%struct.TYPE_3__*) #2

declare dso_local %struct.TYPE_3__* @localtime(i32*) #2

declare dso_local i32 @ptime_adjust4dst(%struct.ptime_data*, %struct.ptime_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
