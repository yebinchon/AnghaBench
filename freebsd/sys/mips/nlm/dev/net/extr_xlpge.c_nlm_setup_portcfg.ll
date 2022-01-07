; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_setup_portcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_setup_portcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpnae_softc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xlp_nae_ivars = type { %struct.xlp_block_ivars* }
%struct.xlp_block_ivars = type { %struct.xlp_port_ivars* }
%struct.xlp_port_ivars = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCLBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"[%d, %d] Error: free_desc_sizes %d != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpnae_softc*, %struct.xlp_nae_ivars*, i32, i32)* @nlm_setup_portcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_setup_portcfg(%struct.nlm_xlpnae_softc* %0, %struct.xlp_nae_ivars* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nlm_xlpnae_softc*, align 8
  %6 = alloca %struct.xlp_nae_ivars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xlp_block_ivars*, align 8
  %12 = alloca %struct.xlp_port_ivars*, align 8
  store %struct.nlm_xlpnae_softc* %0, %struct.nlm_xlpnae_softc** %5, align 8
  store %struct.xlp_nae_ivars* %1, %struct.xlp_nae_ivars** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.xlp_nae_ivars*, %struct.xlp_nae_ivars** %6, align 8
  %14 = getelementptr inbounds %struct.xlp_nae_ivars, %struct.xlp_nae_ivars* %13, i32 0, i32 0
  %15 = load %struct.xlp_block_ivars*, %struct.xlp_block_ivars** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xlp_block_ivars, %struct.xlp_block_ivars* %15, i64 %17
  store %struct.xlp_block_ivars* %18, %struct.xlp_block_ivars** %11, align 8
  %19 = load %struct.xlp_block_ivars*, %struct.xlp_block_ivars** %11, align 8
  %20 = getelementptr inbounds %struct.xlp_block_ivars, %struct.xlp_block_ivars* %19, i32 0, i32 0
  %21 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %21, i64 %24
  store %struct.xlp_port_ivars* %25, %struct.xlp_port_ivars** %12, align 8
  %26 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %27 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %26, i32 0, i32 38
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %30 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 39
  store i32 %28, i32* %35, align 4
  %36 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %37 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %36, i32 0, i32 37
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %40 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 38
  store i32 %38, i32* %45, align 4
  %46 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %47 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %46, i32 0, i32 36
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %50 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 37
  store i32 %48, i32* %55, align 4
  %56 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %57 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %56, i32 0, i32 35
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %60 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 36
  store i32 %58, i32* %65, align 4
  %66 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %67 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %66, i32 0, i32 34
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %70 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 35
  store i32 %68, i32* %75, align 4
  %76 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %77 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %76, i32 0, i32 33
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %80 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 34
  store i32 %78, i32* %85, align 4
  %86 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %87 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %86, i32 0, i32 32
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %90 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 33
  store i32 %88, i32* %95, align 4
  %96 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %97 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %96, i32 0, i32 31
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %100 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 32
  store i32 %98, i32* %105, align 4
  %106 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %107 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MCLBYTES, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %115 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MCLBYTES, align 8
  %118 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113, i64 %116, i64 %117)
  br label %470

119:                                              ; preds = %4
  %120 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %121 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %125 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %142, %119
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %134 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  %139 = shl i32 1, %138
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %131

