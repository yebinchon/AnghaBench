; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_affiliated_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_affiliated_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.regpair = type { i32, i64 }
%struct.qlnxr_cq = type { %struct.ib_cq, i32 }
%struct.ib_cq = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.qlnxr_qp = type { %struct.ib_qp, i32 }
%struct.ib_qp = type { i32, i32 (%struct.ib_event.0*, i32)*, i32 }
%struct.ib_event.0 = type opaque
%struct.ib_event.1 = type { %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { %struct.ib_qp*, %struct.ib_cq* }

@.str = private unnamed_addr constant [49 x i8] c"enter context = %p e_code = 0x%x fw_handle = %p\0A\00", align 1
@IB_EVENT_CQ_ERR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported event %d on handle=%llx\0A\00", align 1
@IB_EVENT_SQ_DRAINED = common dso_local global i8* null, align 8
@IB_EVENT_QP_FATAL = common dso_local global i8* null, align 8
@IB_EVENT_QP_REQ_ERR = common dso_local global i8* null, align 8
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"unsupported event 0x%x on fw_handle = %p\0A\00", align 1
@QLNXR_CQ_MAGIC_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"CQ event with invalid CQ pointer Handle = %llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CQ event 0x%x on handle = %p\0A\00", align 1
@QLNXR_QP_MAGIC_NUMBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"QP event 0x%x with invalid QP pointer qp handle = %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"QP event 0x%x on qp handle = %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@EVENT_TYPE_NOT_DEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_affiliated_event(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.regpair*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlnxr_cq*, align 8
  %11 = alloca %struct.qlnxr_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_event.1, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ib_cq*, align 8
  %16 = alloca %struct.ib_qp*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.qlnxr_dev*
  store %struct.qlnxr_dev* %18, %struct.qlnxr_dev** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.regpair*
  store %struct.regpair* %20, %struct.regpair** %8, align 8
  %21 = load %struct.regpair*, %struct.regpair** %8, align 8
  %22 = getelementptr inbounds %struct.regpair, %struct.regpair* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 32
  %26 = load %struct.regpair*, %struct.regpair** %8, align 8
  %27 = getelementptr inbounds %struct.regpair, %struct.regpair* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.qlnxr_cq*
  store %struct.qlnxr_cq* %32, %struct.qlnxr_cq** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.qlnxr_qp*
  store %struct.qlnxr_qp* %35, %struct.qlnxr_qp** %11, align 8
  store i32 0, i32* %12, align 4
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %37 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41, i8* %42)
  %44 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %45 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %52 [
    i32 136, label %49
  ]

49:                                               ; preds = %47
  %50 = load i8*, i8** @IB_EVENT_CQ_ERR, align 8
  %51 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  store i32 1, i32* %12, align 4
  br label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  br label %81

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %75 [
    i32 132, label %60
    i32 128, label %63
    i32 129, label %66
    i32 130, label %69
    i32 131, label %72
  ]

60:                                               ; preds = %58
  %61 = load i8*, i8** @IB_EVENT_CQ_ERR, align 8
  %62 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  store i32 1, i32* %12, align 4
  br label %80

63:                                               ; preds = %58
  %64 = load i8*, i8** @IB_EVENT_SQ_DRAINED, align 8
  %65 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  store i32 2, i32* %12, align 4
  br label %80

66:                                               ; preds = %58
  %67 = load i8*, i8** @IB_EVENT_QP_FATAL, align 8
  %68 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  store i32 2, i32* %12, align 4
  br label %80

69:                                               ; preds = %58
  %70 = load i8*, i8** @IB_EVENT_QP_REQ_ERR, align 8
  %71 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 2
  store i8* %70, i8** %71, align 8
  store i32 2, i32* %12, align 4
  br label %80

72:                                               ; preds = %58
  %73 = load i8*, i8** @IB_EVENT_QP_ACCESS_ERR, align 8
  %74 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  store i32 2, i32* %12, align 4
  br label %80

75:                                               ; preds = %58
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %75, %72, %69, %66, %63, %60
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %169 [
    i32 1, label %83
    i32 2, label %125
    i32 3, label %168
  ]

83:                                               ; preds = %81
  %84 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %85 = icmp ne %struct.qlnxr_cq* %84, null
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %88 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @QLNXR_CQ_MAGIC_NUMBER, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %94 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %93, i32 0, i32 0
  store %struct.ib_cq* %94, %struct.ib_cq** %15, align 8
  %95 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %96 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %95, i32 0, i32 1
  %97 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %96, align 8
  %98 = icmp ne i32 (%struct.ib_event*, i32)* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %92
  %100 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %101 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %105 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store %struct.ib_cq* %104, %struct.ib_cq** %106, align 8
  %107 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %108 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %107, i32 0, i32 1
  %109 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %108, align 8
  %110 = bitcast %struct.ib_event.1* %13 to %struct.ib_event*
  %111 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  %112 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %109(%struct.ib_event* %110, i32 %113)
  br label %115

115:                                              ; preds = %99, %92
  br label %120

116:                                              ; preds = %86, %83
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @QL_DPRINT11(i32* %117, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %115
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %124 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %122, %struct.qlnxr_cq* %123)
  br label %170

125:                                              ; preds = %81
  %126 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %127 = icmp ne %struct.qlnxr_qp* %126, null
  br i1 %127, label %128, label %158

128:                                              ; preds = %125
  %129 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %130 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @QLNXR_QP_MAGIC_NUMBER, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  %135 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %136 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %135, i32 0, i32 0
  store %struct.ib_qp* %136, %struct.ib_qp** %16, align 8
  %137 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %138 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %137, i32 0, i32 1
  %139 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %138, align 8
  %140 = icmp ne i32 (%struct.ib_event.0*, i32)* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %134
  %142 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %143 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 1
  store i32 %144, i32* %145, align 8
  %146 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %147 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %13, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store %struct.ib_qp* %146, %struct.ib_qp** %148, align 8
  %149 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %150 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %149, i32 0, i32 1
  %151 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %150, align 8
  %152 = bitcast %struct.ib_event.1* %13 to %struct.ib_event.0*
  %153 = load %struct.ib_qp*, %struct.ib_qp** %16, align 8
  %154 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 %151(%struct.ib_event.0* %152, i32 %155)
  br label %157

157:                                              ; preds = %141, %134
  br label %163

158:                                              ; preds = %128, %125
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (i32*, i8*, i32, ...) @QL_DPRINT11(i32* %159, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %157
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %11, align 8
  %167 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %165, %struct.qlnxr_qp* %166)
  br label %170

168:                                              ; preds = %81
  br label %170

169:                                              ; preds = %81
  br label %170

170:                                              ; preds = %169, %168, %163, %120
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
