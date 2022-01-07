; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmbsub_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmbsub_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32*, i32, i32, i32* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfsmbsub_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmbsub_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmb_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.nfsmb_softc* @device_get_softc(i32 %5)
  store %struct.nfsmb_softc* %6, %struct.nfsmb_softc** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %10 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @device_delete_child(i32 %14, i32* %17)
  %19 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %20 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %23 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %22, i32 0, i32 2
  %24 = call i32 @mtx_destroy(i32* %23)
  %25 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %26 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %33 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %36 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %34, i32* %37)
  %39 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %40 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %29, %21
  ret i32 0
}

declare dso_local %struct.nfsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
