; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_crypto_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.glxsb_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc* }
%struct.glxsb_session = type { i32 }
%struct.cryptop = type { i32 }
%struct.cryptodesc = type { %struct.cryptodesc* }

@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @glxsb_crypto_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxsb_crypto_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.glxsb_softc*, align 8
  %6 = alloca %struct.glxsb_session*, align 8
  %7 = alloca %struct.cryptop*, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.cryptodesc*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.glxsb_softc*
  store %struct.glxsb_softc* %12, %struct.glxsb_softc** %5, align 8
  %13 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %14 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  store %struct.cryptodesc* %16, %struct.cryptodesc** %9, align 8
  %17 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %18 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.cryptodesc*, %struct.cryptodesc** %19, align 8
  store %struct.cryptodesc* %20, %struct.cryptodesc** %8, align 8
  %21 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %22 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.cryptop*, %struct.cryptop** %23, align 8
  store %struct.cryptop* %24, %struct.cryptop** %7, align 8
  %25 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %26 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.glxsb_session*, %struct.glxsb_session** %27, align 8
  store %struct.glxsb_session* %28, %struct.glxsb_session** %6, align 8
  %29 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %30 = icmp ne %struct.cryptodesc* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %33 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %32, i32 0, i32 0
  %34 = load %struct.cryptodesc*, %struct.cryptodesc** %33, align 8
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %36 = icmp eq %struct.cryptodesc* %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %39 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %40 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %41 = call i32 @glxsb_hash_process(%struct.glxsb_session* %38, %struct.cryptodesc* %39, %struct.cryptop* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %74

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %31, %2
  %47 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %48 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %49 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %50 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %51 = call i32 @glxsb_crypto_encdec(%struct.cryptop* %47, %struct.cryptodesc* %48, %struct.glxsb_session* %49, %struct.glxsb_softc* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %74

55:                                               ; preds = %46
  %56 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %57 = icmp ne %struct.cryptodesc* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %60 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %59, i32 0, i32 0
  %61 = load %struct.cryptodesc*, %struct.cryptodesc** %60, align 8
  %62 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %63 = icmp eq %struct.cryptodesc* %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %66 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %67 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %68 = call i32 @glxsb_hash_process(%struct.glxsb_session* %65, %struct.cryptodesc* %66, %struct.cryptop* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %74

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %58, %55
  br label %74

74:                                               ; preds = %73, %71, %54, %44
  %75 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %76 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %75, i32 0, i32 1
  %77 = call i32 @mtx_lock(i32* %76)
  %78 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %79 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %83 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %82, i32 0, i32 1
  %84 = call i32 @mtx_unlock(i32* %83)
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %87 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.glxsb_softc*, %struct.glxsb_softc** %5, align 8
  %89 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CRYPTO_SYMQ, align 4
  %92 = call i32 @crypto_unblock(i32 %90, i32 %91)
  %93 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %94 = call i32 @crypto_done(%struct.cryptop* %93)
  ret void
}

declare dso_local i32 @glxsb_hash_process(%struct.glxsb_session*, %struct.cryptodesc*, %struct.cryptop*) #1

declare dso_local i32 @glxsb_crypto_encdec(%struct.cryptop*, %struct.cryptodesc*, %struct.glxsb_session*, %struct.glxsb_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @crypto_unblock(i32, i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
