; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_qp_link_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_qp_link_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i64, i32, i32, i32, i32 (i32, i32)*, %struct.ntb_transport_ctx*, i32 }
%struct.ntb_transport_ctx = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NTBT_QP_LINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"qp %d link up\0A\00", align 1
@NTB_LINK_UP = common dso_local global i32 0, align 4
@NTB_LINK_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_qp_link_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_qp_link_work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ntb_transport_qp*
  store %struct.ntb_transport_qp* %9, %struct.ntb_transport_qp** %3, align 8
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %13, i32 0, i32 5
  %15 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %14, align 8
  store %struct.ntb_transport_ctx* %15, %struct.ntb_transport_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %38, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @NTBT_QP_LINKS, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ntb_peer_spad_write(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NTBT_QP_LINKS, align 4
  %48 = call i32 @ntb_spad_read(i32 %46, i32 %47, i32* %7)
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %52 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = shl i64 1, %53
  %55 = and i64 %50, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %41
  %58 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %59 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ntb_printf(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %63 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %65 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %64, i32 0, i32 4
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = icmp ne i32 (i32, i32)* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %70 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %69, i32 0, i32 4
  %71 = load i32 (i32, i32)*, i32 (i32, i32)** %70, align 8
  %72 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %73 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NTB_LINK_UP, align 4
  %76 = call i32 %71(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %57
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %80 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = shl i64 1, %81
  %83 = call i32 @ntb_db_clear_mask(i32 %78, i64 %82)
  br label %99

84:                                               ; preds = %41
  %85 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %91 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %90, i32 0, i32 2
  %92 = load i32, i32* @NTB_LINK_DOWN_TIMEOUT, align 4
  %93 = load i32, i32* @hz, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sdiv i32 %94, 1000
  %96 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %97 = call i32 @callout_reset(i32* %91, i32 %95, void (i8*)* @ntb_qp_link_work, %struct.ntb_transport_qp* %96)
  br label %98

98:                                               ; preds = %89, %84
  br label %99

99:                                               ; preds = %98, %77
  ret void
}

declare dso_local i32 @ntb_peer_spad_write(i32, i32, i32) #1

declare dso_local i32 @ntb_spad_read(i32, i32, i32*) #1

declare dso_local i32 @ntb_printf(i32, i8*, i64) #1

declare dso_local i32 @ntb_db_clear_mask(i32, i64) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
