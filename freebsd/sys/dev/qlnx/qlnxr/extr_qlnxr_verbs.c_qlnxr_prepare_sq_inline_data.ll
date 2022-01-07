; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_inline_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"enter[%d]\0A\00", align 1
@ROCE_REQ_MAX_INLINE_DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Too much inline data in WR:[%d, %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*, %struct.ib_send_wr**, i32*, i32)* @qlnxr_prepare_sq_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qlnxr_prepare_sq_inline_data(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, i32* %2, %struct.ib_send_wr* %3, %struct.ib_send_wr** %4, i32* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.qlnxr_dev*, align 8
  %10 = alloca %struct.qlnxr_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca %struct.ib_send_wr**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %9, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.ib_send_wr* %3, %struct.ib_send_wr** %12, align 8
  store %struct.ib_send_wr** %4, %struct.ib_send_wr*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %29 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @sge_data_len(%struct.TYPE_4__* %27, i32 %30)
  store i64 %31, i64* %20, align 8
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %21, align 8
  %35 = load i32*, i32** %21, align 8
  %36 = load i64, i64* %20, align 8
  %37 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %20, align 8
  %39 = load i64, i64* @ROCE_REQ_MAX_INLINE_DATA_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %7
  %42 = load i32*, i32** %21, align 8
  %43 = load i64, i64* %20, align 8
  %44 = load i64, i64* @ROCE_REQ_MAX_INLINE_DATA_SIZE, align 8
  %45 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %47 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  store %struct.ib_send_wr* %46, %struct.ib_send_wr** %47, align 8
  store i64 0, i64* %8, align 8
  br label %142

48:                                               ; preds = %7
  %49 = load i64, i64* %20, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %20, align 8
  store i64 %52, i64* %8, align 8
  br label %142

53:                                               ; preds = %48
  %54 = load i32, i32* %15, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %128, %53
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %61 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %131

64:                                               ; preds = %58
  %65 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %66 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %22, align 8
  %73 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %74 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %23, align 8
  br label %82

82:                                               ; preds = %126, %64
  %83 = load i64, i64* %22, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %82
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %90 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i64 @ecore_chain_produce(i32* %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %19, align 8
  %94 = load i8*, i8** %19, align 8
  store i8* %94, i8** %18, align 8
  store i32 4, i32* %17, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %88, %85
  %99 = load i64, i64* %22, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i64 @MIN(i64 %99, i32 %100)
  store i64 %101, i64* %24, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = load i8*, i8** %23, align 8
  %104 = load i64, i64* %24, align 8
  %105 = call i32 @memcpy(i8* %102, i8* %103, i64 %104)
  %106 = load i64, i64* %24, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8* %108, i8** %18, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %17, align 4
  %114 = load i64, i64* %24, align 8
  %115 = load i8*, i8** %23, align 8
  %116 = getelementptr i8, i8* %115, i64 %114
  store i8* %116, i8** %23, align 8
  %117 = load i64, i64* %24, align 8
  %118 = load i64, i64* %22, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* %22, align 8
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %98
  %123 = load i8*, i8** %19, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = call i32 @swap_wqe_data64(i32* %124)
  br label %126

126:                                              ; preds = %122, %98
  br label %82

127:                                              ; preds = %82
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %16, align 4
  br label %58

131:                                              ; preds = %58
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i8*, i8** %19, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = call i32 @swap_wqe_data64(i32* %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32*, i32** %21, align 8
  %140 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i64, i64* %20, align 8
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %138, %51, %41
  %143 = load i64, i64* %8, align 8
  ret i64 %143
}

declare dso_local i64 @sge_data_len(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i64 @ecore_chain_produce(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @swap_wqe_data64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
