; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_try_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_try_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_softc = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.resource = type { i32 }
%struct.bhndb_region = type { i64, i64 }
%struct.bhndb_dw_alloc = type { %struct.TYPE_4__*, %struct.resource*, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported resource type %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid type: %d\00", align 1
@BHNDB_ADDRSPACE_NATIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"host resource not found for 0x%llx-0x%llx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BHNDB_PRIORITY_LOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"static window allocation for 0x%llx-0x%llx failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_softc*, i32, i32, i32, %struct.resource*, i32*)* @bhndb_try_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_try_activate_resource(%struct.bhndb_softc* %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhndb_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bhndb_region*, align 8
  %15 = alloca %struct.bhndb_dw_alloc*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.resource*, align 8
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.resource* %4, %struct.resource** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %23 = load i32, i32* @MA_NOTOWNED, align 4
  %24 = call i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc* %22, i32 %23)
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32*, i32** %13, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %34
  ]

31:                                               ; preds = %29
  %32 = load %struct.resource*, %struct.resource** %12, align 8
  %33 = call i32 @rman_activate_resource(%struct.resource* %32)
  store i32 %33, i32* %7, align 4
  br label %220

34:                                               ; preds = %29
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %37 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %7, align 4
  br label %220

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 128
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %46, i8* %49)
  %51 = load %struct.resource*, %struct.resource** %12, align 8
  %52 = call i64 @rman_get_start(%struct.resource* %51)
  store i64 %52, i64* %17, align 8
  %53 = load %struct.resource*, %struct.resource** %12, align 8
  %54 = call i64 @rman_get_size(%struct.resource* %53)
  store i64 %54, i64* %18, align 8
  %55 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @bhndb_get_addrspace(%struct.bhndb_softc* %55, i32 %56)
  %58 = load i64, i64* @BHNDB_ADDRSPACE_NATIVE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %43
  %61 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %62 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %18, align 8
  %69 = call %struct.resource* @bhndb_host_resource_for_range(i32 %65, i32 %66, i64 %67, i64 %68)
  store %struct.resource* %69, %struct.resource** %21, align 8
  %70 = load %struct.resource*, %struct.resource** %21, align 8
  %71 = icmp eq %struct.resource* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %60
  %73 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %74 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %18, align 8
  %79 = add i64 %77, %78
  %80 = sub i64 %79, 1
  %81 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %76, i64 %80)
  %82 = load i32, i32* @ENOENT, align 4
  store i32 %82, i32* %7, align 4
  br label %220

83:                                               ; preds = %60
  %84 = load %struct.resource*, %struct.resource** %12, align 8
  %85 = load %struct.resource*, %struct.resource** %21, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.resource*, %struct.resource** %21, align 8
  %88 = call i64 @rman_get_start(%struct.resource* %87)
  %89 = sub nsw i64 %86, %88
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @bhndb_init_child_resource(%struct.resource* %84, %struct.resource* %85, i64 %89, i64 %90)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %20, align 4
  store i32 %95, i32* %7, align 4
  br label %220

96:                                               ; preds = %83
  %97 = load %struct.resource*, %struct.resource** %12, align 8
  %98 = call i32 @rman_activate_resource(%struct.resource* %97)
  store i32 %98, i32* %7, align 4
  br label %220

99:                                               ; preds = %43
  %100 = load i64, i64* @BHNDB_PRIORITY_LOW, align 8
  store i64 %100, i64* %16, align 8
  %101 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %102 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %18, align 8
  %106 = call %struct.bhndb_region* @bhndb_find_resource_region(%struct.TYPE_5__* %103, i64 %104, i64 %105)
  store %struct.bhndb_region* %106, %struct.bhndb_region** %14, align 8
  %107 = load %struct.bhndb_region*, %struct.bhndb_region** %14, align 8
  %108 = icmp ne %struct.bhndb_region* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.bhndb_region*, %struct.bhndb_region** %14, align 8
  %111 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.bhndb_region*, %struct.bhndb_region** %14, align 8
  %115 = icmp ne %struct.bhndb_region* %114, null
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load %struct.bhndb_region*, %struct.bhndb_region** %14, align 8
  %118 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %123 = load %struct.bhndb_region*, %struct.bhndb_region** %14, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.resource*, %struct.resource** %12, align 8
  %128 = call i32 @bhndb_activate_static_region(%struct.bhndb_softc* %122, %struct.bhndb_region* %123, i32 %124, i32 %125, i32 %126, %struct.resource* %127)
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %121
  %132 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %133 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* %18, align 8
  %138 = add i64 %136, %137
  %139 = sub i64 %138, 1
  %140 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %135, i64 %139)
  br label %141

