; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ksyms/extr_ksyms.c_ksyms_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksyms_softc = type { i32, i32 }
%struct.iovec = type { i64, i8* }
%struct.uio = type { i32, i32, i32, i32, i64, i32, %struct.iovec* }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksyms_softc*, i8*, i32, i64)* @ksyms_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksyms_emit(%struct.ksyms_softc* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ksyms_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.iovec, align 8
  %10 = alloca %struct.uio, align 8
  store %struct.ksyms_softc* %0, %struct.ksyms_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i64, i64* %8, align 8
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 6
  store %struct.iovec* %9, %struct.iovec** %15, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @UIO_SYSSPACE, align 4
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @UIO_WRITE, align 4
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @curthread, align 4
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ksyms_softc*, %struct.ksyms_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ksyms_softc, %struct.ksyms_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ksyms_softc*, %struct.ksyms_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ksyms_softc, %struct.ksyms_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uiomove_object(i32 %29, i32 %32, %struct.uio* %10)
  ret i32 %33
}

declare dso_local i32 @uiomove_object(i32, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
