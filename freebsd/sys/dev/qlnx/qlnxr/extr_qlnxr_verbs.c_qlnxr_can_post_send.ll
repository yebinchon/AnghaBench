; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_can_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_can_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_qp = type { i32, %struct.TYPE_2__, %struct.qlnxr_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.qlnxr_dev = type { i32* }
%struct.ib_send_wr = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"enter[qp, wr] = [%p,%p]\0A\00", align 1
@QLNXR_MAX_SQE_ELEMENTS_PER_SQE = common dso_local global i64 0, align 8
@QLNXR_QP_ERR_SQ_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [114 x i8] c"error: WQ is full. Post send on QP failed (this error appears only once) [qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\0A\00", align 1
@QLNXR_QP_ERR_BAD_SR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [113 x i8] c"error: WQ is bad. Post send on QP failed (this error appears only once) [qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\0A\00", align 1
@QLNXR_QP_ERR_SQ_PBL_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [118 x i8] c"error: WQ PBL is full. Post send on QP failed (this error appears only once) [qp, wr, qp->err_bitmap]=[%p, %p, 0x%x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"exit[qp, wr] = [%p,%p]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_qp*, %struct.ib_send_wr*)* @qlnxr_can_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_can_post_send(%struct.qlnxr_qp* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnxr_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlnxr_dev*, align 8
  %10 = alloca i32*, align 8
  store %struct.qlnxr_qp* %0, %struct.qlnxr_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  %11 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %12 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %11, i32 0, i32 2
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %12, align 8
  store %struct.qlnxr_dev* %13, %struct.qlnxr_dev** %9, align 8
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %15 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %19 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %20 = call i32 (i32*, i8*, %struct.qlnxr_qp*, %struct.ib_send_wr*, ...) @QL_DPRINT12(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_qp* %18, %struct.ib_send_wr* %19)
  %21 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %25 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %23, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %31 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %30, i32 0, i32 1
  %32 = call i32 @qlnxr_wq_is_full(%struct.TYPE_2__* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %34 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i64 @ecore_chain_get_elem_left_u32(i32* %35)
  %37 = load i64, i64* @QLNXR_MAX_SQE_ELEMENTS_PER_SQE, align 8
  %38 = icmp slt i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %118

48:                                               ; preds = %45, %42, %2
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %53 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @QLNXR_QP_ERR_SQ_FULL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @QLNXR_QP_ERR_SQ_FULL, align 4
  %60 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %61 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %66 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %67 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %68 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32*, i8*, %struct.qlnxr_qp*, %struct.ib_send_wr*, ...) @QL_DPRINT12(i32* %64, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), %struct.qlnxr_qp* %65, %struct.ib_send_wr* %66, i32 %69)
  br label %71

71:                                               ; preds = %58, %51, %48
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %76 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @QLNXR_QP_ERR_BAD_SR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @QLNXR_QP_ERR_BAD_SR, align 4
  %83 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %84 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %89 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %90 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %91 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32*, i8*, %struct.qlnxr_qp*, %struct.ib_send_wr*, ...) @QL_DPRINT12(i32* %87, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), %struct.qlnxr_qp* %88, %struct.ib_send_wr* %89, i32 %92)
  br label %94

94:                                               ; preds = %81, %74, %71
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %99 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @QLNXR_QP_ERR_SQ_PBL_FULL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @QLNXR_QP_ERR_SQ_PBL_FULL, align 4
  %106 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %107 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %112 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %113 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %114 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32*, i8*, %struct.qlnxr_qp*, %struct.ib_send_wr*, ...) @QL_DPRINT12(i32* %110, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0), %struct.qlnxr_qp* %111, %struct.ib_send_wr* %112, i32 %115)
  br label %117

117:                                              ; preds = %104, %97, %94
  store i32 0, i32* %3, align 4
  br label %123

118:                                              ; preds = %45
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %121 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %122 = call i32 (i32*, i8*, %struct.qlnxr_qp*, %struct.ib_send_wr*, ...) @QL_DPRINT12(i32* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.qlnxr_qp* %120, %struct.ib_send_wr* %121)
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %117
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, %struct.qlnxr_qp*, %struct.ib_send_wr*, ...) #1

declare dso_local i32 @qlnxr_wq_is_full(%struct.TYPE_2__*) #1

declare dso_local i64 @ecore_chain_get_elem_left_u32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