141:                                              ; preds = %131, %121
  %142 = load i32, i32* %20, align 4
  store i32 %142, i32* %7, align 4
  br label %220

143:                                              ; preds = %116, %113
  %144 = load i64, i64* %16, align 8
  %145 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %146 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %144, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %143
  %152 = load i32*, i32** %13, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32*, i32** %13, align 8
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %154, %151
  %157 = load i32, i32* @ENOMEM, align 4
  store i32 %157, i32* %7, align 4
  br label %220

158:                                              ; preds = %143
  %159 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %160 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %159)
  %161 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %162 = load %struct.resource*, %struct.resource** %12, align 8
  %163 = call %struct.bhndb_dw_alloc* @bhndb_retain_dynamic_window(%struct.bhndb_softc* %161, %struct.resource* %162)
  store %struct.bhndb_dw_alloc* %163, %struct.bhndb_dw_alloc** %15, align 8
  %164 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %165 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %164)
  %166 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %167 = icmp eq %struct.bhndb_dw_alloc* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load i32*, i32** %13, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32*, i32** %13, align 8
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i32, i32* @ENOMEM, align 4
  store i32 %174, i32* %7, align 4
  br label %220

175:                                              ; preds = %158
  %176 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %177 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %19, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %183 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %181, %184
  %186 = load i64, i64* %19, align 8
  %187 = add nsw i64 %186, %185
  store i64 %187, i64* %19, align 8
  %188 = load %struct.resource*, %struct.resource** %12, align 8
  %189 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %190 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %189, i32 0, i32 1
  %191 = load %struct.resource*, %struct.resource** %190, align 8
  %192 = load i64, i64* %19, align 8
  %193 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %194 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @bhndb_init_child_resource(%struct.resource* %188, %struct.resource* %191, i64 %192, i64 %197)
  store i32 %198, i32* %20, align 4
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %175
  br label %208

202:                                              ; preds = %175
  %203 = load %struct.resource*, %struct.resource** %12, align 8
  %204 = call i32 @rman_activate_resource(%struct.resource* %203)
  store i32 %204, i32* %20, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %208

207:                                              ; preds = %202
  store i32 0, i32* %7, align 4
  br label %220

208:                                              ; preds = %206, %201
  %209 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %210 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %209)
  %211 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %212 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %211, i32 0, i32 0
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %215 = load %struct.resource*, %struct.resource** %12, align 8
  %216 = call i32 @bhndb_dw_release(%struct.TYPE_5__* %213, %struct.bhndb_dw_alloc* %214, %struct.resource* %215)
  %217 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %218 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %217)
  %219 = load i32, i32* %20, align 4
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %208, %207, %173, %156, %141, %96, %94, %72, %35, %31
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @bhndb_get_addrspace(%struct.bhndb_softc*, i32) #1

declare dso_local %struct.resource* @bhndb_host_resource_for_range(i32, i32, i64, i64) #1

declare dso_local i32 @bhndb_init_child_resource(%struct.resource*, %struct.resource*, i64, i64) #1

declare dso_local %struct.bhndb_region* @bhndb_find_resource_region(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @bhndb_activate_static_region(%struct.bhndb_softc*, %struct.bhndb_region*, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @BHNDB_LOCK(%struct.bhndb_softc*) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_retain_dynamic_window(%struct.bhndb_softc*, %struct.resource*) #1

declare dso_local i32 @BHNDB_UNLOCK(%struct.bhndb_softc*) #1

declare dso_local i32 @bhndb_dw_release(%struct.TYPE_5__*, %struct.bhndb_dw_alloc*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
