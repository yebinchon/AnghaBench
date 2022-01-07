; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_cdevpriv_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_cdevpriv_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksyms_softc = type { i32* }

@ksyms_mtx = common dso_local global i32 0, align 4
@sc_list = common dso_local global i32 0, align 4
@M_KSYMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ksyms_cdevpriv_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksyms_cdevpriv_dtr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ksyms_softc*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ksyms_softc*
  store %struct.ksyms_softc* %6, %struct.ksyms_softc** %3, align 8
  %7 = call i32 @sx_xlock(i32* @ksyms_mtx)
  %8 = load %struct.ksyms_softc*, %struct.ksyms_softc** %3, align 8
  %9 = load i32, i32* @sc_list, align 4
  %10 = call i32 @LIST_REMOVE(%struct.ksyms_softc* %8, i32 %9)
  %11 = call i32 @sx_xunlock(i32* @ksyms_mtx)
  %12 = load %struct.ksyms_softc*, %struct.ksyms_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ksyms_softc, %struct.ksyms_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @vm_object_deallocate(i32* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.ksyms_softc*, %struct.ksyms_softc** %3, align 8
  %22 = load i32, i32* @M_KSYMS, align 4
  %23 = call i32 @free(%struct.ksyms_softc* %21, i32 %22)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ksyms_softc*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @free(%struct.ksyms_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
