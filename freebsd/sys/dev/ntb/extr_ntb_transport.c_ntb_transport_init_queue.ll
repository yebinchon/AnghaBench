; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_init_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, %struct.ntb_transport_qp*, %struct.ntb_transport_mw* }
%struct.ntb_transport_qp = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i32*, i32, %struct.ntb_transport_ctx* }
%struct.ntb_transport_mw = type { i64, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"uh oh?\00", align 1
@transport_mtu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ntb rx q\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ntb tx free q\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ntb transport tx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ntb_transport_rxc_db = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ntbt_rx\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s rx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_ctx*, i32)* @ntb_transport_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_init_queue(%struct.ntb_transport_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_mw*, align 8
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @QP_TO_MW(%struct.ntb_transport_ctx* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %19, i32 0, i32 4
  %21 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %21, i64 %23
  store %struct.ntb_transport_mw* %24, %struct.ntb_transport_mw** %5, align 8
  %25 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %25, i32 0, i32 3
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i64 %29
  store %struct.ntb_transport_qp* %30, %struct.ntb_transport_qp** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %33 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %35 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %36 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %35, i32 0, i32 19
  store %struct.ntb_transport_ctx* %34, %struct.ntb_transport_ctx** %36, align 8
  %37 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %41 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %40, i32 0, i32 18
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %43 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %45 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %44, i32 0, i32 17
  store i32* null, i32** %45, align 8
  %46 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %47 = call i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %46)
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = urem i32 %51, %52
  %54 = icmp ult i32 %48, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %2
  %56 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = udiv i32 %58, %59
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %68

62:                                               ; preds = %2
  %63 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = udiv i32 %65, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %70 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  %72 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %73 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = udiv i32 %74, %75
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %12, align 4
  %81 = udiv i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = mul i64 %78, %82
  store i64 %83, i64* %8, align 8
  %84 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %85 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %90 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %89, i32 0, i32 15
  store i32* %88, i32** %90, align 8
  %91 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %92 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %91, i32 0, i32 15
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @KASSERT(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %97, %98
  %100 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %101 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %103 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @KASSERT(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %108 = load i64, i64* %9, align 8
  %109 = sub i64 %108, 4
  store i64 %109, i64* %9, align 8
  %110 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %111 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %110, i32 0, i32 15
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = bitcast i32* %114 to i8*
  %116 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %117 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %116, i32 0, i32 16
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @transport_mtu, align 4
  %119 = load i64, i64* %9, align 8
  %120 = udiv i64 %119, 2
  %121 = call i64 @qmin(i32 %118, i64 %120)
  %122 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %123 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %126 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = udiv i64 %124, %127
  %129 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %130 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %132 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %131, i32 0, i32 14
  %133 = call i32 @callout_init(i32* %132, i32 0)
  %134 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %135 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %134, i32 0, i32 13
  %136 = call i32 @callout_init(i32* %135, i32 1)
  %137 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %138 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %137, i32 0, i32 12
  %139 = load i32, i32* @MTX_SPIN, align 4
  %140 = call i32 @mtx_init(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %139)
  %141 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %142 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %141, i32 0, i32 11
  %143 = load i32, i32* @MTX_SPIN, align 4
  %144 = call i32 @mtx_init(i32* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %143)
  %145 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %146 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %145, i32 0, i32 10
  %147 = load i32, i32* @MTX_DEF, align 4
  %148 = call i32 @mtx_init(i32* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %147)
  %149 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %150 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %149, i32 0, i32 9
  %151 = load i32, i32* @ntb_transport_rxc_db, align 4
  %152 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %153 = call i32 @TASK_INIT(i32* %150, i32 0, i32 %151, %struct.ntb_transport_qp* %152)
  %154 = load i32, i32* @M_WAITOK, align 4
  %155 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %156 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %157 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %156, i32 0, i32 8
  %158 = call i32 @taskqueue_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %154, i32 %155, i32* %157)
  %159 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %160 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %162 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %161, i32 0, i32 8
  %163 = load i32, i32* @PI_NET, align 4
  %164 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %165 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_get_nameunit(i32 %166)
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @taskqueue_start_threads(i32* %162, i32 1, i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %171 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %170, i32 0, i32 7
  %172 = call i32 @STAILQ_INIT(i32* %171)
  %173 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %174 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %173, i32 0, i32 6
  %175 = call i32 @STAILQ_INIT(i32* %174)
  %176 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %177 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %176, i32 0, i32 5
  %178 = call i32 @STAILQ_INIT(i32* %177)
  ret void
}

declare dso_local i32 @QP_TO_MW(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @qmin(i32, i64) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ntb_transport_qp*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
