; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_cq_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_cq_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_comp = type { %struct.ib_wc*, %struct.ib_cq* }
%struct.ib_wc = type { i32 }
%struct.ib_cq = type { i32 }

@iser_cq_poll_limit = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @iser_cq_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_cq_tasklet_fn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_comp*, align 8
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.iser_comp*
  store %struct.iser_comp* %12, %struct.iser_comp** %5, align 8
  %13 = load %struct.iser_comp*, %struct.iser_comp** %5, align 8
  %14 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %13, i32 0, i32 1
  %15 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  store %struct.ib_cq* %15, %struct.ib_cq** %6, align 8
  %16 = load %struct.iser_comp*, %struct.iser_comp** %5, align 8
  %17 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %16, i32 0, i32 0
  %18 = load %struct.ib_wc*, %struct.ib_wc** %17, align 8
  store %struct.ib_wc* %18, %struct.ib_wc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %50, %2
  %20 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %21 = load %struct.iser_comp*, %struct.iser_comp** %5, align 8
  %22 = getelementptr inbounds %struct.iser_comp, %struct.iser_comp* %21, i32 0, i32 0
  %23 = load %struct.ib_wc*, %struct.ib_wc** %22, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.ib_wc* %23)
  %25 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %26 = call i32 @ib_poll_cq(%struct.ib_cq* %20, i32 %24, %struct.ib_wc* %25)
  store i32 %26, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i64 %36
  %38 = call i32 @iser_handle_wc(%struct.ib_wc* %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @iser_cq_poll_limit, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %19

51:                                               ; preds = %49, %19
  %52 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %53 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %54 = call i32 @ib_req_notify_cq(%struct.ib_cq* %52, i32 %53)
  ret void
}

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ib_wc*) #1

declare dso_local i32 @iser_handle_wc(%struct.ib_wc*) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
