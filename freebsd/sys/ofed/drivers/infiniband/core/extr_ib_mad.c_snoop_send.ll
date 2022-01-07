; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_snoop_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_snoop_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { i32, i32, %struct.ib_mad_snoop_private** }
%struct.ib_mad_snoop_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.ib_mad_send_buf*, %struct.ib_mad_send_wc*)* }
%struct.ib_mad_send_buf = type opaque
%struct.ib_mad_send_wc = type opaque
%struct.ib_mad_send_buf.0 = type { i32 }
%struct.ib_mad_send_wc.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_qp_info*, %struct.ib_mad_send_buf.0*, %struct.ib_mad_send_wc.1*, i32)* @snoop_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snoop_send(%struct.ib_mad_qp_info* %0, %struct.ib_mad_send_buf.0* %1, %struct.ib_mad_send_wc.1* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_mad_qp_info*, align 8
  %6 = alloca %struct.ib_mad_send_buf.0*, align 8
  %7 = alloca %struct.ib_mad_send_wc.1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_mad_snoop_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %5, align 8
  store %struct.ib_mad_send_buf.0* %1, %struct.ib_mad_send_buf.0** %6, align 8
  store %struct.ib_mad_send_wc.1* %2, %struct.ib_mad_send_wc.1** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %13 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %12, i32 0, i32 1
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %65, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %19 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %24 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %23, i32 0, i32 2
  %25 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %25, i64 %27
  %29 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %28, align 8
  store %struct.ib_mad_snoop_private* %29, %struct.ib_mad_snoop_private** %9, align 8
  %30 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %9, align 8
  %31 = icmp ne %struct.ib_mad_snoop_private* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %9, align 8
  %34 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32, %22
  br label %65

40:                                               ; preds = %32
  %41 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %9, align 8
  %42 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %41, i32 0, i32 2
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %45 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %44, i32 0, i32 1
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %9, align 8
  %49 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_2__*, %struct.ib_mad_send_buf*, %struct.ib_mad_send_wc*)*, i32 (%struct.TYPE_2__*, %struct.ib_mad_send_buf*, %struct.ib_mad_send_wc*)** %50, align 8
  %52 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %9, align 8
  %53 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %52, i32 0, i32 1
  %54 = load %struct.ib_mad_send_buf.0*, %struct.ib_mad_send_buf.0** %6, align 8
  %55 = bitcast %struct.ib_mad_send_buf.0* %54 to %struct.ib_mad_send_buf*
  %56 = load %struct.ib_mad_send_wc.1*, %struct.ib_mad_send_wc.1** %7, align 8
  %57 = bitcast %struct.ib_mad_send_wc.1* %56 to %struct.ib_mad_send_wc*
  %58 = call i32 %51(%struct.TYPE_2__* %53, %struct.ib_mad_send_buf* %55, %struct.ib_mad_send_wc* %57)
  %59 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %9, align 8
  %60 = call i32 @deref_snoop_agent(%struct.ib_mad_snoop_private* %59)
  %61 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %62 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %61, i32 0, i32 1
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %40, %39
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %16

68:                                               ; preds = %16
  %69 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %70 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %69, i32 0, i32 1
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @deref_snoop_agent(%struct.ib_mad_snoop_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
