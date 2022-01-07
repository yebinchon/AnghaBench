; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_qp_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_cm_event_params = type { i32 }
%struct.qlnxr_iw_ep = type { %struct.TYPE_3__*, %struct.qlnxr_dev* }
%struct.TYPE_3__ = type { %struct.ib_qp }
%struct.ib_qp = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.qlnxr_dev = type { i32* }
%struct.ib_event.0 = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ib_qp* }

@.str = private unnamed_addr constant [60 x i8] c"[context, event, event_handler] = [%p, 0x%x, %s, %p] enter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_iw_qp_event(i8* %0, %struct.ecore_iwarp_cm_event_params* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_iwarp_cm_event_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qlnxr_iw_ep*, align 8
  %10 = alloca %struct.qlnxr_dev*, align 8
  %11 = alloca %struct.ib_qp*, align 8
  %12 = alloca %struct.ib_event.0, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ecore_iwarp_cm_event_params* %1, %struct.ecore_iwarp_cm_event_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.qlnxr_iw_ep*
  store %struct.qlnxr_iw_ep* %15, %struct.qlnxr_iw_ep** %9, align 8
  %16 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %17 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %16, i32 0, i32 1
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %17, align 8
  store %struct.qlnxr_dev* %18, %struct.qlnxr_dev** %10, align 8
  %19 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %9, align 8
  %20 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.ib_qp* %22, %struct.ib_qp** %11, align 8
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %24 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %33 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %32, i32 0, i32 1
  %34 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %33, align 8
  %35 = bitcast i32 (%struct.ib_event*, i32)* %34 to i32 (%struct.ib_event.0*, i32)*
  %36 = call i32 @QL_DPRINT12(i32* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30, i8* %31, i32 (%struct.ib_event.0*, i32)* %35)
  %37 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %38 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %37, i32 0, i32 1
  %39 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.ib_event*, i32)* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %12, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %45 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %12, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %49 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %12, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.ib_qp* %48, %struct.ib_qp** %50, align 8
  %51 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %52 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %51, i32 0, i32 1
  %53 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %52, align 8
  %54 = bitcast %struct.ib_event.0* %12 to %struct.ib_event*
  %55 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %56 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %53(%struct.ib_event* %54, i32 %57)
  br label %59

59:                                               ; preds = %41, %4
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i8*, i32, i8*, i32 (%struct.ib_event.0*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
