; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_parse8601.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_parse8601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptime_data = type { %struct.tm, i32 }
%struct.tm = type { i64, i64, i64, i64, i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@TSPEC_HOUROFDAY = common dso_local global i32 0, align 4
@TSPEC_YEAR = common dso_local global i32 0, align 4
@TSPEC_MONTHOFYEAR = common dso_local global i32 0, align 4
@TSPEC_DAYOFMONTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptime_data*, i8*)* @parse8601 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse8601(%struct.ptime_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptime_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm, align 8
  store %struct.ptime_data* %0, %struct.ptime_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strtol(i8* %9, i8** %6, i32 10)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @INT_MAX, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 84
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %13, %2
  store i32 -1, i32* %3, align 4
  br label %197

28:                                               ; preds = %22, %17
  %29 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %30 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %29, i32 0, i32 0
  %31 = bitcast %struct.tm* %8 to i8*
  %32 = bitcast %struct.tm* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 48, i1 false)
  %33 = load i32, i32* @TSPEC_HOUROFDAY, align 4
  %34 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %35 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  switch i64 %40, label %89 [
    i64 8, label %41
    i64 6, label %49
    i64 4, label %68
    i64 2, label %80
    i64 0, label %88
  ]

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = sdiv i64 %42, 1000000
  %44 = sub nsw i64 %43, 19
  %45 = mul nsw i64 %44, 100
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = srem i64 %47, 1000000
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %28, %41
  %50 = load i32, i32* @TSPEC_YEAR, align 4
  %51 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %52 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = srem i64 %56, 100
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %57
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sdiv i64 %61, 10000
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %62
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %7, align 8
  %67 = srem i64 %66, 10000
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %28, %49
  %69 = load i32, i32* @TSPEC_MONTHOFYEAR, align 4
  %70 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %71 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i64, i64* %7, align 8
  %75 = sdiv i64 %74, 100
  %76 = sub nsw i64 %75, 1
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = srem i64 %78, 100
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %28, %68
  %81 = load i32, i32* @TSPEC_DAYOFMONTH, align 4
  %82 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %83 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %28, %80
  br label %90

89:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %197

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 70
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 12
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 1
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 31
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102, %98, %94, %90
  store i32 -1, i32* %3, align 4
  br label %197

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %192

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  store i8* %118, i8** %5, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = call i64 @strtol(i8* %119, i8** %6, i32 10)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @INT_MAX, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @isspace(i8 signext %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132, %123, %116
  store i32 -1, i32* %3, align 4
  br label %197

138:                                              ; preds = %132, %127
  %139 = load i8*, i8** %6, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  switch i64 %143, label %165 [
    i64 6, label %144
    i64 4, label %150
    i64 2, label %156
    i64 0, label %164
  ]

144:                                              ; preds = %138
  %145 = load i64, i64* %7, align 8
  %146 = srem i64 %145, 100
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i64 %146, i64* %147, align 8
  %148 = load i64, i64* %7, align 8
  %149 = sdiv i64 %148, 100
  store i64 %149, i64* %7, align 8
  br label %150

150:                                              ; preds = %138, %144
  %151 = load i64, i64* %7, align 8
  %152 = srem i64 %151, 100
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i64 %152, i64* %153, align 8
  %154 = load i64, i64* %7, align 8
  %155 = sdiv i64 %154, 100
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %138, %150
  %157 = load i32, i32* @TSPEC_HOUROFDAY, align 4
  %158 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %159 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %138, %156
  br label %166

165:                                              ; preds = %138
  store i32 -1, i32* %3, align 4
  br label %197

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %172, 60
  br i1 %173, label %190, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 59
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 23
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %182, %178, %174, %170, %166
  store i32 -1, i32* %3, align 4
  br label %197

191:                                              ; preds = %186
  br label %192

192:                                              ; preds = %191, %111
  %193 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %194 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %193, i32 0, i32 0
  %195 = bitcast %struct.tm* %194 to i8*
  %196 = bitcast %struct.tm* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 48, i1 false)
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %192, %190, %165, %137, %110, %89, %27
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
