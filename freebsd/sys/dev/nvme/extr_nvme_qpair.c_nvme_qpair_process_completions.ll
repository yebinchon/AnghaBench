; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_process_completions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_process_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i64, i64, i32, i32, %struct.TYPE_2__*, %struct.nvme_completion*, i32, %struct.nvme_tracker**, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvme_completion = type { i64, i32, i32 }
%struct.nvme_tracker = type { i32 }

@dumping = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ERROR_PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cpl does not map to outstanding cmd\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"received completion for unknown cmd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_qpair_process_completions(%struct.nvme_qpair* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca %struct.nvme_tracker*, align 8
  %5 = alloca %struct.nvme_completion, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @dumping, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = call i64 (...) @SCHEDULER_STOPPED()
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i1 [ true, %1 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %187

25:                                               ; preds = %13
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @__predict_false(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %25
  %30 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %74

48:                                               ; preds = %29
  %49 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %55 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %54, i32 0, i32 5
  %56 = load %struct.nvme_completion*, %struct.nvme_completion** %55, align 8
  %57 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %58 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %56, i64 %60
  %62 = bitcast %struct.nvme_completion* %5 to i8*
  %63 = bitcast %struct.nvme_completion* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = call i32 @nvme_completion_swapbytes(%struct.nvme_completion* %5)
  %65 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %5, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @NVME_STATUS_GET_P(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %53, %48
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %25
  %76 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %77 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %80 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %83 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @bus_dmamap_sync(i32 %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %165
  %87 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %88 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %87, i32 0, i32 5
  %89 = load %struct.nvme_completion*, %struct.nvme_completion** %88, align 8
  %90 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %91 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %89, i64 %92
  %94 = bitcast %struct.nvme_completion* %5 to i8*
  %95 = bitcast %struct.nvme_completion* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = call i32 @nvme_completion_swapbytes(%struct.nvme_completion* %5)
  %97 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %5, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @NVME_STATUS_GET_P(i32 %98)
  %100 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %101 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %183

105:                                              ; preds = %86
  %106 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %107 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %106, i32 0, i32 7
  %108 = load %struct.nvme_tracker**, %struct.nvme_tracker*** %107, align 8
  %109 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %5, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.nvme_tracker*, %struct.nvme_tracker** %108, i64 %110
  %112 = load %struct.nvme_tracker*, %struct.nvme_tracker** %111, align 8
  store %struct.nvme_tracker* %112, %struct.nvme_tracker** %4, align 8
  %113 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %114 = icmp ne %struct.nvme_tracker* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %105
  %116 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %117 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %118 = load i32, i32* @ERROR_PRINT_ALL, align 4
  %119 = call i32 @nvme_qpair_complete_tracker(%struct.nvme_qpair* %116, %struct.nvme_tracker* %117, %struct.nvme_completion* %5, i32 %118)
  %120 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %123 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %144

126:                                              ; preds = %105
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %131 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = call i32 @nvme_printf(%struct.TYPE_2__* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %135 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %134, i32 0, i32 5
  %136 = load %struct.nvme_completion*, %struct.nvme_completion** %135, align 8
  %137 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %138 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %136, i64 %139
  %141 = call i32 @nvme_dump_completion(%struct.nvme_completion* %140)
  %142 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %129, %126
  br label %144

144:                                              ; preds = %143, %115
  %145 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %146 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %150 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %144
  %154 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %155 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %154, i32 0, i32 0
  %156 = call i32 @atomic_store_rel_int(i64* %155, i32 0)
  %157 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %158 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %164 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %153, %144
  %166 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %167 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %166, i32 0, i32 4
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %172 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %177 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %180 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @bus_space_write_4(i32 %170, i32 %175, i32 %178, i64 %181)
  br label %86

183:                                              ; preds = %104
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %24
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i64 @__predict_false(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvme_completion_swapbytes(%struct.nvme_completion*) #1

declare dso_local i32 @NVME_STATUS_GET_P(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @nvme_qpair_complete_tracker(%struct.nvme_qpair*, %struct.nvme_tracker*, %struct.nvme_completion*, i32) #1

declare dso_local i32 @nvme_printf(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @nvme_dump_completion(%struct.nvme_completion*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_store_rel_int(i64*, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
