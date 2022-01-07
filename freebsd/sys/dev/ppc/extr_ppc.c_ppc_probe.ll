; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@IO_LPTSIZE_EXTENDED = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"using extended I/O port range\0A\00", align 1
@IO_LPTSIZE_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"using normal I/O port range\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot reserve I/O port range\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@PPC_TYPE_GENERIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BIOS_MAX_PPC = common dso_local global i16 0, align 2
@BIOS_PORTS = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_probe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ppc_data* @DEVTOSOFTC(i32 %9)
  store %struct.ppc_data* %10, %struct.ppc_data** %6, align 8
  %11 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %12 = call i32 @bzero(%struct.ppc_data* %11, i32 96)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %15 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SYS_RES_IOPORT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bus_get_resource(i32 %16, i32 %17, i32 %18, i64* %8, i32* null)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %23 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %22, i32 0, i32 0
  %24 = load i32, i32* @IO_LPTSIZE_EXTENDED, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i8* @bus_alloc_resource_anywhere(i32 %20, i32 %21, i32* %23, i32 %24, i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %29 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %31 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  br label %71

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SYS_RES_IOPORT, align 4
  %44 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %45 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %44, i32 0, i32 0
  %46 = load i32, i32* @IO_LPTSIZE_NORMAL, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_anywhere(i32 %42, i32 %43, i32* %45, i32 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %51 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %53 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  br label %70

63:                                               ; preds = %41
  %64 = load i64, i64* @bootverbose, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  br label %159

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %73 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @rman_get_start(i64 %74)
  %76 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %77 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %76, i32 0, i32 14
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @device_get_flags(i32 %78)
  %80 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %81 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %83 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SYS_RES_IRQ, align 4
  %90 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %91 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %90, i32 0, i32 4
  %92 = load i32, i32* @RF_SHAREABLE, align 4
  %93 = call i8* @bus_alloc_resource_any(i32 %88, i32 %89, i32* %91, i32 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %96 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SYS_RES_DRQ, align 4
  %99 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %100 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %99, i32 0, i32 6
  %101 = load i32, i32* @RF_ACTIVE, align 4
  %102 = call i8* @bus_alloc_resource_any(i32 %97, i32 %98, i32* %100, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %105 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %87, %71
  %107 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %108 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %113 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @rman_get_start(i64 %114)
  %116 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %117 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %116, i32 0, i32 13
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %111, %106
  %119 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %120 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %125 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @rman_get_start(i64 %126)
  %128 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %129 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %128, i32 0, i32 12
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %123, %118
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %133 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %132, i32 0, i32 11
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @GENERIC, align 4
  %135 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %136 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %135, i32 0, i32 10
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @PPB_COMPATIBLE, align 4
  %138 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %139 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %141 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 16
  %144 = ashr i32 %143, 4
  %145 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %146 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @PPC_TYPE_GENERIC, align 4
  %148 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %149 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %148, i32 0, i32 8
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %151 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %152 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 15
  %155 = call i64 @ppc_detect(%struct.ppc_data* %150, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %130
  br label %159

158:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %206

159:                                              ; preds = %157, %69
  %160 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %161 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @SYS_RES_IRQ, align 4
  %167 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %168 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %171 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @bus_release_resource(i32 %165, i32 %166, i32 %169, i64 %172)
  br label %174

174:                                              ; preds = %164, %159
  %175 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %176 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @SYS_RES_IOPORT, align 4
  %182 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %183 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %186 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @bus_release_resource(i32 %180, i32 %181, i32 %184, i64 %187)
  br label %189

189:                                              ; preds = %179, %174
  %190 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %191 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %189
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @SYS_RES_DRQ, align 4
  %197 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %198 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ppc_data*, %struct.ppc_data** %6, align 8
  %201 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @bus_release_resource(i32 %195, i32 %196, i32 %199, i64 %202)
  br label %204

204:                                              ; preds = %194, %189
  %205 = load i32, i32* @ENXIO, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %158
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.ppc_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @bzero(%struct.ppc_data*, i32) #1

declare dso_local i32 @bus_get_resource(i32, i32, i32, i64*, i32*) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @rman_get_start(i64) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @ppc_detect(%struct.ppc_data*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
