; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_calculate_iaq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_calculate_iaq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intrs_and_queues = type { i32, i32, i32, i64, i32, i64, i32, i32, i32, i64, i64, i64, i64 }

@t4_num_vis = common dso_local global i32 0, align 4
@t4_ntxq = common dso_local global i32 0, align 4
@t4_ntxq_vi = common dso_local global i64 0, align 8
@t4_nrxq = common dso_local global i32 0, align 4
@t4_nrxq_vi = common dso_local global i64 0, align 8
@INTR_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"virtual interfaces per port reduced to %d from %d.  nrxq=%u, nofldrxq=%u, nrxq_vi=%u nofldrxq_vi=%u, nnmrxq_vi=%u.  itype %d, navail %u, nirq %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"extra virtual interfaces disabled.  nrxq=%u, nofldrxq=%u, nrxq_vi=%u nofldrxq_vi=%u, nnmrxq_vi=%u.  itype %d, navail %u, nirq %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [131 x i8] c"running with reduced number of rx queues because of shortage of interrupts.  nrxq=%u, nofldrxq=%u.  itype %d, navail %u, nirq %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"running with minimal number of queues.  itype %d, navail %u.\0A\00", align 1
@t4_nnmrxq_vi = common dso_local global i64 0, align 8
@t4_nnmtxq_vi = common dso_local global i64 0, align 8
@t4_nofldrxq = common dso_local global i32 0, align 4
@t4_nofldrxq_vi = common dso_local global i64 0, align 8
@t4_nofldtxq = common dso_local global i32 0, align 4
@t4_nofldtxq_vi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.intrs_and_queues*, i32, i32)* @calculate_iaq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_iaq(%struct.adapter* %0, %struct.intrs_and_queues* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.intrs_and_queues*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.intrs_and_queues* %1, %struct.intrs_and_queues** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %24 = call i32 @bzero(%struct.intrs_and_queues* %23, i32 88)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %27 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @t4_num_vis, align 4
  %29 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %30 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @t4_ntxq, align 4
  %32 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %33 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @t4_ntxq_vi, align 8
  %35 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %36 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @t4_nrxq, align 4
  %38 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %39 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* @t4_nrxq_vi, align 8
  %41 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %42 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @update_nirq(%struct.intrs_and_queues* %43, i32 %44)
  %46 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %47 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @INTR_MSI, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %57 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @powerof2(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %51
  br label %270

62:                                               ; preds = %55, %4
  br label %63

63:                                               ; preds = %120, %62
  %64 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %65 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %121

68:                                               ; preds = %63
  %69 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %70 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @update_nirq(%struct.intrs_and_queues* %73, i32 %74)
  %76 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %77 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @INTR_MSI, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %87 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @powerof2(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %85, %81
  %92 = load %struct.adapter*, %struct.adapter** %5, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %96 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @t4_num_vis, align 4
  %99 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %100 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %103 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %106 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %109 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %112 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %117 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %101, i32 %104, i64 %107, i64 %110, i64 %113, i32 %114, i32 %115, i32 %118)
  br label %270

120:                                              ; preds = %85, %68
  br label %63

121:                                              ; preds = %63
  %122 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %123 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = call i32 @MPASS(i32 %126)
  %128 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %129 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  %130 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %131 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %133 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %132, i32 0, i32 10
  store i64 0, i64* %133, align 8
  %134 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %135 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %134, i32 0, i32 12
  store i64 0, i64* %135, align 8
  %136 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %137 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %136, i32 0, i32 9
  store i64 0, i64* %137, align 8
  %138 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %139 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %138, i32 0, i32 11
  store i64 0, i64* %139, align 8
  %140 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %141 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @t4_num_vis, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %121
  %146 = load %struct.adapter*, %struct.adapter** %5, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %150 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %153 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %156 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %159 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %158, i32 0, i32 10
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %162 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %161, i32 0, i32 9
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %167 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %154, i64 %157, i64 %160, i64 %163, i32 %164, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %145, %121
  br label %171

171:                                              ; preds = %239, %170
  %172 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %173 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %190

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %182, %176
  %178 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %179 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %177
  %183 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %184 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @powerof2(i32 %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br i1 %188, label %177, label %189

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %171
  %191 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %192 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %197 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = ashr i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %190
  %201 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %202 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %9, align 4
  %204 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @update_nirq(%struct.intrs_and_queues* %204, i32 %205)
  %207 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %208 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %238

212:                                              ; preds = %200
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @INTR_MSI, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  %217 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %218 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @powerof2(i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %216, %212
  %223 = load %struct.adapter*, %struct.adapter** %5, align 8
  %224 = getelementptr inbounds %struct.adapter, %struct.adapter* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %227 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %230 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %235 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %225, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.2, i64 0, i64 0), i32 %228, i32 %231, i32 %232, i32 %233, i32 %236)
  br label %270

238:                                              ; preds = %216, %200
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %242 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %240, %243
  br i1 %244, label %171, label %245

245:                                              ; preds = %239
  %246 = load %struct.adapter*, %struct.adapter** %5, align 8
  %247 = getelementptr inbounds %struct.adapter, %struct.adapter* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %248, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %253 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %252, i32 0, i32 8
  store i32 1, i32* %253, align 8
  %254 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %255 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, 1
  %258 = zext i1 %257 to i32
  %259 = call i32 @MPASS(i32 %258)
  %260 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %261 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %260, i32 0, i32 2
  store i32 1, i32* %261, align 8
  %262 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %263 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %264, 1
  br i1 %265, label %266, label %269

266:                                              ; preds = %245
  %267 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %268 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %267, i32 0, i32 6
  store i32 1, i32* %268, align 8
  br label %269

269:                                              ; preds = %266, %245
  br label %270

270:                                              ; preds = %269, %222, %91, %61
  %271 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %272 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp sgt i32 %273, 0
  %275 = zext i1 %274 to i32
  %276 = call i32 @MPASS(i32 %275)
  %277 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %278 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp sgt i32 %279, 1
  br i1 %280, label %281, label %294

281:                                              ; preds = %270
  %282 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %283 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %282, i32 0, i32 5
  %284 = load i64, i64* %283, align 8
  %285 = icmp sgt i64 %284, 0
  %286 = zext i1 %285 to i32
  %287 = call i32 @MPASS(i32 %286)
  %288 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %289 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp sgt i64 %290, 0
  %292 = zext i1 %291 to i32
  %293 = call i32 @MPASS(i32 %292)
  br label %294

294:                                              ; preds = %281, %270
  %295 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %296 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 8
  %298 = icmp sgt i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @MPASS(i32 %299)
  %301 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %302 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = icmp sgt i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i32 @MPASS(i32 %305)
  %307 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %308 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = icmp sgt i32 %309, 0
  %311 = zext i1 %310 to i32
  %312 = call i32 @MPASS(i32 %311)
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @INTR_MSI, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %294
  %317 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %6, align 8
  %318 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @powerof2(i32 %319)
  %321 = call i32 @MPASS(i32 %320)
  br label %322

322:                                              ; preds = %316, %294
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bzero(%struct.intrs_and_queues*, i32) #1

declare dso_local i32 @update_nirq(%struct.intrs_and_queues*, i32) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
