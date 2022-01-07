; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptime_relparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_ptime_relparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptime_data = type { i32, i64, i32, %struct.tm, %struct.tm, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@PTM_PARSE_DWM = common dso_local global i32 0, align 4
@PTM_PARSE_MATCHDOM = common dso_local global i32 0, align 4
@TSPEC_DAYOFMONTH = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@dbg_at_times = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"\09-- dom fixed: %4d/%02d/%02d %02d:%02d (%02d)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" to: %4d/%02d/%02d %02d:%02d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptime_relparse(%struct.ptime_data* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptime_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm, align 4
  store %struct.ptime_data* %0, %struct.ptime_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %15 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %18 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %20 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %19, i32 0, i32 4
  %21 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %22 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %21, i32 0, i32 5
  %23 = call %struct.tm* @localtime(i64* %22)
  %24 = bitcast %struct.tm* %20 to i8*
  %25 = bitcast %struct.tm* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 24, i1 false)
  %26 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %27 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %26, i32 0, i32 3
  %28 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %29 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %28, i32 0, i32 4
  %30 = bitcast %struct.tm* %27 to i8*
  %31 = bitcast %struct.tm* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 24, i1 false)
  %32 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %33 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %36 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %39 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PTM_PARSE_DWM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %4
  %46 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @parseDWM(%struct.ptime_data* %46, i8* %47)
  store i32 %48, i32* %11, align 4
  br label %53

49:                                               ; preds = %4
  %50 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @parse8601(%struct.ptime_data* %50, i8* %51)
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %60 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %181

62:                                               ; preds = %53
  %63 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %64 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %68 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @days_pmonth(i32 %66, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PTM_PARSE_MATCHDOM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %166

76:                                               ; preds = %62
  %77 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %78 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TSPEC_DAYOFMONTH, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %166

83:                                               ; preds = %76
  %84 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %85 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %166

90:                                               ; preds = %83
  %91 = load i64, i64* @verbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = load i32, i32* @dbg_at_times, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %99 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %103 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %107 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %111 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %115 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105, i32 %109, i32 %113, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %96, %93, %90
  %121 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %122 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %121, i32 0, i32 3
  %123 = bitcast %struct.tm* %12 to i8*
  %124 = bitcast %struct.tm* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 24, i1 false)
  %125 = call i8* @mktime(%struct.tm* %12)
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %128 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %130 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %135 = call i32 @ptimeset_nxtime(%struct.ptime_data* %134)
  br label %136

136:                                              ; preds = %133, %120
  %137 = load i64, i64* @verbose, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %136
  %140 = load i32, i32* @dbg_at_times, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = load i32, i32* @stderr, align 4
  %144 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %145 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.tm, %struct.tm* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %149 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %153 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.tm, %struct.tm* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %157 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %161 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.tm, %struct.tm* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %151, i32 %155, i32 %159, i32 %163)
  br label %165

165:                                              ; preds = %142, %139, %136
  br label %166

166:                                              ; preds = %165, %83, %76, %62
  %167 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %168 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %167, i32 0, i32 3
  %169 = call i8* @mktime(%struct.tm* %168)
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %172 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %174 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, -1
  br i1 %176, label %177, label %180

177:                                              ; preds = %166
  %178 = load %struct.ptime_data*, %struct.ptime_data** %6, align 8
  %179 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %178, i32 0, i32 1
  store i64 -2, i64* %179, align 8
  store i32 -2, i32* %5, align 4
  br label %181

180:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %177, %56
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parseDWM(%struct.ptime_data*, i8*) #1

declare dso_local i32 @parse8601(%struct.ptime_data*, i8*) #1

declare dso_local i32 @days_pmonth(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i8* @mktime(%struct.tm*) #1

declare dso_local i32 @ptimeset_nxtime(%struct.ptime_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
