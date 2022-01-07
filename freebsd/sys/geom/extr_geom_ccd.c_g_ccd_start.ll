; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ccd_s* }
%struct.ccd_s = type { i64, i32, i32, i32, i64* }

@BIO_GETATTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CCDF_MIRROR = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_ccd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_ccd_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x %struct.bio*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccd_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ccd_s*, %struct.ccd_s** %17, align 8
  store %struct.ccd_s* %18, %struct.ccd_s** %9, align 8
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BIO_GETATTR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @g_io_deliver(%struct.bio* %25, i32 %26)
  br label %197

28:                                               ; preds = %1
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %33 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sdiv i64 %31, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %193, %28
  %43 = load i64, i64* %3, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %197

45:                                               ; preds = %42
  %46 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %47 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @ccdbuffer(%struct.bio** %46, %struct.ccd_s* %47, %struct.bio* %48, i64 %49, i64 %50, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.bio*, %struct.bio** %2, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %55
  %70 = load %struct.bio*, %struct.bio** %2, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.bio*, %struct.bio** %2, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.bio*, %struct.bio** %2, align 8
  %79 = load %struct.bio*, %struct.bio** %2, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @g_io_deliver(%struct.bio* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %69
  br label %197

84:                                               ; preds = %45
  %85 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %86 = load %struct.bio*, %struct.bio** %85, align 16
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %4, align 8
  %89 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %90 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CCDF_MIRROR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %177

95:                                               ; preds = %84
  %96 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %97 = load %struct.bio*, %struct.bio** %96, align 16
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @BIO_READ, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %104 = load %struct.bio*, %struct.bio** %103, align 16
  %105 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %106 = load %struct.bio*, %struct.bio** %105, align 16
  %107 = getelementptr inbounds %struct.bio, %struct.bio* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @g_io_request(%struct.bio* %104, i32 %108)
  %110 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 1
  %111 = load %struct.bio*, %struct.bio** %110, align 8
  %112 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 1
  %113 = load %struct.bio*, %struct.bio** %112, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @g_io_request(%struct.bio* %111, i32 %115)
  br label %176

117:                                              ; preds = %95
  %118 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %119 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  %121 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %122 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 16
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %128 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %127, i32 0, i32 4
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = sub nsw i64 %133, %134
  %136 = icmp slt i64 %126, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %117
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %140 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %139, i32 0, i32 4
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = add nsw i64 %145, %146
  %148 = icmp sgt i64 %138, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %137, %117
  %150 = load i32, i32* %10, align 4
  %151 = sub nsw i32 1, %150
  store i32 %151, i32* %10, align 4
  %152 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %153 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %137
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %4, align 8
  %157 = call i64 @btodb(i64 %156)
  %158 = add nsw i64 %155, %157
  %159 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %160 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %159, i32 0, i32 4
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %158, i64* %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 %166
  %168 = load %struct.bio*, %struct.bio** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 %170
  %172 = load %struct.bio*, %struct.bio** %171, align 8
  %173 = getelementptr inbounds %struct.bio, %struct.bio* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @g_io_request(%struct.bio* %168, i32 %174)
  br label %176

176:                                              ; preds = %154, %102
  br label %185

177:                                              ; preds = %84
  %178 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %179 = load %struct.bio*, %struct.bio** %178, align 16
  %180 = getelementptr inbounds [2 x %struct.bio*], [2 x %struct.bio*]* %5, i64 0, i64 0
  %181 = load %struct.bio*, %struct.bio** %180, align 16
  %182 = getelementptr inbounds %struct.bio, %struct.bio* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @g_io_request(%struct.bio* %179, i32 %183)
  br label %185

185:                                              ; preds = %177, %176
  %186 = load i64, i64* %4, align 8
  %187 = call i64 @btodb(i64 %186)
  %188 = load i64, i64* %7, align 8
  %189 = add nsw i64 %188, %187
  store i64 %189, i64* %7, align 8
  %190 = load i64, i64* %4, align 8
  %191 = load i64, i64* %6, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %6, align 8
  br label %193

193:                                              ; preds = %185
  %194 = load i64, i64* %4, align 8
  %195 = load i64, i64* %3, align 8
  %196 = sub nsw i64 %195, %194
  store i64 %196, i64* %3, align 8
  br label %42

197:                                              ; preds = %24, %83, %42
  ret void
}

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @ccdbuffer(%struct.bio**, %struct.ccd_s*, %struct.bio*, i64, i64, i64) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

declare dso_local i64 @btodb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
