; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_get_vpd_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_get_vpd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.vpd_params = type { i32*, i32*, i8**, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.t3_vpd = type { i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }

@VPD_BASE = common dso_local global i32 0, align 4
@SERNUM_LEN = common dso_local global i32 0, align 4
@ECNUM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.vpd_params*)* @get_vpd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vpd_params(%struct.TYPE_7__* %0, %struct.vpd_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.vpd_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.t3_vpd, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.vpd_params* %1, %struct.vpd_params** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = load i32, i32* @VPD_BASE, align 4
  %12 = bitcast %struct.t3_vpd* %9 to i32*
  %13 = call i32 @t3_seeprom_read(%struct.TYPE_7__* %10, i32 %11, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %217

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 130
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VPD_BASE, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %47, %25
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 88
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = bitcast %struct.t3_vpd* %9 to i8**
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = bitcast i8** %39 to i32*
  %41 = call i32 @t3_seeprom_read(%struct.TYPE_7__* %32, i32 %35, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %217

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %6, align 4
  br label %27

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 14
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @simple_strtoul(i32 %52, i32* null, i32 10)
  %54 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %55 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @simple_strtoul(i32 %57, i32* null, i32 10)
  %59 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %60 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @simple_strtoul(i32 %62, i32* null, i32 10)
  %64 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %65 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @simple_strtoul(i32 %67, i32* null, i32 10)
  %69 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %70 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @simple_strtoul(i32 %72, i32* null, i32 10)
  %74 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %75 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %77 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SERNUM_LEN, align 4
  %82 = call i32 @memcpy(i32 %78, i32 %80, i32 %81)
  %83 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %84 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ECNUM_LEN, align 4
  %89 = call i32 @memcpy(i32 %85, i32 %87, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %50
  %96 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = call i64 @uses_xaui(%struct.TYPE_7__* %102)
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 2
  %107 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %108 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = call i64 @uses_xaui(%struct.TYPE_7__* %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 6, i32 2
  %116 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %117 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  br label %183

120:                                              ; preds = %95, %50
  %121 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 7
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @hex2int(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %130 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %128, i32* %132, align 4
  %133 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @hex2int(i32 %136)
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %142 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %140, i32* %144, align 4
  %145 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hex2int(i32 %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %154 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32 %152, i32* %156, align 4
  %157 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @hex2int(i32 %160)
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %166 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  store i32 %164, i32* %168, align 4
  %169 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @simple_strtoul(i32 %170, i32* null, i32 16)
  %172 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %173 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %172, i32 0, i32 2
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  store i8* %171, i8** %175, align 8
  %176 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @simple_strtoul(i32 %177, i32* null, i32 16)
  %179 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %180 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %179, i32 0, i32 2
  %181 = load i8**, i8*** %180, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 1
  store i8* %178, i8** %182, align 8
  br label %183

183:                                              ; preds = %120, %101
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %213, %183
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 6
  br i1 %186, label %187, label %216

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = mul nsw i32 2, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @hex2int(i32 %194)
  %196 = mul nsw i32 %195, 16
  %197 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = mul nsw i32 2, %199
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %198, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @hex2int(i32 %204)
  %206 = add nsw i32 %196, %205
  %207 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %208 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %206, i32* %212, align 4
  br label %213

213:                                              ; preds = %187
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %184

216:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %44, %16
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @t3_seeprom_read(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i8* @simple_strtoul(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @uses_xaui(%struct.TYPE_7__*) #1

declare dso_local i32 @hex2int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
