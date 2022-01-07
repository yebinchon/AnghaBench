; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_check_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_check_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"ixgbe_check_mac_link_82598\00", align 1
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@IXGBE_TWINAX_DEV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598AT2 = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32*, i32)* @ixgbe_check_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_check_mac_link_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_phy_nl, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %118

20:                                               ; preds = %4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.0*
  %28 = load i32, i32* @IXGBE_TWINAX_DEV, align 4
  %29 = call i32 %25(%struct.ixgbe_hw.0* %27, i32 51103, i32 %28, i32* %11)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = load i32, i32* @IXGBE_TWINAX_DEV, align 4
  %38 = call i32 %34(%struct.ixgbe_hw.0* %36, i32 51103, i32 %37, i32* %11)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.0*
  %46 = load i32, i32* @IXGBE_TWINAX_DEV, align 4
  %47 = call i32 %43(%struct.ixgbe_hw.0* %45, i32 49164, i32 %46, i32* %12)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %92, %50
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %95

69:                                               ; preds = %62, %58
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69
  %73 = call i32 @msec_delay(i32 100)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.0*
  %81 = load i32, i32* @IXGBE_TWINAX_DEV, align 4
  %82 = call i32 %78(%struct.ixgbe_hw.0* %80, i32 51103, i32 %81, i32* %11)
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %86, align 8
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %89 = bitcast %struct.ixgbe_hw* %88 to %struct.ixgbe_hw.0*
  %90 = load i32, i32* @IXGBE_TWINAX_DEV, align 4
  %91 = call i32 %87(%struct.ixgbe_hw.0* %89, i32 49164, i32 %90, i32* %12)
  br label %92

92:                                               ; preds = %72
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %51

95:                                               ; preds = %66, %51
  br label %111

96:                                               ; preds = %20
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  br label %110

107:                                              ; preds = %100, %96
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %195

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %4
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %120 = load i32, i32* @IXGBE_LINKS, align 4
  %121 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %119, i32 %120)
  store i64 %121, i64* %9, align 8
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %118
  store i64 0, i64* %10, align 8
  br label %125

125:                                              ; preds = %148, %124
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %126, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %125
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @TRUE, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  br label %151

140:                                              ; preds = %132
  %141 = load i32, i32* @FALSE, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140
  %144 = call i32 @msec_delay(i32 100)
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %146 = load i32, i32* @IXGBE_LINKS, align 4
  %147 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %145, i32 %146)
  store i64 %147, i64* %9, align 8
  br label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %10, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %125

151:                                              ; preds = %137, %125
  br label %164

152:                                              ; preds = %118
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @TRUE, align 4
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  br label %163

160:                                              ; preds = %152
  %161 = load i32, i32* @FALSE, align 4
  %162 = load i32*, i32** %7, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %151
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @IXGBE_LINKS_SPEED, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %171 = load i32*, i32** %6, align 8
  store i32 %170, i32* %171, align 4
  br label %175

172:                                              ; preds = %164
  %173 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %174 = load i32*, i32** %6, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %169
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %177 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @IXGBE_DEV_ID_82598AT2, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %175
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @TRUE, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %188 = call i64 @ixgbe_validate_link_ready(%struct.ixgbe_hw* %187)
  %189 = load i64, i64* @IXGBE_SUCCESS, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32, i32* @FALSE, align 4
  %193 = load i32*, i32** %7, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %186, %181, %175
  br label %195

195:                                              ; preds = %194, %116
  %196 = load i64, i64* @IXGBE_SUCCESS, align 8
  ret i64 %196
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_validate_link_ready(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
