; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_parseDWM.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_ptimes.c_parseDWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptime_data = type { %struct.tm, i32 }
%struct.tm = type { i64, i64, i32, i32, i32 }

@TSPEC_HOUROFDAY = common dso_local global i32 0, align 4
@TSPEC_DAYOFWEEK = common dso_local global i32 0, align 4
@TSPEC_DAYOFMONTH = common dso_local global i32 0, align 4
@TSPEC_LDAYOFMONTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptime_data*, i8*)* @parseDWM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseDWM(%struct.ptime_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptime_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca i32, align 4
  store %struct.ptime_data* %0, %struct.ptime_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %15 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %14, i32 0, i32 0
  %16 = bitcast %struct.tm* %12 to i8*
  %17 = bitcast %struct.tm* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @days_pmonth(i32 %19, i32 %21)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* @TSPEC_HOUROFDAY, align 4
  %24 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %25 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %195, %2
  store i8* null, i8** %9, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %176 [
    i32 68, label %30
    i32 87, label %56
    i32 77, label %126
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %201

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @TSPEC_HOUROFDAY, align 4
  %38 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %39 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strtol(i8* %44, i8** %10, i32 10)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i64, i64* %11, align 8
  %50 = icmp sgt i64 %49, 23
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %34
  store i32 -1, i32* %3, align 4
  br label %201

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  br label %177

56:                                               ; preds = %26
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %201

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @TSPEC_DAYOFWEEK, align 4
  %64 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %65 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strtol(i8* %70, i8** %10, i32 10)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = load i64, i64* %11, align 8
  %76 = icmp sgt i64 %75, 6
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %60
  store i32 -1, i32* %3, align 4
  br label %201

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  store i8* %79, i8** %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %78
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 6, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load i64, i64* %11, align 8
  %95 = add nsw i64 %94, 1
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  br label %106

100:                                              ; preds = %84
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %100, %89
  %107 = load i32, i32* %13, align 4
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %107
  store i32 %110, i32* %108, align 8
  %111 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  br label %124

124:                                              ; preds = %115, %106
  br label %125

125:                                              ; preds = %124, %78
  br label %177

126:                                              ; preds = %26
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 -1, i32* %3, align 4
  br label %201

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @TSPEC_DAYOFMONTH, align 4
  %134 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %135 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call signext i8 @tolower(i8 signext %141)
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 108
  br i1 %144, label %145, label %155

145:                                              ; preds = %130
  %146 = load i32, i32* @TSPEC_LDAYOFMONTH, align 4
  %147 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %148 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* %6, align 4
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %9, align 8
  br label %175

155:                                              ; preds = %130
  %156 = load i8*, i8** %5, align 8
  %157 = call i64 @strtol(i8* %156, i8** %10, i32 10)
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp slt i64 %158, 1
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load i64, i64* %11, align 8
  %162 = icmp sgt i64 %161, 31
  br i1 %162, label %163, label %164

163:                                              ; preds = %160, %155
  store i32 -1, i32* %3, align 4
  br label %201

164:                                              ; preds = %160
  %165 = load i64, i64* %11, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = icmp sgt i64 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 -1, i32* %3, align 4
  br label %201

170:                                              ; preds = %164
  %171 = load i8*, i8** %10, align 8
  store i8* %171, i8** %9, align 8
  %172 = load i64, i64* %11, align 8
  %173 = trunc i64 %172 to i32
  %174 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  br label %175

175:                                              ; preds = %170, %145
  br label %177

176:                                              ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %201

177:                                              ; preds = %175, %125, %52
  %178 = load i8*, i8** %9, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 -1, i32* %3, align 4
  br label %201

181:                                              ; preds = %177
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load i8*, i8** %9, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i64 @isspace(i8 signext %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186, %181
  br label %196

192:                                              ; preds = %186
  %193 = load i8*, i8** %9, align 8
  store i8* %193, i8** %5, align 8
  br label %194

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194
  br label %26

196:                                              ; preds = %191
  %197 = load %struct.ptime_data*, %struct.ptime_data** %4, align 8
  %198 = getelementptr inbounds %struct.ptime_data, %struct.ptime_data* %197, i32 0, i32 0
  %199 = bitcast %struct.tm* %198 to i8*
  %200 = bitcast %struct.tm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %196, %180, %176, %169, %163, %129, %77, %59, %51, %33
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @days_pmonth(i32, i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local signext i8 @tolower(i8 signext) #2

declare dso_local i64 @isspace(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
