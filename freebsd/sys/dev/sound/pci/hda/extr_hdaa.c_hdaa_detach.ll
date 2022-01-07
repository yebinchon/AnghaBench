; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i64 }

@M_HDAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdaa_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdaa_devinfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.hdaa_devinfo* @device_get_softc(i32 %6)
  store %struct.hdaa_devinfo* %7, %struct.hdaa_devinfo** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_delete_children(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %15 = call i32 @hdaa_lock(%struct.hdaa_devinfo* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @hdaa_unconfigure(i32 %16)
  %18 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %19 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %21 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %20, i32 0, i32 1
  %22 = call i32 @callout_stop(i32* %21)
  %23 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %24 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %23)
  %25 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %26 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %25, i32 0, i32 1
  %27 = call i32 @callout_drain(i32* %26)
  %28 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_HDAA, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %13, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.hdaa_devinfo* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @hdaa_lock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_unconfigure(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @hdaa_unlock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
