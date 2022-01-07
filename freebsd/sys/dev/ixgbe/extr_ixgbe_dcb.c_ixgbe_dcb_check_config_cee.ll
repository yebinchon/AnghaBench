; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_check_config_cee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_check_config_cee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_dcb_config = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ixgbe_dcb_tc_path* }
%struct.ixgbe_dcb_tc_path = type { i32, i32, i64 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_BW_GROUP = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@ixgbe_dcb_tsa_strict = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IXGBE_DCB_BW_PERCENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DCB error code %d while checking %s settings.\0A\00", align 1
@IXGBE_DCB_TX_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_check_config_cee(%struct.ixgbe_dcb_config* %0) #0 {
  %2 = alloca %struct.ixgbe_dcb_config*, align 8
  %3 = alloca %struct.ixgbe_dcb_tc_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_dcb_config* %0, %struct.ixgbe_dcb_config** %2, align 8
  %12 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @IXGBE_DCB_MAX_BW_GROUP, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = mul nuw i64 2, %14
  %17 = alloca i32, i64 %16, align 16
  store i64 %14, i64* %10, align 8
  %18 = load i32, i32* @IXGBE_DCB_MAX_BW_GROUP, align 4
  %19 = zext i32 %18 to i64
  %20 = mul nuw i64 2, %19
  %21 = alloca i32, i64 %20, align 16
  store i64 %19, i64* %11, align 8
  %22 = bitcast i32* %17 to i32**
  %23 = mul nuw i64 2, %14
  %24 = mul nuw i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32** %22, i32 0, i32 %25)
  %27 = bitcast i32* %21 to i32**
  %28 = mul nuw i64 2, %19
  %29 = mul nuw i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32** %27, i32 0, i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %179, %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %182

35:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %100, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %103

40:                                               ; preds = %36
  %41 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %48, i64 %50
  store %struct.ixgbe_dcb_tc_path* %51, %struct.ixgbe_dcb_tc_path** %3, align 8
  %52 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @IXGBE_DCB_MAX_BW_GROUP, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %62, i32* %4, align 4
  br label %183

63:                                               ; preds = %40
  %64 = load %struct.ixgbe_dcb_tc_path*, %struct.ixgbe_dcb_tc_path** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_dcb_tc_path, %struct.ixgbe_dcb_tc_path* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ixgbe_dcb_tsa_strict, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %19
  %74 = getelementptr inbounds i32, i32* %21, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %81, i32* %4, align 4
  br label %183

82:                                               ; preds = %69
  br label %89

83:                                               ; preds = %63
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %87, i32* %4, align 4
  br label %183

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %14
  %94 = getelementptr inbounds i32, i32* %17, i64 %93
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %90
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %36

103:                                              ; preds = %36
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %169, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @IXGBE_DCB_MAX_BW_GROUP, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %172

108:                                              ; preds = %104
  %109 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, %19
  %125 = getelementptr inbounds i32, i32* %21, i64 %124
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %108
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, %14
  %135 = getelementptr inbounds i32, i32* %17, i64 %134
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %142, i32* %4, align 4
  br label %183

143:                                              ; preds = %131
  br label %168

144:                                              ; preds = %108
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %14
  %148 = getelementptr inbounds i32, i32* %17, i64 %147
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IXGBE_DCB_BW_PERCENT, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %144
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %14
  %159 = getelementptr inbounds i32, i32* %17, i64 %158
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %155
  %166 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %166, i32* %4, align 4
  br label %183

167:                                              ; preds = %155, %144
  br label %168

168:                                              ; preds = %167, %143
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %104

172:                                              ; preds = %104
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @IXGBE_DCB_BW_PERCENT, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %177, i32* %4, align 4
  br label %183

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %32

182:                                              ; preds = %32
  br label %183

183:                                              ; preds = %182, %176, %165, %141, %86, %80, %61
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @IXGBE_DCB_TX_CONFIG, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %190 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %184, i8* %189)
  %191 = load i32, i32* %4, align 4
  %192 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %192)
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @DEBUGOUT2(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
