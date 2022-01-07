; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_calc_rwnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_calc_rwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_association = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"size_on_reasm_queue is %u\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"size_on_all_streams is %u\00", align 1
@SCTP_MINIMAL_RWND = common dso_local global i32 0, align 4
@MSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_calc_rwnd(%struct.sctp_tcb* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %126

13:                                               ; preds = %2
  %14 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ true, %13 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %25, i8* %29)
  %31 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %32 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %35, %23
  %41 = phi i1 [ true, %23 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %42, i8* %46)
  %48 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %40
  %54 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i32 @SCTP_SB_LIMIT_RCV(%struct.TYPE_4__* %66)
  %68 = load i32, i32* @SCTP_MINIMAL_RWND, align 4
  %69 = call i32 @max(i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %126

71:                                               ; preds = %58, %53, %40
  %72 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %73 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %72, i32 0, i32 0
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %75 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i64 @sctp_sbspace(%struct.TYPE_3__* %73, i32* %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %82 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MSIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %83, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @sctp_sbspace_sub(i32 %80, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MSIZE, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %96, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @sctp_sbspace_sub(i32 %93, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %71
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %126

110:                                              ; preds = %71
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %113 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @sctp_sbspace_sub(i32 %111, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %119 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %108, %63, %11
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @SCTP_SB_LIMIT_RCV(%struct.TYPE_4__*) #1

declare dso_local i64 @sctp_sbspace(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @sctp_sbspace_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
