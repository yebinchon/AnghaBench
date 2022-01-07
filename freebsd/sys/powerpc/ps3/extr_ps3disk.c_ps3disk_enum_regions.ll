; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_enum_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_enum_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3disk_softc = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PS3_LPAR_ID_PME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"n_regs\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not get number of regions (0x%08x)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_PS3DISK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Could not get region id (0x%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Could not get region start (0x%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Could not get region size (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3disk_softc*)* @ps3disk_enum_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3disk_enum_regions(%struct.ps3disk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3disk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ps3disk_softc* %0, %struct.ps3disk_softc** %3, align 8
  %10 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ps3bus_get_busidx(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ps3bus_get_devidx(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %18 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = ashr i32 %18, 32
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %26, i32 0, i32 0
  %28 = call i32 @lv1_get_repository_node_value(i32 %17, i32 %21, i32 %24, i32 %25, i32 0, i32* %27, i32* %7)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %9, align 4
  br label %177

36:                                               ; preds = %1
  %37 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %192

42:                                               ; preds = %36
  %43 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_PS3DISK, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.TYPE_3__* @malloc(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %54, i32 0, i32 1
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %55, align 8
  %56 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %42
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %9, align 4
  br label %177

62:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %173, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %176

69:                                               ; preds = %63
  %70 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %71 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %72 = ashr i32 %71, 32
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %82 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @lv1_get_repository_node_value(i32 %70, i32 %74, i32 %77, i32 %80, i32 %81, i32* %88, i32* %7)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %69
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %9, align 4
  br label %177

97:                                               ; preds = %69
  %98 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %99 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %100 = ashr i32 %99, 32
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = call i32 @lv1_get_repository_node_value(i32 %98, i32 %102, i32 %105, i32 %108, i32 %109, i32* %116, i32* %7)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %97
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %9, align 4
  br label %177

125:                                              ; preds = %97
  %126 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %127 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %128 = ashr i32 %127, 32
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %138 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = call i32 @lv1_get_repository_node_value(i32 %126, i32 %130, i32 %133, i32 %136, i32 %137, i32* %144, i32* %7)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %125
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %9, align 4
  br label %177

153:                                              ; preds = %125
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  store i32 2, i32* %163, align 4
  br label %172

164:                                              ; preds = %153
  %165 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %166 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %164, %156
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %63

176:                                              ; preds = %63
  store i32 0, i32* %2, align 4
  br label %192

177:                                              ; preds = %148, %120, %92, %60, %31
  %178 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %179 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %181 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %180, i32 0, i32 1
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = icmp ne %struct.TYPE_3__* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %186 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = load i32, i32* @M_PS3DISK, align 4
  %189 = call i32 @free(%struct.TYPE_3__* %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %177
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %176, %41
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @ps3bus_get_busidx(i32) #1

declare dso_local i32 @ps3bus_get_devidx(i32) #1

declare dso_local i32 @lv1_get_repository_node_value(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lv1_repository_string(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
