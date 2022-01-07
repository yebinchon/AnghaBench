; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_inv_rkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_inv_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_send_wr = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mr = type { i32 }

@IB_WR_LOCAL_INV = common dso_local global i32 0, align 4
@ISER_FASTREG_LI_WRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_send_wr*, %struct.ib_mr*)* @iser_inv_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_inv_rkey(%struct.ib_send_wr* %0, %struct.ib_mr* %1) #0 {
  %3 = alloca %struct.ib_send_wr*, align 8
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_send_wr* %0, %struct.ib_send_wr** %3, align 8
  store %struct.ib_mr* %1, %struct.ib_mr** %4, align 8
  %6 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %7 = call i32 @memset(%struct.ib_send_wr* %6, i32 0, i32 12)
  %8 = load i32, i32* @IB_WR_LOCAL_INV, align 4
  %9 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %10 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ISER_FASTREG_LI_WRID, align 4
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %15 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %21 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iser_ib_inc_rkey(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ib_update_fast_reg_key(%struct.ib_mr* %24, i32 %25)
  ret void
}

declare dso_local i32 @memset(%struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @iser_ib_inc_rkey(i32) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.ib_mr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
