; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_bulk_read_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_bulk_read_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32, i32*, i32*, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No upstream hook\0A\00", align 1
@UDBP_T_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @udbp_bulk_read_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udbp_bulk_read_complete(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.udbp_softc*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32 %12)
  store %struct.udbp_softc* %13, %struct.udbp_softc** %9, align 8
  %14 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %15 = icmp eq %struct.udbp_softc* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %70

17:                                               ; preds = %4
  %18 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %19 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %22 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %21, i32 0, i32 4
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  store %struct.mbuf* %23, %struct.mbuf** %10, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %17
  %27 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %28 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %27, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %28, align 8
  %29 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %30 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %35 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @NG_HOOK_NOT_VALID(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %26
  %40 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %43 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %48 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %51 = call i32 @NG_SEND_DATA_ONLY(i32 %46, i32* %49, %struct.mbuf* %50)
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  br label %52

52:                                               ; preds = %41, %17
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %55 = icmp ne %struct.mbuf* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %58 = call i32 @m_freem(%struct.mbuf* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %61 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @UDBP_T_RD, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usbd_transfer_start(i32 %65)
  %67 = load %struct.udbp_softc*, %struct.udbp_softc** %9, align 8
  %68 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock(i32* %68)
  br label %70

70:                                               ; preds = %59, %16
  ret void
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
