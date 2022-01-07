; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i64, i32 (%struct.mlx_softc*, i32)*, i32, i32, %struct.mlx_sysdrive* }
%struct.mlx_sysdrive = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.mlx_enq_sys_drive = type { i32, i32, i32 }

@MLX_CMD_ENQSYSDRIVE = common dso_local global i32 0, align 4
@MLX_MAXDRIVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error fetching drive status\0A\00", align 1
@MLX_GEOM_128_32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"device_add_child failed\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"bus_generic_attach returned %d\00", align 1
@MLX_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@MLX_INTACTION_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx_startup(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_softc*, align 8
  %3 = alloca %struct.mlx_enq_sys_drive*, align 8
  %4 = alloca %struct.mlx_sysdrive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %2, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %9 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %8)
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %11 = load i32, i32* @MLX_CMD_ENQSYSDRIVE, align 4
  %12 = load i32, i32* @MLX_MAXDRIVES, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 12, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.mlx_enq_sys_drive* @mlx_enquire(%struct.mlx_softc* %10, i32 %11, i32 %15, i32* null)
  store %struct.mlx_enq_sys_drive* %16, %struct.mlx_enq_sys_drive** %3, align 8
  %17 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %18 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %17)
  %19 = load %struct.mlx_enq_sys_drive*, %struct.mlx_enq_sys_drive** %3, align 8
  %20 = icmp eq %struct.mlx_enq_sys_drive* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %167

26:                                               ; preds = %1
  %27 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %28 = call i32 @MLX_CONFIG_LOCK(%struct.mlx_softc* %27)
  store i32 0, i32* %5, align 4
  %29 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %29, i32 0, i32 4
  %31 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %30, align 8
  %32 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %31, i64 0
  store %struct.mlx_sysdrive* %32, %struct.mlx_sysdrive** %4, align 8
  br label %33

33:                                               ; preds = %128, %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MLX_MAXDRIVES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.mlx_enq_sys_drive*, %struct.mlx_enq_sys_drive** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %38, i64 %40
  %42 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, -1
  br label %45

45:                                               ; preds = %37, %33
  %46 = phi i1 [ false, %33 ], [ %44, %37 ]
  br i1 %46, label %47, label %133

47:                                               ; preds = %45
  %48 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %49 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %127

52:                                               ; preds = %47
  %53 = load %struct.mlx_enq_sys_drive*, %struct.mlx_enq_sys_drive** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %53, i64 %55
  %57 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %60 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx_enq_sys_drive*, %struct.mlx_enq_sys_drive** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %61, i64 %63
  %65 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 15
  %68 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %69 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mlx_enq_sys_drive*, %struct.mlx_enq_sys_drive** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %70, i64 %72
  %74 = getelementptr inbounds %struct.mlx_enq_sys_drive, %struct.mlx_enq_sys_drive* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %77 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %79 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MLX_GEOM_128_32, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %52
  %84 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %85 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %84, i32 0, i32 3
  store i32 128, i32* %85, align 8
  %86 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %87 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %86, i32 0, i32 4
  store i32 32, i32* %87, align 4
  %88 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %89 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 4096
  %92 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %93 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  br label %105

94:                                               ; preds = %52
  %95 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %96 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %95, i32 0, i32 3
  store i32 255, i32* %96, align 8
  %97 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %98 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %97, i32 0, i32 4
  store i32 63, i32* %98, align 4
  %99 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %100 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %101, 16065
  %103 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %104 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %94, %83
  %106 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %107 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @device_add_child(i32 %108, i32* null, i32 -1)
  %110 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %111 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %113 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %118 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %105
  %122 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %123 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %126 = call i32 @device_set_ivars(i64 %124, %struct.mlx_sysdrive* %125)
  br label %127

127:                                              ; preds = %121, %47
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  %131 = load %struct.mlx_sysdrive*, %struct.mlx_sysdrive** %4, align 8
  %132 = getelementptr inbounds %struct.mlx_sysdrive, %struct.mlx_sysdrive* %131, i32 1
  store %struct.mlx_sysdrive* %132, %struct.mlx_sysdrive** %4, align 8
  br label %33

133:                                              ; preds = %45
  %134 = load %struct.mlx_enq_sys_drive*, %struct.mlx_enq_sys_drive** %3, align 8
  %135 = load i32, i32* @M_DEVBUF, align 4
  %136 = call i32 @free(%struct.mlx_enq_sys_drive* %134, i32 %135)
  %137 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %138 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @bus_generic_attach(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %144 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %142, %133
  %149 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %150 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %149)
  %151 = load i32, i32* @MLX_STATE_SHUTDOWN, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %154 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %158 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %157, i32 0, i32 1
  %159 = load i32 (%struct.mlx_softc*, i32)*, i32 (%struct.mlx_softc*, i32)** %158, align 8
  %160 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %161 = load i32, i32* @MLX_INTACTION_ENABLE, align 4
  %162 = call i32 %159(%struct.mlx_softc* %160, i32 %161)
  %163 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %164 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %163)
  %165 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %166 = call i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc* %165)
  br label %167

167:                                              ; preds = %148, %21
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_enq_sys_drive* @mlx_enquire(%struct.mlx_softc*, i32, i32, i32*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @MLX_CONFIG_LOCK(%struct.mlx_softc*) #1

declare dso_local i64 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i64, %struct.mlx_sysdrive*) #1

declare dso_local i32 @free(%struct.mlx_enq_sys_drive*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
