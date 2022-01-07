; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32 }

@DECLARE_WAIT_MICROSEQUENCE = common dso_local global i32 0, align 4
@wait_microseq = common dso_local global i32 0, align 4
@WAIT_RET = common dso_local global i32 0, align 4
@WAIT_TMO = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@nBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.vpoio_data*, i32)* @vpoio_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @vpoio_wait(%struct.vpoio_data* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.vpoio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @DECLARE_WAIT_MICROSEQUENCE, align 4
  %10 = load %struct.vpoio_data*, %struct.vpoio_data** %4, align 8
  %11 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @wait_microseq, align 4
  %15 = load i32, i32* @WAIT_RET, align 4
  %16 = bitcast i32* %7 to i8*
  %17 = load i32, i32* @WAIT_TMO, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ppb_MS_init_msq(i32 %14, i32 2, i32 %15, i8* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.vpoio_data*, %struct.vpoio_data** %4, align 8
  %22 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @wait_microseq, align 4
  %25 = call i32 @ppb_MS_microseq(i32 %20, i32 %23, i32 %24, i32* %8)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i8, i8* %3, align 1
  ret i8 %33
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_MS_init_msq(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
