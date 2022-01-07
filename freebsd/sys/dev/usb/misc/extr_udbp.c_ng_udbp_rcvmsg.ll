; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32, i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ngudbpstat = type { i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"flags = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_udbp_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_udbp_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.udbp_softc*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ngudbpstat*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32 %12)
  store %struct.udbp_softc* %13, %struct.udbp_softc** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %16 = call i32 @NGI_GET_MSG(i32 %14, %struct.ng_mesg* %15)
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %18 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %75 [
    i32 130, label %21
  ]

21:                                               ; preds = %3
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %23 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %72 [
    i32 129, label %26
    i32 128, label %56
  ]

26:                                               ; preds = %21
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %27, %struct.ng_mesg* %28, i32 8, i32 %29)
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = icmp ne %struct.ng_mesg* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %9, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %37 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ngudbpstat*
  store %struct.ngudbpstat* %39, %struct.ngudbpstat** %11, align 8
  %40 = load %struct.udbp_softc*, %struct.udbp_softc** %7, align 8
  %41 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load %struct.udbp_softc*, %struct.udbp_softc** %7, align 8
  %44 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ngudbpstat*, %struct.ngudbpstat** %11, align 8
  %47 = getelementptr inbounds %struct.ngudbpstat, %struct.ngudbpstat* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.udbp_softc*, %struct.udbp_softc** %7, align 8
  %49 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ngudbpstat*, %struct.ngudbpstat** %11, align 8
  %52 = getelementptr inbounds %struct.ngudbpstat, %struct.ngudbpstat* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.udbp_softc*, %struct.udbp_softc** %7, align 8
  %54 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  br label %74

56:                                               ; preds = %21
  %57 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %58 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 4
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %9, align 4
  br label %74

65:                                               ; preds = %56
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %67 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %74

72:                                               ; preds = %21
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %65, %63, %35, %33
  br label %77

75:                                               ; preds = %3
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %82 = call i32 @NG_RESPOND_MSG(i32 %78, i32 %79, i32 %80, %struct.ng_mesg* %81)
  %83 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %84 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %83)
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
