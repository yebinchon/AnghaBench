; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tc_stats_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tc_stats_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_dcb_config = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_tc_stats_82599(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.ixgbe_dcb_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %12 = icmp ne %struct.ixgbe_dcb_config* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %32, i32* %3, align 4
  br label %198

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %105

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %45, 4
  %47 = mul nsw i32 16843009, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @IXGBE_RQSMR(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %41

56:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %101, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 32
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %95

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 16843009, i32* %6, align 4
  br label %94

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 20
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 33686018, i32* %6, align 4
  br label %93

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 24
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 50529027, i32* %6, align 4
  br label %92

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 26
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 67372036, i32* %6, align 4
  br label %91

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 28
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 84215045, i32* %6, align 4
  br label %90

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 30
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 101058054, i32* %6, align 4
  br label %89

88:                                               ; preds = %84
  store i32 117901063, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %83
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @IXGBE_TQSM(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %57

104:                                              ; preds = %57
  br label %196

105:                                              ; preds = %36, %33
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %162

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @FALSE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %162

112:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %130, %112
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 32
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = srem i32 %117, 8
  %119 = icmp sgt i32 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = sdiv i32 %122, 8
  %124 = mul nsw i32 16843009, %123
  store i32 %124, i32* %6, align 4
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @IXGBE_RQSMR(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %125, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %120
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %113

133:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %158, %133
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 32
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 16
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %152

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 24
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 16843009, i32* %6, align 4
  br label %151

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 28
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 33686018, i32* %6, align 4
  br label %150

149:                                              ; preds = %145
  store i32 50529027, i32* %6, align 4
  br label %150

150:                                              ; preds = %149, %148
  br label %151

151:                                              ; preds = %150, %144
  br label %152

152:                                              ; preds = %151, %140
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @IXGBE_TQSM(i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %153, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %134

161:                                              ; preds = %134
  br label %195

162:                                              ; preds = %108, %105
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %194

165:                                              ; preds = %162
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @TRUE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %178, %169
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 32
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @IXGBE_RQSMR(i32 %175)
  %177 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %174, i32 %176, i32 50462976)
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %170

181:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %190, %181
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 32
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @IXGBE_TQSM(i32 %187)
  %189 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %186, i32 %188, i32 50462976)
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %182

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193, %165, %162
  br label %195

195:                                              ; preds = %194, %161
  br label %196

196:                                              ; preds = %195, %104
  %197 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %31
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RQSMR(i32) #1

declare dso_local i32 @IXGBE_TQSM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
