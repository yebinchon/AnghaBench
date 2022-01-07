; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_afex_collect_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_afex_collect_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.bxe_eth_stats }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.bxe_eth_q_stats }
%struct.bxe_eth_q_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bxe_eth_stats = type { i32, i32, i32 }
%struct.afex_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VICSTATST_UIF_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_afex_collect_stats(%struct.bxe_softc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afex_stats*, align 8
  %9 = alloca %struct.bxe_eth_stats*, align 8
  %10 = alloca %struct.bxe_eth_q_stats*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.afex_stats*
  store %struct.afex_stats* %12, %struct.afex_stats** %8, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 3
  store %struct.bxe_eth_stats* %14, %struct.bxe_eth_stats** %9, align 8
  %15 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %16 = call i32 @memset(%struct.afex_stats* %15, i32 0, i32 120)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %252, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %255

23:                                               ; preds = %17
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.bxe_eth_q_stats* %30, %struct.bxe_eth_q_stats** %10, align 8
  %31 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %32 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %31, i32 0, i32 29
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %35 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %34, i32 0, i32 33
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %38 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %37, i32 0, i32 28
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %41 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %40, i32 0, i32 32
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ADD_64(i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %45 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %44, i32 0, i32 27
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %48 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %47, i32 0, i32 31
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %51 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %50, i32 0, i32 26
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %54 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %53, i32 0, i32 30
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ADD_64(i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %58 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %57, i32 0, i32 25
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %61 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %60, i32 0, i32 29
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %64 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %63, i32 0, i32 24
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %67 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %66, i32 0, i32 28
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ADD_64(i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %71 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %70, i32 0, i32 23
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %74 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %73, i32 0, i32 27
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %77 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %76, i32 0, i32 22
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %80 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %79, i32 0, i32 26
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ADD_64(i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %84 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %83, i32 0, i32 21
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %87 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %86, i32 0, i32 25
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %90 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %89, i32 0, i32 20
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %93 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %92, i32 0, i32 24
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ADD_64(i32 %85, i32 %88, i32 %91, i32 %94)
  %96 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %97 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %96, i32 0, i32 19
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %100 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %99, i32 0, i32 23
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %103 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %102, i32 0, i32 18
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %106 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %105, i32 0, i32 22
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ADD_64(i32 %98, i32 %101, i32 %104, i32 %107)
  %109 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %110 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %113 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %112, i32 0, i32 21
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %116 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %119 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %118, i32 0, i32 20
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ADD_64(i32 %111, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %123 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %126 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %125, i32 0, i32 19
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %129 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %132 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %131, i32 0, i32 18
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ADD_64(i32 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %136 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %139 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %138, i32 0, i32 17
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %142 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %145 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %144, i32 0, i32 16
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ADD_64(i32 %137, i32 %140, i32 %143, i32 %146)
  %148 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %149 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %152 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %151, i32 0, i32 15
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %155 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %158 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ADD_64(i32 %150, i32 %153, i32 %156, i32 %159)
  %161 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %162 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %161, i32 0, i32 17
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %165 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %164, i32 0, i32 13
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %168 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %167, i32 0, i32 16
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %171 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %170, i32 0, i32 12
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ADD_64(i32 %163, i32 %166, i32 %169, i32 %172)
  %174 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %175 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %174, i32 0, i32 15
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %178 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %181 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %180, i32 0, i32 14
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %184 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ADD_64(i32 %176, i32 %179, i32 %182, i32 %185)
  %187 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %188 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %187, i32 0, i32 13
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %191 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %194 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %197 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ADD_64(i32 %189, i32 %192, i32 %195, i32 %198)
  %200 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %201 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %200, i32 0, i32 11
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %204 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %207 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %210 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ADD_64(i32 %202, i32 %205, i32 %208, i32 %211)
  %213 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %214 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %217 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %220 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %223 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ADD_64(i32 %215, i32 %218, i32 %221, i32 %224)
  %226 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %227 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %230 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %233 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %236 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ADD_64(i32 %228, i32 %231, i32 %234, i32 %237)
  %239 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %240 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %243 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %246 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.bxe_eth_q_stats*, %struct.bxe_eth_q_stats** %10, align 8
  %249 = getelementptr inbounds %struct.bxe_eth_q_stats, %struct.bxe_eth_q_stats* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ADD_64(i32 %241, i32 %244, i32 %247, i32 %250)
  br label %252

252:                                              ; preds = %23
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  br label %17

255:                                              ; preds = %17
  %256 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %257 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %296

261:                                              ; preds = %255
  %262 = load i64, i64* %6, align 8
  %263 = load i64, i64* @VICSTATST_UIF_INDEX, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %296

265:                                              ; preds = %261
  %266 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %267 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %270 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %9, align 8
  %273 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ADD_64(i32 %268, i32 0, i32 %271, i32 %274)
  %276 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %277 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %280 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %9, align 8
  %283 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ADD_64(i32 %278, i32 0, i32 %281, i32 %284)
  %286 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %287 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.afex_stats*, %struct.afex_stats** %8, align 8
  %290 = getelementptr inbounds %struct.afex_stats, %struct.afex_stats* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %9, align 8
  %293 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ADD_64(i32 %288, i32 0, i32 %291, i32 %294)
  br label %296

296:                                              ; preds = %265, %261, %255
  ret void
}

declare dso_local i32 @memset(%struct.afex_stats*, i32, i32) #1

declare dso_local i32 @ADD_64(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
