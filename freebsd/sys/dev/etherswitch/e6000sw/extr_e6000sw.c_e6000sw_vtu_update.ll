; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_vtu_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_vtu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@VTU_OPERATION = common dso_local global i32 0, align 4
@VTU_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VTU unit is busy, cannot access\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@VTU_VID_MASK = common dso_local global i32 0, align 4
@VTU_VID_VALID = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@VTU_VID = common dso_local global i32 0, align 4
@VTU_PORT_UNTAGGED = common dso_local global i32 0, align 4
@VTU_PORT_TAGGED = common dso_local global i32 0, align 4
@VTU_PORT_DISCARD = common dso_local global i32 0, align 4
@VTU_DATA = common dso_local global i32 0, align 4
@VTU_DATA2 = common dso_local global i32 0, align 4
@VTU_FID = common dso_local global i32 0, align 4
@VTU_LOAD = common dso_local global i32 0, align 4
@VTU_PURGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Timeout while flushing VTU\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32)* @e6000sw_vtu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_vtu_update(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = load i32, i32* @VTU_OPERATION, align 4
  %19 = load i32, i32* @VTU_BUSY, align 4
  %20 = call i64 @E6000SW_WAITREADY(%struct.TYPE_8__* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %7, align 4
  br label %161

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VTU_VID_MASK, align 4
  %31 = and i32 %29, %30
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @VTU_VID_VALID, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = load i32, i32* @REG_GLOBAL, align 4
  %43 = load i32, i32* @VTU_VID, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @e6000sw_writereg(%struct.TYPE_8__* %41, i32 %42, i32 %43, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %139

49:                                               ; preds = %40
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %51, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %114, %49
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %52
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load i32, i32* @VTU_PORT_UNTAGGED, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @VTU_PORT(%struct.TYPE_8__* %66, i32 %67)
  %69 = shl i32 %65, %68
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = call i32 @VTU_PPREG(%struct.TYPE_8__* %71)
  %73 = sdiv i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %69
  store i32 %77, i32* %75, align 4
  br label %113

78:                                               ; preds = %58
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %14, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load i32, i32* @VTU_PORT_TAGGED, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @VTU_PORT(%struct.TYPE_8__* %86, i32 %87)
  %89 = shl i32 %85, %88
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = call i32 @VTU_PPREG(%struct.TYPE_8__* %91)
  %93 = sdiv i32 %90, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %89
  store i32 %97, i32* %95, align 4
  br label %112

98:                                               ; preds = %78
  %99 = load i32, i32* @VTU_PORT_DISCARD, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @VTU_PORT(%struct.TYPE_8__* %100, i32 %101)
  %103 = shl i32 %99, %102
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = call i32 @VTU_PPREG(%struct.TYPE_8__* %105)
  %107 = sdiv i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %103
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %98, %84
  br label %113

113:                                              ; preds = %112, %64
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %52

117:                                              ; preds = %52
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = load i32, i32* @REG_GLOBAL, align 4
  %120 = load i32, i32* @VTU_DATA, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @e6000sw_writereg(%struct.TYPE_8__* %118, i32 %119, i32 %120, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = load i32, i32* @REG_GLOBAL, align 4
  %126 = load i32, i32* @VTU_DATA2, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @e6000sw_writereg(%struct.TYPE_8__* %124, i32 %125, i32 %126, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = load i32, i32* @REG_GLOBAL, align 4
  %132 = load i32, i32* @VTU_FID, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = call i32 @VTU_FID_MASK(%struct.TYPE_8__* %134)
  %136 = and i32 %133, %135
  %137 = call i32 @e6000sw_writereg(%struct.TYPE_8__* %130, i32 %131, i32 %132, i32 %136)
  %138 = load i32, i32* @VTU_LOAD, align 4
  store i32 %138, i32* %15, align 4
  br label %141

139:                                              ; preds = %40
  %140 = load i32, i32* @VTU_PURGE, align 4
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %139, %117
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = load i32, i32* @REG_GLOBAL, align 4
  %144 = load i32, i32* @VTU_OPERATION, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @VTU_BUSY, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @e6000sw_writereg(%struct.TYPE_8__* %142, i32 %143, i32 %144, i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = load i32, i32* @VTU_OPERATION, align 4
  %151 = load i32, i32* @VTU_BUSY, align 4
  %152 = call i64 @E6000SW_WAITREADY(%struct.TYPE_8__* %149, i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %141
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %159, i32* %7, align 4
  br label %161

160:                                              ; preds = %141
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %154, %22
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i64 @E6000SW_WAITREADY(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_writereg(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @VTU_PORT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @VTU_PPREG(%struct.TYPE_8__*) #1

declare dso_local i32 @VTU_FID_MASK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
