; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_ooo_info*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.ecore_ooo_info = type { i32, i32, %struct.ecore_ooo_info*, %struct.ecore_ooo_info*, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Failed to allocate ecore_ooo_info: unknown personalization\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MAX_NUM_ISLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Failed to allocate ecore_ooo_info: unknown amount of connections\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate ecore_ooo_info\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to allocate ecore_ooo_info (isles)\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to allocate ecore_ooo_info(archpelagos)\0A\00", align 1
@ECORE_MAX_NUM_OOO_HISTORY_ENTRIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to allocate ecore_ooo_info(history)\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ooo_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_ooo_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %30 [
    i32 128, label %13
    i32 129, label %22
    i32 130, label %22
  ]

13:                                               ; preds = %1
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %21 = call i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %1, %1
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %25 = load i32, i32* @OSAL_NULL, align 4
  %26 = call i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %29 = call i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %31, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %209

34:                                               ; preds = %22, %13
  %35 = load i32, i32* @ECORE_MAX_NUM_ISLES, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %41, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %43, i32* %2, align 4
  br label %209

44:                                               ; preds = %34
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %46 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @OSAL_ZALLOC(i32 %47, i32 %48, i32 64)
  %50 = bitcast i8* %49 to %struct.ecore_ooo_info*
  store %struct.ecore_ooo_info* %50, %struct.ecore_ooo_info** %6, align 8
  %51 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %52 = icmp ne %struct.ecore_ooo_info* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %55 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %54, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %209

57:                                               ; preds = %44
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %60 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %64, i32 0, i32 10
  %66 = call i32 @OSAL_LIST_INIT(i32* %65)
  %67 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %68 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %67, i32 0, i32 9
  %69 = call i32 @OSAL_LIST_INIT(i32* %68)
  %70 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %70, i32 0, i32 6
  %72 = call i32 @OSAL_LIST_INIT(i32* %71)
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @OSAL_ZALLOC(i32 %75, i32 %76, i32 %80)
  %82 = bitcast i8* %81 to %struct.ecore_ooo_info*
  %83 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %83, i32 0, i32 2
  store %struct.ecore_ooo_info* %82, %struct.ecore_ooo_info** %84, align 8
  %85 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %85, i32 0, i32 2
  %87 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %86, align 8
  %88 = icmp ne %struct.ecore_ooo_info* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %57
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %91 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %90, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %202

92:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %116, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %99 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %98, i32 0, i32 2
  %100 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %100, i64 %102
  %104 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %103, i32 0, i32 8
  %105 = call i32 @OSAL_LIST_INIT(i32* %104)
  %106 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %107 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %106, i32 0, i32 2
  %108 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %108, i64 %110
  %112 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %111, i32 0, i32 7
  %113 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %114 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %113, i32 0, i32 6
  %115 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %112, i32* %114)
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %93

119:                                              ; preds = %93
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %121 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = trunc i64 %126 to i32
  %128 = call i8* @OSAL_ZALLOC(i32 %122, i32 %123, i32 %127)
  %129 = bitcast i8* %128 to %struct.ecore_ooo_info*
  %130 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %131 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %130, i32 0, i32 3
  store %struct.ecore_ooo_info* %129, %struct.ecore_ooo_info** %131, align 8
  %132 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %133 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %132, i32 0, i32 3
  %134 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %133, align 8
  %135 = icmp ne %struct.ecore_ooo_info* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %119
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %138 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %137, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %194

139:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %153, %139
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %146 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %145, i32 0, i32 3
  %147 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %147, i64 %149
  %151 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %150, i32 0, i32 5
  %152 = call i32 @OSAL_LIST_INIT(i32* %151)
  br label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %140

156:                                              ; preds = %140
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %158 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = load i32, i32* @ECORE_MAX_NUM_OOO_HISTORY_ENTRIES, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 4, %162
  %164 = trunc i64 %163 to i32
  %165 = call i8* @OSAL_ZALLOC(i32 %159, i32 %160, i32 %164)
  %166 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %167 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i8* %165, i8** %168, align 8
  %169 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %170 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %156
  %175 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %176 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %175, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %186

177:                                              ; preds = %156
  %178 = load i32, i32* @ECORE_MAX_NUM_OOO_HISTORY_ENTRIES, align 4
  %179 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %180 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %183 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %184 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %183, i32 0, i32 1
  store %struct.ecore_ooo_info* %182, %struct.ecore_ooo_info** %184, align 8
  %185 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %185, i32* %2, align 4
  br label %209

186:                                              ; preds = %174
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %188 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %191 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %190, i32 0, i32 3
  %192 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %191, align 8
  %193 = call i32 @OSAL_FREE(i32 %189, %struct.ecore_ooo_info* %192)
  br label %194

194:                                              ; preds = %186, %136
  %195 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %196 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %199 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %198, i32 0, i32 2
  %200 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %199, align 8
  %201 = call i32 @OSAL_FREE(i32 %197, %struct.ecore_ooo_info* %200)
  br label %202

202:                                              ; preds = %194, %89
  %203 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %204 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %207 = call i32 @OSAL_FREE(i32 %205, %struct.ecore_ooo_info* %206)
  %208 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %202, %177, %53, %40, %30
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i8* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @OSAL_LIST_INIT(i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_ooo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
