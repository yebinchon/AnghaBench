; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_create_gsi_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_create_gsi_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qlnxr_dev = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.ib_qp_init_attr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qlnxr_qp = type { i8*, %struct.ib_qp, i8*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"qlnxr_check_gsi_qp_attrs failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"qlnxr_ll2_start failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"(!qp->rqe_wr_id)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"(!qp->wqe_wr_id)\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@QLNXR_CQ_TYPE_GSI = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"exit &qp->ibqp = %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"exit with error\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @qlnxr_create_gsi_qp(%struct.qlnxr_dev* %0, %struct.ib_qp_init_attr* %1, %struct.qlnxr_qp* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.qlnxr_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.qlnxr_qp* %2, %struct.qlnxr_qp** %7, align 8
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %14 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %15 = call i32 @qlnxr_check_gsi_qp_attrs(%struct.qlnxr_dev* %13, %struct.ib_qp_init_attr* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call i32 @QL_DPRINT11(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.ib_qp* @ERR_PTR(i32 %23)
  store %struct.ib_qp* %24, %struct.ib_qp** %4, align 8
  br label %148

25:                                               ; preds = %3
  %26 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %27 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %29 = call i32 @qlnxr_ll2_start(%struct.qlnxr_dev* %26, %struct.ib_qp_init_attr* %27, %struct.qlnxr_qp* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %34 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = call i32 @QL_DPRINT11(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.ib_qp* @ERR_PTR(i32 %37)
  store %struct.ib_qp* %38, %struct.ib_qp** %4, align 8
  br label %148

39:                                               ; preds = %25
  %40 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %41 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %48 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %51 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %55 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %58 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 %63, i32 %64)
  %66 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %67 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %69 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %39
  %73 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %74 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @QL_DPRINT11(%struct.TYPE_11__* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %134

77:                                               ; preds = %39
  %78 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %79 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kzalloc(i32 %84, i32 %85)
  %87 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %88 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %90 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %77
  %94 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %95 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = call i32 @QL_DPRINT11(%struct.TYPE_11__* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %134

98:                                               ; preds = %77
  %99 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %100 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %101 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %102 = call i32 @qlnxr_store_gsi_qp_cq(%struct.qlnxr_dev* %99, %struct.qlnxr_qp* %100, %struct.ib_qp_init_attr* %101)
  %103 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %104 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %107 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32 %105, i32 %110, i32 %111)
  %113 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %114 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %115 = call i32 @qlnxr_destroy_gsi_cq(%struct.qlnxr_dev* %113, %struct.ib_qp_init_attr* %114)
  %116 = load i8*, i8** @QLNXR_CQ_TYPE_GSI, align 8
  %117 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %118 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i8* %116, i8** %120, align 8
  %121 = load i8*, i8** @QLNXR_CQ_TYPE_GSI, align 8
  %122 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %123 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i8* %121, i8** %125, align 8
  %126 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %127 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %130 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %129, i32 0, i32 1
  %131 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.ib_qp* %130)
  %132 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %133 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %132, i32 0, i32 1
  store %struct.ib_qp* %133, %struct.ib_qp** %4, align 8
  br label %148

134:                                              ; preds = %93, %72
  %135 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %136 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @kfree(i8* %137)
  %139 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %140 = call i32 @qlnxr_ll2_stop(%struct.qlnxr_dev* %139)
  store i32 %140, i32* %8, align 4
  %141 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %142 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  %147 = call %struct.ib_qp* @ERR_PTR(i32 %146)
  store %struct.ib_qp* %147, %struct.ib_qp** %4, align 8
  br label %148

148:                                              ; preds = %134, %98, %32, %18
  %149 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %149
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @qlnxr_check_gsi_qp_attrs(%struct.qlnxr_dev*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i32 @qlnxr_ll2_start(%struct.qlnxr_dev*, %struct.ib_qp_init_attr*, %struct.qlnxr_qp*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @qlnxr_store_gsi_qp_cq(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qlnxr_destroy_gsi_cq(%struct.qlnxr_dev*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qlnxr_ll2_stop(%struct.qlnxr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
