; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nicvf_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.nicvf* @device_get_softc(i32 %4)
  store %struct.nicvf* %5, %struct.nicvf** %3, align 8
  %6 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %7 = call i32 @NICVF_CORE_LOCK(%struct.nicvf* %6)
  %8 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %9 = call i32 @nicvf_stop_locked(%struct.nicvf* %8)
  %10 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 3
  %12 = call i32 @mtx_destroy(i32* %11)
  %13 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %14 = call i32 @nicvf_release_all_interrupts(%struct.nicvf* %13)
  %15 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %23 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @rman_get_rid(i32* %24)
  %26 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %27 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bus_release_resource(i32 %20, i32 %21, i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 1
  %33 = call i32 @ifmedia_removeall(i32* %32)
  %34 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %35 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @if_free(i32 %36)
  %38 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %39 = call i32 @NICVF_CORE_UNLOCK(%struct.nicvf* %38)
  %40 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %41 = call i32 @NICVF_CORE_LOCK_DESTROY(%struct.nicvf* %40)
  ret i32 0
}

declare dso_local %struct.nicvf* @device_get_softc(i32) #1

declare dso_local i32 @NICVF_CORE_LOCK(%struct.nicvf*) #1

declare dso_local i32 @nicvf_stop_locked(%struct.nicvf*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @nicvf_release_all_interrupts(%struct.nicvf*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @NICVF_CORE_UNLOCK(%struct.nicvf*) #1

declare dso_local i32 @NICVF_CORE_LOCK_DESTROY(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
