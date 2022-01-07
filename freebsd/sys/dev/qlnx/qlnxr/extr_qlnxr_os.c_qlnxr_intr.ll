; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_cnq = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.qlnxr_cq = type { i64, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64, i32 (%struct.TYPE_4__*, i64)* }
%struct.regpair = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"enter cnq = %p\0A\00", align 1
@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"enter cnq = %p hw_comp_cons = 0x%x sw_comp_cons = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cq == NULL\0A\00", align 1
@QLNXR_CQ_MAGIC_NUMBER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"cq->sig = 0x%x QLNXR_CQ_MAGIC_NUMBER = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"calling comp_handler = %p ibcq = %p cq_context = 0x%x\0A\00", align 1
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"exit cnq = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qlnxr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qlnxr_cnq*, align 8
  %4 = alloca %struct.qlnxr_cq*, align 8
  %5 = alloca %struct.regpair*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.qlnxr_cnq*
  store %struct.qlnxr_cnq* %10, %struct.qlnxr_cnq** %3, align 8
  %11 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %12 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i32*, i8*, i8*, ...) @QL_DPRINT12(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %20 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IGU_INT_DISABLE, align 4
  %23 = call i32 @ecore_sb_ack(i32 %21, i32 %22, i32 0)
  %24 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %25 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ecore_sb_update_sb_idx(i32 %26)
  %28 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %29 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %34 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %33, i32 0, i32 4
  %35 = call i64 @ecore_chain_get_cons_idx(i32* %34)
  store i64 %35, i64* %7, align 8
  %36 = call i32 (...) @rmb()
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @QL_DPRINT12(i32* %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %38, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %110, %1
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %122

46:                                               ; preds = %42
  %47 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %48 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %47, i32 0, i32 4
  %49 = call i64 @ecore_chain_consume(i32* %48)
  %50 = inttoptr i64 %49 to %struct.regpair*
  store %struct.regpair* %50, %struct.regpair** %5, align 8
  %51 = load %struct.regpair*, %struct.regpair** %5, align 8
  %52 = getelementptr inbounds %struct.regpair, %struct.regpair* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.regpair*, %struct.regpair** %5, align 8
  %55 = getelementptr inbounds %struct.regpair, %struct.regpair* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @HILO_U64(i32 %53, i32 %56)
  %58 = inttoptr i64 %57 to %struct.qlnxr_cq*
  store %struct.qlnxr_cq* %58, %struct.qlnxr_cq** %4, align 8
  %59 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %60 = icmp eq %struct.qlnxr_cq* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %122

64:                                               ; preds = %46
  %65 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %66 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @QLNXR_CQ_MAGIC_NUMBER, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %73 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @QLNXR_CQ_MAGIC_NUMBER, align 8
  %76 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %74, i64 %75)
  br label %122

77:                                               ; preds = %64
  %78 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %79 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %81 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %77
  %85 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %86 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_4__*, i64)* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %93 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %92, i32 0, i32 2
  %94 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %95 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %93, i64 %97)
  %99 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %100 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %101, align 8
  %103 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %104 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %103, i32 0, i32 2
  %105 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %106 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 %102(%struct.TYPE_4__* %104, i64 %108)
  br label %110

110:                                              ; preds = %90, %84, %77
  %111 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %4, align 8
  %112 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %116 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %115, i32 0, i32 4
  %117 = call i64 @ecore_chain_get_cons_idx(i32* %116)
  store i64 %117, i64* %7, align 8
  %118 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %119 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %42

122:                                              ; preds = %70, %61, %42
  %123 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %124 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %129 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @ecore_rdma_cnq_prod_update(i32 %127, i32 %130, i64 %131)
  %133 = load %struct.qlnxr_cnq*, %struct.qlnxr_cnq** %3, align 8
  %134 = getelementptr inbounds %struct.qlnxr_cnq, %struct.qlnxr_cnq* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @IGU_INT_ENABLE, align 4
  %137 = call i32 @ecore_sb_ack(i32 %135, i32 %136, i32 1)
  %138 = load i32*, i32** %8, align 8
  %139 = load i8*, i8** %2, align 8
  %140 = call i32 (i32*, i8*, i8*, ...) @QL_DPRINT12(i32* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i8*, ...) #1

declare dso_local i32 @ecore_sb_ack(i32, i32, i32) #1

declare dso_local i32 @ecore_sb_update_sb_idx(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ecore_chain_get_cons_idx(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @ecore_chain_consume(i32*) #1

declare dso_local i64 @HILO_U64(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local i32 @ecore_rdma_cnq_prod_update(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
