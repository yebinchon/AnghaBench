; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32 }

@disconnect_microseq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpoio_data*)* @vpoio_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpoio_disconnect(%struct.vpoio_data* %0) #0 {
  %2 = alloca %struct.vpoio_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %2, align 8
  %5 = load %struct.vpoio_data*, %struct.vpoio_data** %2, align 8
  %6 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.vpoio_data*, %struct.vpoio_data** %2, align 8
  %11 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @disconnect_microseq, align 4
  %14 = call i32 @ppb_MS_microseq(i32 %9, i32 %12, i32 %13, i32* %4)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.vpoio_data*, %struct.vpoio_data** %2, align 8
  %17 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ppb_release_bus(i32 %15, i32 %18)
  ret i32 %19
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
