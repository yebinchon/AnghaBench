; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_timetotimespec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_timetotimespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timestamp = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.timespec = type { i64, i64 }
%union.anon = type { i32 }

@mon_lens = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timestamp*, %struct.timespec*)* @udf_timetotimespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_timetotimespec(%struct.timestamp* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.timestamp*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.anon, align 4
  store %struct.timestamp* %0, %struct.timestamp** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %11 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %12 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16toh(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 1970
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %19 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %24 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 12
  br i1 %26, label %27, label %32

27:                                               ; preds = %22, %17, %2
  %28 = load %struct.timespec*, %struct.timespec** %4, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.timespec*, %struct.timespec** %4, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %210

32:                                               ; preds = %22
  %33 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %34 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.timespec*, %struct.timespec** %4, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %39 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 60
  %42 = sext i32 %41 to i64
  %43 = load %struct.timespec*, %struct.timespec** %4, align 8
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %48 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 3600
  %51 = sext i32 %50 to i64
  %52 = load %struct.timespec*, %struct.timespec** %4, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %57 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 %59, 3600
  %61 = mul nsw i32 %60, 24
  %62 = sext i32 %61 to i64
  %63 = load %struct.timespec*, %struct.timespec** %4, align 8
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @udf_isaleapyear(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32**, i32*** @mon_lens, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %75 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 3600
  %82 = mul nsw i32 %81, 24
  %83 = sext i32 %82 to i64
  %84 = load %struct.timespec*, %struct.timespec** %4, align 8
  %85 = getelementptr inbounds %struct.timespec, %struct.timespec* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  store i32 1970, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 2009
  br i1 %89, label %90, label %97

90:                                               ; preds = %32
  %91 = load %struct.timespec*, %struct.timespec** %4, align 8
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1262304000
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 40
  store i32 %96, i32* %9, align 4
  br label %130

97:                                               ; preds = %32
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 1999
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.timespec*, %struct.timespec** %4, align 8
  %102 = getelementptr inbounds %struct.timespec, %struct.timespec* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 946684800
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 30
  store i32 %106, i32* %9, align 4
  br label %129

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %108, 1989
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.timespec*, %struct.timespec** %4, align 8
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 631152000
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 20
  store i32 %116, i32* %9, align 4
  br label %128

117:                                              ; preds = %107
  %118 = load i32, i32* %8, align 4
  %119 = icmp sgt i32 %118, 1979
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.timespec*, %struct.timespec** %4, align 8
  %122 = getelementptr inbounds %struct.timespec, %struct.timespec* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 315532800
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 10
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %120, %117
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128, %100
  br label %130

130:                                              ; preds = %129, %90
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %131, %132
  %134 = mul nsw i32 %133, 365
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %145, %130
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @udf_isaleapyear(i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %136

148:                                              ; preds = %136
  %149 = load i32, i32* %7, align 4
  %150 = mul nsw i32 %149, 3600
  %151 = mul nsw i32 %150, 24
  %152 = sext i32 %151 to i64
  %153 = load %struct.timespec*, %struct.timespec** %4, align 8
  %154 = getelementptr inbounds %struct.timespec, %struct.timespec* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, %152
  store i64 %156, i64* %154, align 8
  %157 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %158 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 10000
  %161 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %162 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 100
  %165 = add nsw i32 %160, %164
  %166 = sext i32 %165 to i64
  %167 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %168 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = load %struct.timespec*, %struct.timespec** %4, align 8
  %172 = getelementptr inbounds %struct.timespec, %struct.timespec* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %174 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @le16toh(i32 %175)
  %177 = bitcast %union.anon* %10 to i32*
  store i32 %176, i32* %177, align 4
  %178 = bitcast %union.anon* %10 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 4095
  store i32 %180, i32* %178, align 4
  %181 = bitcast %union.anon* %10 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 2048
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %148
  %186 = bitcast %union.anon* %10 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, 61440
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %185, %148
  %190 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  %191 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @le16toh(i32 %192)
  %194 = and i32 %193, 4096
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %189
  %197 = bitcast %union.anon* %10 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, -2047
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = bitcast %union.anon* %10 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %202, 60
  %204 = sext i32 %203 to i64
  %205 = load %struct.timespec*, %struct.timespec** %4, align 8
  %206 = getelementptr inbounds %struct.timespec, %struct.timespec* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %200, %196, %189
  br label %210

210:                                              ; preds = %209, %27
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @udf_isaleapyear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
