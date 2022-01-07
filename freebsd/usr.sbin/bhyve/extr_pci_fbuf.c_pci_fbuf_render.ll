; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_render.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhyvegc = type { i32 }
%struct.pci_fbuf_softc = type { i64, i64, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_fbuf_render(%struct.bhyvegc* %0, i8* %1) #0 {
  %3 = alloca %struct.bhyvegc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_fbuf_softc*, align 8
  store %struct.bhyvegc* %0, %struct.bhyvegc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pci_fbuf_softc*
  store %struct.pci_fbuf_softc* %7, %struct.pci_fbuf_softc** %5, align 8
  %8 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %9 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %14 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.bhyvegc*, %struct.bhyvegc** %3, align 8
  %21 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %22 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @vga_render(%struct.bhyvegc* %20, i32 %23)
  br label %67

25:                                               ; preds = %12, %2
  %26 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %27 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %30 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %36 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %39 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %34, %25
  %44 = load %struct.bhyvegc*, %struct.bhyvegc** %3, align 8
  %45 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %46 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %50 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @bhyvegc_resize(%struct.bhyvegc* %44, i64 %48, i64 %52)
  %54 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %55 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %59 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %61 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %5, align 8
  %65 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %43, %34
  br label %67

67:                                               ; preds = %66, %19
  ret void
}

declare dso_local i32 @vga_render(%struct.bhyvegc*, i32) #1

declare dso_local i32 @bhyvegc_resize(%struct.bhyvegc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
