; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_qp_init_attr = type { i64, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_pd = type { i32 }
%struct.qlnxr_qp = type { %struct.ib_qp, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"qlnxr_check_qp_attrs failed [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"called from %s, event_handle=%p, eepd=%p sq_cq=%p, sq_icid=%d, rq_cq=%p, rq_icid=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"user library\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"kzalloc(qp) failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"calling qlnxr_create_gsi_qp\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"qlnxr_create_user_qp failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"qlnxr_create_kernel_qp failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"qlnxr_idr_add failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"exit [%p]\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"failed exit\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @qlnxr_create_qp(%struct.ib_pd* %0, %struct.ib_qp_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.qlnxr_pd*, align 8
  %10 = alloca %struct.qlnxr_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %15)
  store %struct.qlnxr_dev* %16, %struct.qlnxr_dev** %8, align 8
  %17 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %18 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %17)
  store %struct.qlnxr_pd* %18, %struct.qlnxr_pd** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %26 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %27 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %28 = call i32 @qlnxr_check_qp_attrs(%struct.ib_pd* %24, %struct.qlnxr_dev* %25, %struct.ib_qp_init_attr* %26, %struct.ib_udata* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.ib_qp* @ERR_PTR(i32 %35)
  store %struct.ib_qp* %36, %struct.ib_qp** %4, align 8
  br label %156

37:                                               ; preds = %3
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %40 = icmp ne %struct.ib_udata* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %43 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %9, align 8
  %47 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_2__* @get_qlnxr_cq(i32 %49)
  %51 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_2__* @get_qlnxr_cq(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_2__* @get_qlnxr_cq(i32 %59)
  %61 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_2__* @get_qlnxr_cq(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %38, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %45, %struct.qlnxr_pd* %46, %struct.TYPE_2__* %50, i32 %56, %struct.TYPE_2__* %60, i32 %66)
  %68 = call %struct.qlnxr_qp* @qlnx_zalloc(i32 8)
  store %struct.qlnxr_qp* %68, %struct.qlnxr_qp** %10, align 8
  %69 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %70 = icmp ne %struct.qlnxr_qp* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %37
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.ib_qp* @ERR_PTR(i32 %75)
  store %struct.ib_qp* %76, %struct.ib_qp** %4, align 8
  br label %156

77:                                               ; preds = %37
  %78 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %79 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %80 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %9, align 8
  %81 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %82 = call i32 @qlnxr_set_common_qp_params(%struct.qlnxr_dev* %78, %struct.qlnxr_qp* %79, %struct.qlnxr_pd* %80, %struct.ib_qp_init_attr* %81)
  %83 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %84 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_QPT_GSI, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %91 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %92 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %93 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %94 = call %struct.ib_qp* @qlnxr_create_gsi_qp(%struct.qlnxr_dev* %91, %struct.ib_qp_init_attr* %92, %struct.qlnxr_qp* %93)
  store %struct.ib_qp* %94, %struct.ib_qp** %4, align 8
  br label %156

95:                                               ; preds = %77
  %96 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %97 = icmp ne %struct.ib_udata* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %100 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %101 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %102 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %103 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %104 = call i32 @qlnxr_create_user_qp(%struct.qlnxr_dev* %99, %struct.qlnxr_qp* %100, %struct.ib_pd* %101, %struct.ib_udata* %102, %struct.ib_qp_init_attr* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %148

110:                                              ; preds = %98
  br label %123

111:                                              ; preds = %95
  %112 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %113 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %114 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %115 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %116 = call i32 @qlnxr_create_kernel_qp(%struct.qlnxr_dev* %112, %struct.qlnxr_qp* %113, %struct.ib_pd* %114, %struct.ib_qp_init_attr* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %148

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %125 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %128 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %131 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %132 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %133 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @qlnxr_idr_add(%struct.qlnxr_dev* %130, %struct.qlnxr_qp* %131, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %148

141:                                              ; preds = %123
  %142 = load i32*, i32** %12, align 8
  %143 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %144 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %143, i32 0, i32 0
  %145 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.ib_qp* %144)
  %146 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %147 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %146, i32 0, i32 0
  store %struct.ib_qp* %147, %struct.ib_qp** %4, align 8
  br label %156

148:                                              ; preds = %138, %119, %107
  %149 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %150 = call i32 @kfree(%struct.qlnxr_qp* %149)
  %151 = load i32*, i32** %12, align 8
  %152 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %153 = load i32, i32* @EFAULT, align 4
  %154 = sub nsw i32 0, %153
  %155 = call %struct.ib_qp* @ERR_PTR(i32 %154)
  store %struct.ib_qp* %155, %struct.ib_qp** %4, align 8
  br label %156

156:                                              ; preds = %148, %141, %88, %71, %31
  %157 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %157
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @qlnxr_check_qp_attrs(%struct.ib_pd*, %struct.qlnxr_dev*, %struct.ib_qp_init_attr*, %struct.ib_udata*) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @get_qlnxr_cq(i32) #1

declare dso_local %struct.qlnxr_qp* @qlnx_zalloc(i32) #1

declare dso_local i32 @qlnxr_set_common_qp_params(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_pd*, %struct.ib_qp_init_attr*) #1

declare dso_local %struct.ib_qp* @qlnxr_create_gsi_qp(%struct.qlnxr_dev*, %struct.ib_qp_init_attr*, %struct.qlnxr_qp*) #1

declare dso_local i32 @qlnxr_create_user_qp(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_pd*, %struct.ib_udata*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @qlnxr_create_kernel_qp(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_pd*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @qlnxr_idr_add(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
