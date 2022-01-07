; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_check_mac_link_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_check_mac_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_check_mac_link_generic\00", align 1
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP2 = common dso_local global i64 0, align 8
@IXGBE_ESDP_SDP0 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"LINKS changed from %08X to %08X\0A\00", align 1
@IXGBE_LINKS_UP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IXGBE_LINKS_SPEED_82599 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i32 0, align 4
@IXGBE_LINKS_SPEED_NON_STD = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T_L = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_check_mac_link_generic(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = call i64 @ixgbe_need_crosstalk_fix(%struct.ixgbe_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %35 [
    i32 130, label %23
    i32 128, label %29
    i32 129, label %29
  ]

23:                                               ; preds = %18
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = load i32, i32* @IXGBE_ESDP, align 4
  %26 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %25)
  %27 = load i64, i64* @IXGBE_ESDP_SDP2, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %13, align 8
  br label %38

29:                                               ; preds = %18, %18
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %31 = load i32, i32* @IXGBE_ESDP, align 4
  %32 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %31)
  %33 = load i64, i64* @IXGBE_ESDP_SDP0, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %13, align 8
  br label %38

35:                                               ; preds = %18
  %36 = load i8*, i8** @FALSE, align 8
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %35, %29, %23
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** @FALSE, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %47, i32* %5, align 4
  br label %176

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %51 = load i32, i32* @IXGBE_LINKS, align 4
  %52 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %50, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %54 = load i32, i32* @IXGBE_LINKS, align 4
  %55 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %53, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %49
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @TRUE, align 4
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  br label %94

82:                                               ; preds = %74
  %83 = load i8*, i8** @FALSE, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %82
  %87 = call i32 @msec_delay(i32 100)
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %89 = load i32, i32* @IXGBE_LINKS, align 4
  %90 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %88, i32 %89)
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %67

94:                                               ; preds = %79, %67
  br label %108

95:                                               ; preds = %63
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @TRUE, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  br label %107

103:                                              ; preds = %95
  %104 = load i8*, i8** @FALSE, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @IXGBE_LINKS_SPEED_82599, align 8
  %111 = and i64 %109, %110
  switch i64 %111, label %171 [
    i64 133, label %112
    i64 131, label %131
    i64 134, label %134
    i64 132, label %153
  ]

112:                                              ; preds = %108
  %113 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ixgbe_mac_X550, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %112
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @IXGBE_LINKS_SPEED_NON_STD, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121
  br label %130

130:                                              ; preds = %129, %112
  br label %174

131:                                              ; preds = %108
  %132 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %174

134:                                              ; preds = %108
  %135 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ixgbe_mac_X550, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %134
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @IXGBE_LINKS_SPEED_NON_STD, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %134
  br label %174

153:                                              ; preds = %108
  %154 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %155 = load i32*, i32** %7, align 8
  store i32 %154, i32* %155, align 4
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %163 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T_L, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161, %153
  %168 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %161
  br label %174

171:                                              ; preds = %108
  %172 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %173 = load i32*, i32** %7, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %170, %152, %131, %130
  %175 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %174, %41
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_need_crosstalk_fix(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i64, i64) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
