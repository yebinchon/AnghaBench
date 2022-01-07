; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__*, %struct.TYPE_11__** }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@SLI_RSRC_FCOE_XRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IO value out of range %d vs %d\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_SGE_MAX_RESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SGL value out of range %d vs %d\0A\00", align 1
@SLI_LINK_MEDIUM_FC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unsupported topology=%#x medium=%#x\0A\00", align 1
@SLI4_READ_CFG_TOPO_FC = common dso_local global i32 0, align 4
@SLI4_READ_CFG_TOPO_FCOE = common dso_local global i32 0, align 4
@SLI4_READ_CFG_TOPO_FC_DA = common dso_local global i32 0, align 4
@SLI4_READ_CFG_TOPO_FC_AL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported topology %#x\0A\00", align 1
@FC_LINK_SPEED_10G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"unsupported speed=%#x medium=%#x\0A\00", align 1
@FC_LINK_SPEED_AUTO_16_8_4 = common dso_local global i32 0, align 4
@FC_LINK_SPEED_2G = common dso_local global i32 0, align 4
@FC_LINK_SPEED_4G = common dso_local global i32 0, align 4
@FC_LINK_SPEED_8G = common dso_local global i32 0, align 4
@FC_LINK_SPEED_16G = common dso_local global i32 0, align 4
@FC_LINK_SPEED_32G = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"unsupported speed %d\0A\00", align 1
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"DIF seed not supported for this device\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"chip does not support DIF inline\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"chip does not support DIF separate\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Invalid block size %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"unsupported property %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_set(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %387 [
    i32 138, label %12
    i32 137, label %39
    i32 131, label %64
    i32 139, label %124
    i32 144, label %188
    i32 147, label %206
    i32 134, label %243
    i32 135, label %273
    i32 149, label %278
    i32 151, label %283
    i32 154, label %288
    i32 150, label %318
    i32 153, label %323
    i32 152, label %328
    i32 156, label %333
    i32 155, label %338
    i32 157, label %343
    i32 140, label %348
    i32 136, label %353
    i32 141, label %358
    i32 143, label %362
    i32 142, label %367
    i32 148, label %372
    i32 133, label %377
    i32 132, label %382
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %16 = load i32, i32* @SLI_RSRC_FCOE_XRI, align 4
  %17 = call i32 @sli_get_max_rsrc(i32* %15, i32 %16)
  %18 = icmp sgt i32 %13, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19, %12
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load i32, i32* @SLI_RSRC_FCOE_XRI, align 4
  %30 = call i32 @sli_get_max_rsrc(i32* %28, i32 %29)
  %31 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %22
  br label %394

39:                                               ; preds = %3
  %40 = load i32, i32* @SLI4_SGE_MAX_RESERVED, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = call i32 @sli_get_max_sgl(i32* %45)
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = call i32 @sli_get_max_sgl(i32* %54)
  %56 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %57, i32* %7, align 4
  br label %63

58:                                               ; preds = %39
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %48
  br label %394

64:                                               ; preds = %3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = call i32 @sli_get_medium(i32* %66)
  %68 = load i32, i32* @SLI_LINK_MEDIUM_FC, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 130
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = call i32 @sli_get_medium(i32* %79)
  %81 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %82, i32* %7, align 4
  br label %394

83:                                               ; preds = %70, %64
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %112 [
    i32 130, label %85
    i32 128, label %102
    i32 129, label %107
  ]

85:                                               ; preds = %83
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = call i32 @sli_get_medium(i32* %87)
  %89 = load i32, i32* @SLI_LINK_MEDIUM_FC, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = load i32, i32* @SLI4_READ_CFG_TOPO_FC, align 4
  %95 = call i32 @sli_set_topology(i32* %93, i32 %94)
  br label %101

96:                                               ; preds = %85
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  %99 = load i32, i32* @SLI4_READ_CFG_TOPO_FCOE, align 4
  %100 = call i32 @sli_set_topology(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  br label %119

102:                                              ; preds = %83
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = load i32, i32* @SLI4_READ_CFG_TOPO_FC_DA, align 4
  %106 = call i32 @sli_set_topology(i32* %104, i32 %105)
  br label %119

107:                                              ; preds = %83
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load i32, i32* @SLI4_READ_CFG_TOPO_FC_AL, align 4
  %111 = call i32 @sli_set_topology(i32* %109, i32 %110)
  br label %119

112:                                              ; preds = %83
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %112, %107, %102, %101
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 4
  br label %394

124:                                              ; preds = %3
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = call i32 @sli_get_medium(i32* %126)
  %128 = load i32, i32* @SLI_LINK_MEDIUM_FC, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  switch i32 %131, label %137 [
    i32 0, label %132
    i32 10000, label %132
  ]

132:                                              ; preds = %130, %130
  %133 = load i32, i32* @FC_LINK_SPEED_10G, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 20
  store i32 %133, i32* %136, align 4
  br label %147

137:                                              ; preds = %130
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = call i32 @sli_get_medium(i32* %143)
  %145 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %144)
  %146 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %137, %132
  br label %394

148:                                              ; preds = %124
  %149 = load i32, i32* %6, align 4
  switch i32 %149, label %180 [
    i32 0, label %150
    i32 2000, label %155
    i32 4000, label %160
    i32 8000, label %165
    i32 16000, label %170
    i32 32000, label %175
  ]

150:                                              ; preds = %148
  %151 = load i32, i32* @FC_LINK_SPEED_AUTO_16_8_4, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 20
  store i32 %151, i32* %154, align 4
  br label %187

155:                                              ; preds = %148
  %156 = load i32, i32* @FC_LINK_SPEED_2G, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 20
  store i32 %156, i32* %159, align 4
  br label %187

160:                                              ; preds = %148
  %161 = load i32, i32* @FC_LINK_SPEED_4G, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 20
  store i32 %161, i32* %164, align 4
  br label %187

165:                                              ; preds = %148
  %166 = load i32, i32* @FC_LINK_SPEED_8G, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 20
  store i32 %166, i32* %169, align 4
  br label %187

170:                                              ; preds = %148
  %171 = load i32, i32* @FC_LINK_SPEED_16G, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 20
  store i32 %171, i32* %174, align 4
  br label %187

175:                                              ; preds = %148
  %176 = load i32, i32* @FC_LINK_SPEED_32G, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 20
  store i32 %176, i32* %179, align 4
  br label %187

180:                                              ; preds = %148
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %180, %175, %170, %165, %160, %155, %150
  br label %394

188:                                              ; preds = %3
  %189 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  %192 = call i32 @sli_get_if_type(i32* %191)
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %199 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %199, i32* %7, align 4
  br label %205

200:                                              ; preds = %188
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %194
  br label %394

206:                                              ; preds = %3
  %207 = load i32, i32* %6, align 4
  switch i32 %207, label %242 [
    i32 146, label %208
    i32 145, label %225
  ]

208:                                              ; preds = %206
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  %211 = call i32 @sli_is_dif_inline_capable(i32* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  store i32 %214, i32* %217, align 4
  br label %224

218:                                              ; preds = %208
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %221, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %223 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %218, %213
  br label %242

225:                                              ; preds = %206
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 4
  %228 = call i32 @sli_is_dif_separate_capable(i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i32, i32* %6, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 4
  store i32 %231, i32* %234, align 4
  br label %241

235:                                              ; preds = %225
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %240 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %235, %230
  br label %242

242:                                              ; preds = %241, %206, %224
  br label %394

243:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  br label %244

244:                                              ; preds = %269, %243
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %272

250:                                              ; preds = %244
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 6
  %253 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %253, i64 %255
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  store %struct.TYPE_11__* %257, %struct.TYPE_11__** %8, align 8
  %258 = load i32, i32* %6, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 5
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  store i32 %258, i32* %268, align 4
  br label %269

269:                                              ; preds = %250
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %244

272:                                              ; preds = %244
  br label %394

273:                                              ; preds = %3
  %274 = load i32, i32* %6, align 4
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 5
  store i32 %274, i32* %277, align 4
  br label %394

278:                                              ; preds = %3
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 6
  store i32 %279, i32* %282, align 4
  br label %394

283:                                              ; preds = %3
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 7
  store i32 %284, i32* %287, align 4
  br label %394

288:                                              ; preds = %3
  %289 = load i32, i32* %6, align 4
  switch i32 %289, label %310 [
    i32 512, label %290
    i32 1024, label %294
    i32 2048, label %298
    i32 4096, label %302
    i32 520, label %306
  ]

290:                                              ; preds = %288
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 8
  store i32 0, i32* %293, align 4
  br label %317

294:                                              ; preds = %288
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 8
  store i32 1, i32* %297, align 4
  br label %317

298:                                              ; preds = %288
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 8
  store i32 2, i32* %301, align 4
  br label %317

302:                                              ; preds = %288
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 8
  store i32 3, i32* %305, align 4
  br label %317

306:                                              ; preds = %288
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 8
  store i32 4, i32* %309, align 4
  br label %317

310:                                              ; preds = %288
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = call i32 @ocs_log_err(i32 %313, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %316, i32* %7, align 4
  br label %317

317:                                              ; preds = %310, %306, %302, %298, %294, %290
  br label %394

318:                                              ; preds = %3
  %319 = load i32, i32* %6, align 4
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 9
  store i32 %319, i32* %322, align 4
  br label %394

323:                                              ; preds = %3
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 10
  store i32 %324, i32* %327, align 4
  br label %394

328:                                              ; preds = %3
  %329 = load i32, i32* %6, align 4
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 11
  store i32 %329, i32* %332, align 4
  br label %394

333:                                              ; preds = %3
  %334 = load i32, i32* %6, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 12
  store i32 %334, i32* %337, align 4
  br label %394

338:                                              ; preds = %3
  %339 = load i32, i32* %6, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 13
  store i32 %339, i32* %342, align 4
  br label %394

343:                                              ; preds = %3
  %344 = load i32, i32* %6, align 4
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 14
  store i32 %344, i32* %347, align 4
  br label %394

348:                                              ; preds = %3
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 4
  %351 = load i32, i32* %6, align 4
  %352 = call i32 @sli_set_hlm(i32* %350, i32 %351)
  store i32 %352, i32* %7, align 4
  br label %394

353:                                              ; preds = %3
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 4
  %356 = load i32, i32* %6, align 4
  %357 = call i32 @sli_set_sgl_preregister(i32* %355, i32 %356)
  store i32 %357, i32* %7, align 4
  br label %394

358:                                              ; preds = %3
  %359 = load i32, i32* %6, align 4
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 4
  br label %394

362:                                              ; preds = %3
  %363 = load i32, i32* %6, align 4
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 15
  store i32 %363, i32* %366, align 4
  br label %394

367:                                              ; preds = %3
  %368 = load i32, i32* %6, align 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 16
  store i32 %368, i32* %371, align 4
  br label %394

372:                                              ; preds = %3
  %373 = load i32, i32* %6, align 4
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 17
  store i32 %373, i32* %376, align 4
  br label %394

377:                                              ; preds = %3
  %378 = load i32, i32* %6, align 4
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 18
  store i32 %378, i32* %381, align 4
  br label %394

382:                                              ; preds = %3
  %383 = load i32, i32* %6, align 4
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 19
  store i32 %383, i32* %386, align 4
  br label %394

387:                                              ; preds = %3
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* %5, align 4
  %392 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %390, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %391)
  %393 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %393, i32* %7, align 4
  br label %394

394:                                              ; preds = %387, %382, %377, %372, %367, %362, %358, %353, %348, %343, %338, %333, %328, %323, %318, %317, %283, %278, %273, %272, %242, %205, %187, %147, %119, %73, %63, %38
  %395 = load i32, i32* %7, align 4
  ret i32 %395
}

declare dso_local i32 @sli_get_max_rsrc(i32*, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #1

declare dso_local i32 @sli_get_max_sgl(i32*) #1

declare dso_local i32 @sli_get_medium(i32*) #1

declare dso_local i32 @sli_set_topology(i32*, i32) #1

declare dso_local i32 @sli_get_if_type(i32*) #1

declare dso_local i32 @sli_is_dif_inline_capable(i32*) #1

declare dso_local i32 @sli_is_dif_separate_capable(i32*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i32) #1

declare dso_local i32 @sli_set_hlm(i32*, i32) #1

declare dso_local i32 @sli_set_sgl_preregister(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
