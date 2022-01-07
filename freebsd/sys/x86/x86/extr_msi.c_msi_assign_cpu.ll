; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_assign_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_assign_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.msi_intsrc = type { i64, i32, i64, i32, i32*, i32, %struct.TYPE_2__, i32, i32, %struct.msi_intsrc* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MSI-X message group\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"msi: Assigning %s IRQ %d to local APIC %u vector %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"msi: Assigning MSI IRQ %d to local APIC %u vector %u\0A\00", align 1
@msix_disable_migration = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsrc*, i64)* @msi_assign_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_assign_cpu(%struct.intsrc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intsrc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.msi_intsrc*, align 8
  %7 = alloca %struct.msi_intsrc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.intsrc*, %struct.intsrc** %4, align 8
  %13 = bitcast %struct.intsrc* %12 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %13, %struct.msi_intsrc** %7, align 8
  %14 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %15 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %14, i32 0, i32 9
  %16 = load %struct.msi_intsrc*, %struct.msi_intsrc** %15, align 8
  %17 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %18 = icmp ne %struct.msi_intsrc* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %234

21:                                               ; preds = %2
  %22 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %23 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %26 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %234

32:                                               ; preds = %21
  %33 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %34 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %39 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %46 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %49 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %52 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @apic_alloc_vectors(i64 %44, i32* %47, i32 %50, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %61

55:                                               ; preds = %32
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %58 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @apic_alloc_vector(i64 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %37
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @ENOSPC, align 4
  store i32 %65, i32* %3, align 4
  br label %234

66:                                               ; preds = %61
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %69 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %72 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %74 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %80 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %83 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @apic_enable_vector(i64 %81, i32 %84)
  br label %86

86:                                               ; preds = %78, %66
  %87 = load i64, i64* @bootverbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %91 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %96 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %97 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %100 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %103 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %98, i64 %101, i32 %104)
  br label %106

106:                                              ; preds = %89, %86
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %159, %106
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %110 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %162

113:                                              ; preds = %107
  %114 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %115 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @intr_lookup_source(i32 %120)
  %122 = inttoptr i64 %121 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %122, %struct.msi_intsrc** %6, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %125 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %130 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %132 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %113
  %137 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %138 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %141 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @apic_enable_vector(i64 %139, i32 %142)
  br label %144

144:                                              ; preds = %136, %113
  %145 = load i64, i64* @bootverbose, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %149 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %152 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %155 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %150, i64 %153, i32 %156)
  br label %158

158:                                              ; preds = %147, %144
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %107

162:                                              ; preds = %107
  %163 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %164 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @device_get_parent(i32 %165)
  %167 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %168 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %171 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @BUS_REMAP_INTR(i32 %166, i32 %169, i32 %172)
  %174 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %175 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %162
  %180 = load i64, i64* %9, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @apic_disable_vector(i64 %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %162
  %184 = load i64, i64* %9, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %187 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @apic_free_vector(i64 %184, i32 %185, i32 %188)
  store i32 1, i32* %10, align 4
  br label %190

190:                                              ; preds = %230, %183
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %193 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %233

196:                                              ; preds = %190
  %197 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %198 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @intr_lookup_source(i32 %203)
  %205 = inttoptr i64 %204 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %205, %struct.msi_intsrc** %6, align 8
  %206 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %207 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %196
  %212 = load i64, i64* %9, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %213, %214
  %216 = call i32 @apic_disable_vector(i64 %212, i32 %215)
  br label %217

217:                                              ; preds = %211, %196
  %218 = load i64, i64* %9, align 8
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %219, %220
  %222 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %223 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @apic_free_vector(i64 %218, i32 %221, i32 %228)
  br label %230

230:                                              ; preds = %217
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %190

233:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %233, %64, %31, %19
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @apic_alloc_vectors(i64, i32*, i32, i32) #1

declare dso_local i32 @apic_alloc_vector(i64, i32) #1

declare dso_local i32 @apic_enable_vector(i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @BUS_REMAP_INTR(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @apic_disable_vector(i64, i32) #1

declare dso_local i32 @apic_free_vector(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
