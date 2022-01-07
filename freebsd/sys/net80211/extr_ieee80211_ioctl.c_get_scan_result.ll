; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_get_scan_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_get_scan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_entry = type { i32*, i32*, i32*, i32*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scanreq = type { i32, %struct.ieee80211req_scan_result* }
%struct.ieee80211req_scan_result = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"len %u ssid %u ie %u\00", align 1
@IEEE80211_RATE_MAXSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_scan_entry*)* @get_scan_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_scan_result(i8* %0, %struct.ieee80211_scan_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_scan_entry*, align 8
  %5 = alloca %struct.scanreq*, align 8
  %6 = alloca %struct.ieee80211req_scan_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_scan_entry* %1, %struct.ieee80211_scan_entry** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.scanreq*
  store %struct.scanreq* %13, %struct.scanreq** %5, align 8
  %14 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %15 = call i32 @scan_space(%struct.ieee80211_scan_entry* %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.scanreq*, %struct.scanreq** %5, align 8
  %18 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %216

22:                                               ; preds = %2
  %23 = load %struct.scanreq*, %struct.scanreq** %5, align 8
  %24 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %23, i32 0, i32 1
  %25 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %24, align 8
  store %struct.ieee80211req_scan_result* %25, %struct.ieee80211req_scan_result** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 65535
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 65535
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %33, i8* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %47, i32 0, i32 1
  store i32 64, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %52, i32 0, i32 11
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %57, i32 0, i32 14
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %59, i32 0, i32 11
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @IEEE80211_ADDR_COPY(i32 %93, i32 %96)
  %98 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @IEEE80211_RATE_MAXSIZE, align 8
  %104 = call i32 @min(i32 %102, i64 %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @memcpy(i32* %107, i32* %111, i32 %112)
  %114 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %115 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* @IEEE80211_RATE_MAXSIZE, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %119, %121
  %123 = call i32 @min(i32 %118, i64 %122)
  store i32 %123, i32* %10, align 4
  %124 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @memcpy(i32* %129, i32* %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %136, %137
  %139 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %140 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %142 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %147 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %149 = bitcast %struct.ieee80211req_scan_result* %148 to i32*
  %150 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %151 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  store i32* %154, i32** %11, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %157 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %161 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @memcpy(i32* %155, i32* %159, i32 %162)
  %164 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %165 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %11, align 8
  %170 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %171 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %176 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %179 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %183 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @memcpy(i32* %177, i32* %181, i32 %184)
  %186 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %187 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %11, align 8
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %31
  %195 = load i32*, i32** %11, align 8
  %196 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %4, align 8
  %197 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @memcpy(i32* %195, i32* %199, i32 %200)
  br label %202

202:                                              ; preds = %194, %31
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.scanreq*, %struct.scanreq** %5, align 8
  %205 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %209 = bitcast %struct.ieee80211req_scan_result* %208 to i32*
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = bitcast i32* %212 to %struct.ieee80211req_scan_result*
  %214 = load %struct.scanreq*, %struct.scanreq** %5, align 8
  %215 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %214, i32 0, i32 1
  store %struct.ieee80211req_scan_result* %213, %struct.ieee80211req_scan_result** %215, align 8
  br label %216

216:                                              ; preds = %202, %21
  ret void
}

declare dso_local i32 @scan_space(%struct.ieee80211_scan_entry*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
