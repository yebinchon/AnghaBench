; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.macio_softc = type { %struct.rman }
%struct.rman = type { i32 }
%struct.macio_devinfo = type { i32, i32, i8** }
%struct.resource_list_entry = type { i8*, i8* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no rle for %s memory %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s has more than 6 interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown resource request from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"failed to reserve resource %#lx - %#lx (%#lx) for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to activate resource for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i8*, i8*, i8*, i32)* @macio_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @macio_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.macio_softc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.resource*, align 8
  %21 = alloca %struct.rman*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.macio_devinfo*, align 8
  %26 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.macio_softc* @device_get_softc(i32 %27)
  store %struct.macio_softc* %28, %struct.macio_softc** %18, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.macio_devinfo* @device_get_ivars(i32 %29)
  store %struct.macio_devinfo* %30, %struct.macio_devinfo** %25, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %17, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %181 [
    i32 128, label %39
    i32 130, label %39
    i32 129, label %111
  ]

39:                                               ; preds = %8, %8
  %40 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %41 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %40, i32 0, i32 1
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.resource_list_entry* @resource_list_find(i32* %41, i32 128, i32 %43)
  store %struct.resource_list_entry* %44, %struct.resource_list_entry** %26, align 8
  %45 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %46 = icmp eq %struct.resource_list_entry* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @device_get_nameunit(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %54)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %233

56:                                               ; preds = %39
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %59 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ult i8* %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %64 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %22, align 8
  br label %79

66:                                               ; preds = %56
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %69 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ugt i8* %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %74 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %22, align 8
  br label %78

76:                                               ; preds = %66
  %77 = load i8*, i8** %14, align 8
  store i8* %77, i8** %22, align 8
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i8*, i8** %15, align 8
  %81 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %82 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ult i8* %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %87 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %23, align 8
  br label %102

89:                                               ; preds = %79
  %90 = load i8*, i8** %15, align 8
  %91 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %92 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ugt i8* %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %97 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %23, align 8
  br label %101

99:                                               ; preds = %89
  %100 = load i8*, i8** %15, align 8
  store i8* %100, i8** %23, align 8
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i8*, i8** %23, align 8
  %104 = load i8*, i8** %22, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %24, align 8
  %109 = load %struct.macio_softc*, %struct.macio_softc** %18, align 8
  %110 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %109, i32 0, i32 0
  store %struct.rman* %110, %struct.rman** %21, align 8
  br label %188

111:                                              ; preds = %8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @device_get_parent(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @device_get_parent(i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %13, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %118, i32 %119, i32 %120, i32* %121, i8* %122, i8* %123, i8* %124, i32 %125)
  store %struct.resource* %126, %struct.resource** %9, align 8
  br label %233

127:                                              ; preds = %111
  %128 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %129 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %128, i32 0, i32 1
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.resource_list_entry* @resource_list_find(i32* %129, i32 129, i32 %131)
  store %struct.resource_list_entry* %132, %struct.resource_list_entry** %26, align 8
  %133 = load %struct.resource_list_entry*, %struct.resource_list_entry** %26, align 8
  %134 = icmp eq %struct.resource_list_entry* %133, null
  br i1 %134, label %135, label %169

135:                                              ; preds = %127
  %136 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %137 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %138, 6
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @device_get_nameunit(i32 %142)
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %145)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %233

147:                                              ; preds = %135
  %148 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %149 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %148, i32 0, i32 1
  %150 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %151 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = load i8*, i8** %14, align 8
  %155 = call i32 @resource_list_add(i32* %149, i32 129, i32 %152, i8* %153, i8* %154, i32 1)
  %156 = load i8*, i8** %14, align 8
  %157 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %158 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %157, i32 0, i32 2
  %159 = load i8**, i8*** %158, align 8
  %160 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %161 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %159, i64 %163
  store i8* %156, i8** %164, align 8
  %165 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %166 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %147, %127
  %170 = load %struct.macio_devinfo*, %struct.macio_devinfo** %25, align 8
  %171 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %170, i32 0, i32 1
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32*, i32** %13, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i8*, i8** %16, align 8
  %179 = load i32, i32* %17, align 4
  %180 = call %struct.resource* @resource_list_alloc(i32* %171, i32 %172, i32 %173, i32 %174, i32* %175, i8* %176, i8* %177, i8* %178, i32 %179)
  store %struct.resource* %180, %struct.resource** %9, align 8
  br label %233

181:                                              ; preds = %8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @device_get_nameunit(i32 %183)
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %186)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %233

188:                                              ; preds = %102
  %189 = load %struct.rman*, %struct.rman** %21, align 8
  %190 = load i8*, i8** %22, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = load i8*, i8** %24, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call %struct.resource* @rman_reserve_resource(%struct.rman* %189, i8* %190, i8* %191, i8* %192, i32 %193, i32 %194)
  store %struct.resource* %195, %struct.resource** %20, align 8
  %196 = load %struct.resource*, %struct.resource** %20, align 8
  %197 = icmp eq %struct.resource* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %188
  %199 = load i32, i32* %10, align 4
  %200 = load i8*, i8** %22, align 8
  %201 = load i8*, i8** %23, align 8
  %202 = load i8*, i8** %24, align 8
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @device_get_nameunit(i32 %203)
  %205 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %199, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %200, i8* %201, i8* %202, i32 %204)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %233

206:                                              ; preds = %188
  %207 = load %struct.resource*, %struct.resource** %20, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @rman_set_rid(%struct.resource* %207, i32 %209)
  %211 = load i32, i32* %19, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %206
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.resource*, %struct.resource** %20, align 8
  %219 = call i64 @bus_activate_resource(i32 %214, i32 %215, i32 %217, %struct.resource* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %213
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @device_get_nameunit(i32 %223)
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %226)
  %228 = load %struct.resource*, %struct.resource** %20, align 8
  %229 = call i32 @rman_release_resource(%struct.resource* %228)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %233

230:                                              ; preds = %213
  br label %231

231:                                              ; preds = %230, %206
  %232 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %232, %struct.resource** %9, align 8
  br label %233

233:                                              ; preds = %231, %221, %198, %181, %169, %140, %116, %47
  %234 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %234
}

declare dso_local %struct.macio_softc* @device_get_softc(i32) #1

declare dso_local %struct.macio_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(i32*, i32, i32, i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
