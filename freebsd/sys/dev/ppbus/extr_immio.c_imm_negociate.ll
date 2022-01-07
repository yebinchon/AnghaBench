; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_negociate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_negociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32 }

@DECLARE_NEGOCIATE_MICROSEQ = common dso_local global i32 0, align 4
@negociate_microseq = common dso_local global i32 0, align 4
@NEGOCIATED_MODE = common dso_local global i32 0, align 4
@VP0_ENEGOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpoio_data*)* @imm_negociate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_negociate(%struct.vpoio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpoio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %3, align 8
  %7 = load i32, i32* @DECLARE_NEGOCIATE_MICROSEQ, align 4
  %8 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %9 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @PPB_IN_NIBBLE_MODE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @PPB_IN_PS2_MODE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %35

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, i32* @negociate_microseq, align 4
  %25 = load i32, i32* @NEGOCIATED_MODE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ppb_MS_init_msq(i32 %24, i32 1, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %30 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @negociate_microseq, align 4
  %33 = call i32 @ppb_MS_microseq(i32 %28, i32 %31, i32 %32, i32* %6)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %23, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @PPB_IN_NIBBLE_MODE(i32) #1

declare dso_local i64 @PPB_IN_PS2_MODE(i32) #1

declare dso_local i32 @ppb_MS_init_msq(i32, i32, i32, i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
