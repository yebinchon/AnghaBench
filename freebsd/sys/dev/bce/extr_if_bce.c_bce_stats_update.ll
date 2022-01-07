; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.statistics_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BCE_EXTREME_MISC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_stats_update(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.statistics_block*, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_EXTREME_MISC, align 4
  %5 = call i32 @DBENTER(i32 %4)
  %6 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %6, i32 0, i32 57
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %9, i32 0, i32 56
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %13 = call i32 @bus_dmamap_sync(i32 %8, i32 %11, i32 %12)
  %14 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %14, i32 0, i32 55
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.statistics_block*
  store %struct.statistics_block* %17, %struct.statistics_block** %3, align 8
  %18 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %19 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %18, i32 0, i32 63
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 32
  %23 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %24 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %23, i32 0, i32 62
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = add nsw i32 %22, %26
  %28 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %31 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %30, i32 0, i32 61
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 32
  %35 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %36 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %35, i32 0, i32 60
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %34, %38
  %40 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %43 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %42, i32 0, i32 59
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 32
  %47 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %48 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %47, i32 0, i32 58
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = add nsw i32 %46, %50
  %52 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %55 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %54, i32 0, i32 57
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 32
  %59 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %60 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %59, i32 0, i32 56
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = add nsw i32 %58, %62
  %64 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %67 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %66, i32 0, i32 55
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 %69, 32
  %71 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %72 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %71, i32 0, i32 54
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = add nsw i32 %70, %74
  %76 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %77 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %79 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %78, i32 0, i32 53
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 32
  %83 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %84 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %83, i32 0, i32 52
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = add nsw i32 %82, %86
  %88 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %89 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %91 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %90, i32 0, i32 51
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 %93, 32
  %95 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %96 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %95, i32 0, i32 50
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = add nsw i32 %94, %98
  %100 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %101 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %103 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %102, i32 0, i32 49
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 %105, 32
  %107 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %108 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %107, i32 0, i32 48
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = add nsw i32 %106, %110
  %112 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %113 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %115 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %114, i32 0, i32 47
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = shl i32 %117, 32
  %119 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %120 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %119, i32 0, i32 46
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = add nsw i32 %118, %122
  %124 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %125 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %127 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %126, i32 0, i32 45
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = shl i32 %129, 32
  %131 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %132 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %131, i32 0, i32 44
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = add nsw i32 %130, %134
  %136 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %137 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %136, i32 0, i32 9
  store i32 %135, i32* %137, align 4
  %138 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %139 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %138, i32 0, i32 43
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %142 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %141, i32 0, i32 54
  store i32 %140, i32* %142, align 8
  %143 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %144 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %143, i32 0, i32 42
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %147 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %146, i32 0, i32 53
  store i32 %145, i32* %147, align 4
  %148 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %149 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %148, i32 0, i32 41
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %152 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %151, i32 0, i32 52
  store i32 %150, i32* %152, align 8
  %153 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %154 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %153, i32 0, i32 40
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %157 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %156, i32 0, i32 51
  store i32 %155, i32* %157, align 4
  %158 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %159 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %158, i32 0, i32 39
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %162 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %161, i32 0, i32 50
  store i32 %160, i32* %162, align 8
  %163 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %164 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %163, i32 0, i32 38
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %167 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %166, i32 0, i32 49
  store i32 %165, i32* %167, align 4
  %168 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %169 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %168, i32 0, i32 37
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %172 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %171, i32 0, i32 48
  store i32 %170, i32* %172, align 8
  %173 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %174 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %173, i32 0, i32 36
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %177 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %176, i32 0, i32 47
  store i32 %175, i32* %177, align 4
  %178 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %179 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %178, i32 0, i32 35
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %181, i32 0, i32 46
  store i32 %180, i32* %182, align 8
  %183 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %184 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %183, i32 0, i32 34
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %187 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %186, i32 0, i32 45
  store i32 %185, i32* %187, align 4
  %188 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %189 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %188, i32 0, i32 33
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %192 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %191, i32 0, i32 44
  store i32 %190, i32* %192, align 8
  %193 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %194 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %193, i32 0, i32 32
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %197 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %196, i32 0, i32 43
  store i32 %195, i32* %197, align 4
  %198 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %199 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %198, i32 0, i32 31
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %202 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %201, i32 0, i32 42
  store i32 %200, i32* %202, align 8
  %203 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %204 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %203, i32 0, i32 30
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %207 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %206, i32 0, i32 41
  store i32 %205, i32* %207, align 4
  %208 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %209 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %208, i32 0, i32 29
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %212 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %211, i32 0, i32 40
  store i32 %210, i32* %212, align 8
  %213 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %214 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %213, i32 0, i32 28
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %217 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %216, i32 0, i32 39
  store i32 %215, i32* %217, align 4
  %218 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %219 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %218, i32 0, i32 27
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %222 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %221, i32 0, i32 38
  store i32 %220, i32* %222, align 8
  %223 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %224 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %223, i32 0, i32 26
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %227 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %226, i32 0, i32 37
  store i32 %225, i32* %227, align 4
  %228 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %229 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %228, i32 0, i32 25
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %232 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %231, i32 0, i32 36
  store i32 %230, i32* %232, align 8
  %233 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %234 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %233, i32 0, i32 24
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %237 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %236, i32 0, i32 35
  store i32 %235, i32* %237, align 4
  %238 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %239 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %238, i32 0, i32 23
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %242 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %241, i32 0, i32 34
  store i32 %240, i32* %242, align 8
  %243 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %244 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %243, i32 0, i32 22
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %247 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %246, i32 0, i32 33
  store i32 %245, i32* %247, align 4
  %248 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %249 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %248, i32 0, i32 21
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %252 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %251, i32 0, i32 32
  store i32 %250, i32* %252, align 8
  %253 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %254 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %253, i32 0, i32 20
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %257 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %256, i32 0, i32 31
  store i32 %255, i32* %257, align 4
  %258 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %259 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %258, i32 0, i32 19
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %262 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %261, i32 0, i32 30
  store i32 %260, i32* %262, align 8
  %263 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %264 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %263, i32 0, i32 18
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %267 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %266, i32 0, i32 29
  store i32 %265, i32* %267, align 4
  %268 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %269 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %268, i32 0, i32 17
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %272 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %271, i32 0, i32 28
  store i32 %270, i32* %272, align 8
  %273 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %274 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %273, i32 0, i32 16
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %277 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %276, i32 0, i32 27
  store i32 %275, i32* %277, align 4
  %278 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %279 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %278, i32 0, i32 15
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %282 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %281, i32 0, i32 26
  store i32 %280, i32* %282, align 8
  %283 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %284 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %283, i32 0, i32 14
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %287 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %286, i32 0, i32 25
  store i32 %285, i32* %287, align 4
  %288 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %289 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %288, i32 0, i32 13
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %292 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %291, i32 0, i32 24
  store i32 %290, i32* %292, align 8
  %293 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %294 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %293, i32 0, i32 12
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %297 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %296, i32 0, i32 23
  store i32 %295, i32* %297, align 4
  %298 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %299 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %298, i32 0, i32 11
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %302 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %301, i32 0, i32 22
  store i32 %300, i32* %302, align 8
  %303 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %304 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %307 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %306, i32 0, i32 21
  store i32 %305, i32* %307, align 4
  %308 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %309 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %312 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %311, i32 0, i32 20
  store i32 %310, i32* %312, align 8
  %313 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %314 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %317 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %316, i32 0, i32 19
  store i32 %315, i32* %317, align 4
  %318 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %319 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %322 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %321, i32 0, i32 18
  store i32 %320, i32* %322, align 8
  %323 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %324 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %327 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %326, i32 0, i32 17
  store i32 %325, i32* %327, align 4
  %328 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %329 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %332 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %331, i32 0, i32 16
  store i32 %330, i32* %332, align 8
  %333 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %334 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %337 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %336, i32 0, i32 15
  store i32 %335, i32* %337, align 4
  %338 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %339 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %342 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %341, i32 0, i32 14
  store i32 %340, i32* %342, align 8
  %343 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %344 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %347 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %346, i32 0, i32 13
  store i32 %345, i32* %347, align 4
  %348 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %349 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %352 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %351, i32 0, i32 12
  store i32 %350, i32* %352, align 8
  %353 = load %struct.statistics_block*, %struct.statistics_block** %3, align 8
  %354 = getelementptr inbounds %struct.statistics_block, %struct.statistics_block* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %357 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %356, i32 0, i32 11
  store i32 %355, i32* %357, align 4
  %358 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %359 = call i32 @REG_RD_IND(%struct.bce_softc* %358, i32 1179780)
  %360 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %361 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %360, i32 0, i32 10
  store i32 %359, i32* %361, align 8
  %362 = load i32, i32* @BCE_EXTREME_MISC, align 4
  %363 = call i32 @DBEXIT(i32 %362)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @REG_RD_IND(%struct.bce_softc*, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
