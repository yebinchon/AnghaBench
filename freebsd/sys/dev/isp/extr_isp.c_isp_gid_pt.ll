; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gid_pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gid_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i8*, i32*, i8*, i32, i32, i32 }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Chan %d requesting GID_PT\00", align 1
@ISP_LOGERR = common dso_local global i32 0, align 4
@sacq = common dso_local global i32 0, align 4
@CT_REVISION = common dso_local global i32 0, align 4
@CT_FC_TYPE_FC = common dso_local global i32 0, align 4
@CT_FC_SUBTYPE_NS = common dso_local global i32 0, align 4
@SNS_GID_PT = common dso_local global i8* null, align 8
@GIDLEN = common dso_local global i32 0, align 4
@SNS_GID_PT_REQ_SIZE = common dso_local global i32 0, align 4
@RQRSP_ADDR0015 = common dso_local global i64 0, align 8
@RQRSP_ADDR1631 = common dso_local global i64 0, align 8
@RQRSP_ADDR3247 = common dso_local global i64 0, align 8
@RQRSP_ADDR4863 = common dso_local global i64 0, align 8
@NGENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isp_gid_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_gid_pt(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_11__* @FCPARAM(i32* %10, i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %16, i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @FC_SCRATCH_ACQUIRE(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ISP_LOGERR, align 4
  %27 = load i32, i32* @sacq, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %25, i32 %26, i8* %29)
  store i32 -1, i32* %3, align 4
  br label %144

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @IS_24XX(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = call i32 @ISP_MEMZERO(%struct.TYPE_10__* %7, i32 88)
  %37 = load i32, i32* @CT_REVISION, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 13
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @CT_FC_TYPE_FC, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 12
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @CT_FC_SUBTYPE_NS, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 11
  store i32 %41, i32* %42, align 8
  %43 = load i8*, i8** @SNS_GID_PT, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 10
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @GIDLEN, align 4
  %46 = sub nsw i32 %45, 16
  %47 = ashr i32 %46, 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = bitcast i32* %50 to %struct.TYPE_10__*
  %52 = call i32 @isp_put_ct_hdr(i32* %49, %struct.TYPE_10__* %7, %struct.TYPE_10__* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 88
  store i32 127, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 89
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 90
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 91
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @GIDLEN, align 4
  %64 = call i64 @isp_ct_passthru(i32* %61, i32 %62, i32 92, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %35
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @FC_SCRATCH_RELEASE(i32* %67, i32 %68)
  store i32 -1, i32* %3, align 4
  br label %144

70:                                               ; preds = %35
  br label %132

71:                                               ; preds = %31
  %72 = load i32, i32* @SNS_GID_PT_REQ_SIZE, align 4
  %73 = call i32 @ISP_MEMZERO(%struct.TYPE_10__* %8, i32 %72)
  %74 = load i32, i32* @GIDLEN, align 4
  %75 = ashr i32 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @DMA_WD0(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 9
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @RQRSP_ADDR0015, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @DMA_WD1(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 9
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @RQRSP_ADDR1631, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DMA_WD2(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @RQRSP_ADDR3247, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @DMA_WD3(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 9
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @RQRSP_ADDR4863, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %104, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 6, i32* %109, align 8
  %110 = load i8*, i8** @SNS_GID_PT, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 8
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* @NGENT, align 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 7
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 127, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 6
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  store i64 0, i64* %117, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = bitcast i32* %119 to %struct.TYPE_10__*
  %121 = call i32 @isp_put_gid_pt_request(i32* %118, %struct.TYPE_10__* %8, %struct.TYPE_10__* %120)
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @NGENT, align 4
  %125 = call i64 @isp_ct_sns(i32* %122, i32 %123, i32 88, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %71
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @FC_SCRATCH_RELEASE(i32* %128, i32 %129)
  store i32 -1, i32* %3, align 4
  br label %144

131:                                              ; preds = %71
  br label %132

132:                                              ; preds = %131, %70
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* @NGENT, align 4
  %140 = call i32 @isp_get_gid_xx_response(i32* %133, i32* %134, i32* %138, i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @FC_SCRATCH_RELEASE(i32* %141, i32 %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %132, %127, %66, %24
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_11__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

declare dso_local i64 @FC_SCRATCH_ACQUIRE(i32*, i32) #1

declare dso_local i64 @IS_24XX(i32*) #1

declare dso_local i32 @ISP_MEMZERO(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @isp_put_ct_hdr(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @isp_ct_passthru(i32*, i32, i32, i32) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(i32*, i32) #1

declare dso_local i32 @DMA_WD0(i32) #1

declare dso_local i32 @DMA_WD1(i32) #1

declare dso_local i32 @DMA_WD2(i32) #1

declare dso_local i32 @DMA_WD3(i32) #1

declare dso_local i32 @isp_put_gid_pt_request(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @isp_ct_sns(i32*, i32, i32, i32) #1

declare dso_local i32 @isp_get_gid_xx_response(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