145:                                              ; preds = %131
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %148 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i32 %146, i32* %153, align 4
  %154 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %155 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %154, i32 0, i32 30
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %158 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %157, i32 0, i32 2
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 31
  store i32 %156, i32* %163, align 4
  %164 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %165 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %164, i32 0, i32 29
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %168 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 30
  store i32 %166, i32* %173, align 4
  %174 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %175 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %174, i32 0, i32 28
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %178 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 29
  store i32 %176, i32* %183, align 4
  %184 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %185 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %184, i32 0, i32 27
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %188 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %187, i32 0, i32 2
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 28
  store i32 %186, i32* %193, align 4
  %194 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %195 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %194, i32 0, i32 26
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %198 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %197, i32 0, i32 2
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 27
  store i32 %196, i32* %203, align 4
  %204 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %205 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %204, i32 0, i32 25
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %208 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %207, i32 0, i32 2
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 26
  store i32 %206, i32* %213, align 4
  %214 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %215 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %214, i32 0, i32 24
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %218 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %217, i32 0, i32 2
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 25
  store i32 %216, i32* %223, align 4
  %224 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %225 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %224, i32 0, i32 23
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %228 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %227, i32 0, i32 2
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 24
  store i32 %226, i32* %233, align 4
  %234 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %235 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %234, i32 0, i32 22
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %238 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %237, i32 0, i32 2
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 23
  store i32 %236, i32* %243, align 4
  %244 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %245 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %244, i32 0, i32 21
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %248 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %247, i32 0, i32 2
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 22
  store i32 %246, i32* %253, align 4
  %254 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %255 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %254, i32 0, i32 20
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %258 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %257, i32 0, i32 2
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 21
  store i32 %256, i32* %263, align 4
  %264 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %265 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %264, i32 0, i32 19
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %268 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %267, i32 0, i32 2
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 20
  store i32 %266, i32* %273, align 4
  %274 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %275 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %274, i32 0, i32 18
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %278 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %277, i32 0, i32 2
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 19
  store i32 %276, i32* %283, align 4
  %284 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %285 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %284, i32 0, i32 17
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %288 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %287, i32 0, i32 2
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 18
  store i32 %286, i32* %293, align 4
  %294 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %295 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %294, i32 0, i32 16
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %298 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %297, i32 0, i32 2
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 17
  store i32 %296, i32* %303, align 4
  %304 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %305 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %304, i32 0, i32 15
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %308 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %307, i32 0, i32 2
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 16
  store i32 %306, i32* %313, align 4
  %314 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %315 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %314, i32 0, i32 14
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %318 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %317, i32 0, i32 2
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 15
  store i32 %316, i32* %323, align 4
  %324 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %325 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %324, i32 0, i32 13
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %328 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %327, i32 0, i32 2
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 14
  store i32 %326, i32* %333, align 4
  %334 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %335 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %338 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %337, i32 0, i32 2
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 13
  store i32 %336, i32* %343, align 4
  %344 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %345 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %344, i32 0, i32 11
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %348 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %347, i32 0, i32 2
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 12
  store i32 %346, i32* %353, align 4
  %354 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %355 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %354, i32 0, i32 10
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %358 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %357, i32 0, i32 2
  %359 = load %struct.TYPE_2__*, %struct.TYPE_2__** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 11
  store i32 %356, i32* %363, align 4
  %364 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %365 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %364, i32 0, i32 9
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %368 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %367, i32 0, i32 2
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 10
  store i32 %366, i32* %373, align 4
  %374 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %375 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %374, i32 0, i32 8
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %378 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %377, i32 0, i32 2
  %379 = load %struct.TYPE_2__*, %struct.TYPE_2__** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 9
  store i32 %376, i32* %383, align 4
  %384 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %385 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %388 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %387, i32 0, i32 2
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 8
  store i32 %386, i32* %393, align 4
  %394 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %395 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %398 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %397, i32 0, i32 2
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = load i32, i32* %8, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 7
  store i32 %396, i32* %403, align 4
  %404 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %405 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %408 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %407, i32 0, i32 2
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 6
  store i32 %406, i32* %413, align 4
  %414 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %415 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %418 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %417, i32 0, i32 2
  %419 = load %struct.TYPE_2__*, %struct.TYPE_2__** %418, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 5
  store i32 %416, i32* %423, align 4
  %424 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %425 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %428 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %427, i32 0, i32 2
  %429 = load %struct.TYPE_2__*, %struct.TYPE_2__** %428, align 8
  %430 = load i32, i32* %8, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %432, i32 0, i32 4
  store i32 %426, i32* %433, align 4
  %434 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %435 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %438 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %437, i32 0, i32 2
  %439 = load %struct.TYPE_2__*, %struct.TYPE_2__** %438, align 8
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 3
  store i32 %436, i32* %443, align 4
  %444 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %12, align 8
  %445 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %448 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %447, i32 0, i32 2
  %449 = load %struct.TYPE_2__*, %struct.TYPE_2__** %448, align 8
  %450 = load i32, i32* %8, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 2
  store i32 %446, i32* %453, align 4
  %454 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %455 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %454, i32 0, i32 2
  %456 = load %struct.TYPE_2__*, %struct.TYPE_2__** %455, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %463 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 8
  %465 = add nsw i32 %464, %461
  store i32 %465, i32* %463, align 8
  %466 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %5, align 8
  %467 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %467, align 4
  br label %470

470:                                              ; preds = %145, %111
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
