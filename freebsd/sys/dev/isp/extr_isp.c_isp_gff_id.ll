; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gff_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Chan %d requesting GFF_ID\00", align 1
@ISP_LOGERR = common dso_local global i32 0, align 4
@sacq = common dso_local global i32 0, align 4
@CT_REVISION = common dso_local global i32 0, align 4
@CT_FC_TYPE_FC = common dso_local global i32 0, align 4
@CT_FC_SUBTYPE_NS = common dso_local global i32 0, align 4
@SNS_GFF_ID = common dso_local global i32 0, align 4
@SNS_GFF_ID_RESP_SIZE = common dso_local global i32 0, align 4
@LS_ACC = common dso_local global i64 0, align 8
@FC4_SCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Chan %d GFF_ID result is %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @isp_gff_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_gff_id(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_13__* @FCPARAM(i32* %15, i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  store i32 -1, i32* %14, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %4, align 4
  br label %158

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @IS_24XX(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  br label %158

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %34, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @FC_SCRATCH_ACQUIRE(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @ISP_LOGERR, align 4
  %45 = load i32, i32* @sacq, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %43, i32 %44, i8* %47)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %4, align 4
  br label %158

50:                                               ; preds = %33
  %51 = call i32 @ISP_MEMZERO(%struct.TYPE_14__* %9, i32 20)
  %52 = load i32, i32* @CT_REVISION, align 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @CT_FC_TYPE_FC, align 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @CT_FC_SUBTYPE_NS, align 4
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @SNS_GFF_ID, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @SNS_GFF_ID_RESP_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 20
  %63 = udiv i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_14__*
  %69 = call i32 @isp_put_ct_hdr(i32* %66, %struct.TYPE_14__* %9, %struct.TYPE_14__* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 20
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @ISP_IOZPUT_32(i32* %72, i32 %73, i32* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SNS_GFF_ID_RESP_SIZE, align 4
  %79 = call i64 @isp_ct_passthru(i32* %76, i32 %77, i32 24, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %50
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @FC_SCRATCH_RELEASE(i32* %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %158

86:                                               ; preds = %50
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_12__*
  %90 = call i32 @isp_get_gff_id_response(i32* %87, %struct.TYPE_12__* %89, %struct.TYPE_12__* %12)
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LS_ACC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %148

96:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %110, %96
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %113

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %97

113:                                              ; preds = %108, %97
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* @FC4_SCSI, align 4
  %117 = sdiv i32 %116, 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @FC4_SCSI, align 4
  %122 = srem i32 %121, 8
  %123 = mul nsw i32 %122, 4
  %124 = zext i32 %123 to i64
  %125 = ashr i64 %120, %124
  %126 = and i64 %125, 1
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %113
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* @FC4_SCSI, align 4
  %134 = sdiv i32 %133, 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @ISP_SWAP32(i32* %130, i32 %138)
  %140 = load i32, i32* @FC4_SCSI, align 4
  %141 = srem i32 %140, 8
  %142 = mul nsw i32 %141, 4
  %143 = ashr i32 %139, %142
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %129
  store i32 1, i32* %14, align 4
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %86
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @FC_SCRATCH_RELEASE(i32* %149, i32 %150)
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %152, i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %148, %81, %42, %31, %25
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_13__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @IS_24XX(i32*) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

declare dso_local i64 @FC_SCRATCH_ACQUIRE(i32*, i32) #1

declare dso_local i32 @ISP_MEMZERO(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @isp_put_ct_hdr(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ISP_IOZPUT_32(i32*, i32, i32*) #1

declare dso_local i64 @isp_ct_passthru(i32*, i32, i32, i32) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(i32*, i32) #1

declare dso_local i32 @isp_get_gff_id_response(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ISP_SWAP32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
