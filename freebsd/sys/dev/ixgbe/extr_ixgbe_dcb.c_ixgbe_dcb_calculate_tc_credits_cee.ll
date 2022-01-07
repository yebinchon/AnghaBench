; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_calculate_tc_credits_cee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_calculate_tc_credits_cee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_dcb_config = type { i64**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.ixgbe_dcb_tc_path* }
%struct.ixgbe_dcb_tc_path = type { i64, i64, i64, i64, i64 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_DCB_CREDIT_QUANTUM = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_DCB_MAX_CREDIT_REFILL = common dso_local global i64 0, align 8
@IXGBE_DCB_MAX_CREDIT = common dso_local global i64 0, align 8
@IXGBE_DCB_TX_CONFIG = common dso_local global i64 0, align 8
@IXGBE_DCB_MIN_TSO_CREDIT = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_calculate_tc_credits_cee(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.ixgbe_dcb_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_dcb_tc_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i64 100, i64* %11, align 8
  %19 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %20 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %21 = icmp eq %struct.ixgbe_dcb_config* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %23, i32* %12, align 4
  br label %192

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* @IXGBE_DCB_CREDIT_QUANTUM, align 4
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @IXGBE_DCB_CREDIT_QUANTUM, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %13, align 4
  store i64 0, i64* %18, align 8
  br label %32

32:                                               ; preds = %73, %24
  %33 = load i64, i64* %18, align 8
  %34 = load i64, i64* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  %37 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %43, i64 %44
  store %struct.ixgbe_dcb_tc_path* %45, %struct.ixgbe_dcb_tc_path** %9, align 8
  %46 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %47 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %46, i32 0, i32 0
  %48 = load i64**, i64*** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i64*, i64** %48, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %53 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  %57 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %58 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = mul i64 %60, %61
  %63 = udiv i64 %62, 100
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %36
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %16, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %66, %36
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %18, align 8
  br label %32

76:                                               ; preds = %32
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = udiv i64 %78, %79
  %81 = add i64 %80, 1
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  store i64 0, i64* %18, align 8
  br label %83

83:                                               ; preds = %188, %76
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %191

87:                                               ; preds = %83
  %88 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %89 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %94, i64 %95
  store %struct.ixgbe_dcb_tc_path* %96, %struct.ixgbe_dcb_tc_path** %9, align 8
  %97 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %98 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %97, i32 0, i32 0
  %99 = load i64**, i64*** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i64*, i64** %99, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %104 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %17, align 8
  %108 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %109 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %17, align 8
  %113 = mul i64 %111, %112
  %114 = udiv i64 %113, 100
  store i64 %114, i64* %16, align 8
  %115 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %116 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ugt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %87
  %120 = load i64, i64* %16, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i64 1, i64* %16, align 8
  br label %123

123:                                              ; preds = %122, %119, %87
  %124 = load i64, i64* %16, align 8
  %125 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %126 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %127, %129
  %131 = load i64, i64* @IXGBE_DCB_MAX_CREDIT_REFILL, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @min(i64 %130, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %123
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %137, %123
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %143 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* @IXGBE_DCB_MAX_CREDIT, align 8
  %146 = mul i64 %144, %145
  %147 = udiv i64 %146, 100
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %139
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %152, %139
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @IXGBE_DCB_TX_CONFIG, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %183

158:                                              ; preds = %154
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @IXGBE_DCB_MIN_TSO_CREDIT, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %167 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @IXGBE_DCB_MIN_TSO_CREDIT, align 4
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %172, %165, %161, %158
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %6, align 8
  %178 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i64, i64* %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i64 %176, i64* %182, align 8
  br label %183

183:                                              ; preds = %174, %154
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %9, align 8
  %187 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %183
  %189 = load i64, i64* %18, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %18, align 8
  br label %83

191:                                              ; preds = %83
  br label %192

192:                                              ; preds = %191, %22
  %193 = load i32, i32* %12, align 4
  ret i32 %193
}

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
