; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_get_dot1q_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_get_dot1q_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i64 }

@VTU_OPERATION = common dso_local global i32 0, align 4
@VTU_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VTU unit is busy, cannot access\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@VTU_VID = common dso_local global i32 0, align 4
@VTU_OP_MASK = common dso_local global i32 0, align 4
@VTU_GET_NEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Timeout while reading\0A\00", align 1
@VTU_VID_MASK = common dso_local global i32 0, align 4
@VTU_VID_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@VTU_DATA = common dso_local global i32 0, align 4
@VTU_DATA2 = common dso_local global i32 0, align 4
@VTU_PORT_MASK = common dso_local global i32 0, align 4
@VTU_PORT_UNTAGGED = common dso_local global i32 0, align 4
@VTU_PORT_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @e6000sw_get_dot1q_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_get_dot1q_vlan(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load i32, i32* @VTU_OPERATION, align 4
  %33 = load i32, i32* @VTU_BUSY, align 4
  %34 = call i64 @E6000SW_WAITREADY(%struct.TYPE_11__* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %3, align 4
  br label %172

42:                                               ; preds = %30
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = load i32, i32* @REG_GLOBAL, align 4
  %45 = load i32, i32* @VTU_VID, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @e6000sw_writereg(%struct.TYPE_11__* %43, i32 %44, i32 %45, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = load i32, i32* @REG_GLOBAL, align 4
  %53 = load i32, i32* @VTU_OPERATION, align 4
  %54 = call i32 @e6000sw_readreg(%struct.TYPE_11__* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @VTU_OP_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @VTU_GET_NEXT, align 4
  %60 = load i32, i32* @VTU_BUSY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = load i32, i32* @REG_GLOBAL, align 4
  %66 = load i32, i32* @VTU_OPERATION, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @e6000sw_writereg(%struct.TYPE_11__* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = load i32, i32* @VTU_OPERATION, align 4
  %71 = load i32, i32* @VTU_BUSY, align 4
  %72 = call i64 @E6000SW_WAITREADY(%struct.TYPE_11__* %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %42
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EBUSY, align 4
  store i32 %79, i32* %3, align 4
  br label %172

80:                                               ; preds = %42
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = load i32, i32* @REG_GLOBAL, align 4
  %83 = load i32, i32* @VTU_VID, align 4
  %84 = call i32 @e6000sw_readreg(%struct.TYPE_11__* %81, i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @VTU_VID_MASK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @VTU_VID_VALID, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %80
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %3, align 4
  br label %172

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @VTU_VID_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %3, align 4
  br label %172

105:                                              ; preds = %95
  %106 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = load i32, i32* @REG_GLOBAL, align 4
  %113 = load i32, i32* @VTU_DATA, align 4
  %114 = call i32 @e6000sw_readreg(%struct.TYPE_11__* %111, i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %168, %105
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %171

121:                                              ; preds = %115
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = call i32 @VTU_PPREG(%struct.TYPE_11__* %123)
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = load i32, i32* @REG_GLOBAL, align 4
  %129 = load i32, i32* @VTU_DATA2, align 4
  %130 = call i32 @e6000sw_readreg(%struct.TYPE_11__* %127, i32 %128, i32 %129)
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @VTU_PORT(%struct.TYPE_11__* %133, i32 %134)
  %136 = ashr i32 %132, %135
  %137 = load i32, i32* @VTU_PORT_MASK, align 4
  %138 = and i32 %136, %137
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @VTU_PORT_UNTAGGED, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %131
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 1, %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %6, align 4
  %150 = shl i32 1, %149
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %167

155:                                              ; preds = %131
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @VTU_PORT_TAGGED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = shl i32 1, %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %159, %155
  br label %167

167:                                              ; preds = %166, %142
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %115

171:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %103, %93, %74, %36, %29
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @E6000SW_WAITREADY(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_writereg(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @e6000sw_readreg(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @VTU_PPREG(%struct.TYPE_11__*) #1

declare dso_local i32 @VTU_PORT(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
