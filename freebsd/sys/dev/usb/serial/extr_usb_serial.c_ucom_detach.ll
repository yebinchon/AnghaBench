; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_super_softc = type { i32, i32, i32, i32*, i32* }
%struct.ucom_softc = type { i32 }

@UCOM_FLAG_ATTACHED = common dso_local global i32 0, align 4
@UCOM_FLAG_WAIT_REFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucom_detach(%struct.ucom_super_softc* %0, %struct.ucom_softc* %1) #0 {
  %3 = alloca %struct.ucom_super_softc*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.ucom_super_softc* %0, %struct.ucom_super_softc** %3, align 8
  store %struct.ucom_softc* %1, %struct.ucom_softc** %4, align 8
  %6 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @UCOM_FLAG_ATTACHED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %99

13:                                               ; preds = %2
  %14 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sysctl_remove_oid(i32* %21, i32 1, i32 0)
  %23 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @sysctl_remove_oid(i32* %33, i32 1, i32 0)
  %35 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %38, i32 0, i32 2
  %40 = call i32 @usb_proc_drain(i32* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %74, %37
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %48, i64 %50
  %52 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UCOM_FLAG_ATTACHED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %59 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %59, i64 %61
  %63 = call i32 @ucom_detach_tty(%struct.ucom_super_softc* %58, %struct.ucom_softc* %62)
  %64 = load i32, i32* @UCOM_FLAG_ATTACHED, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %66, i64 %68
  %70 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %65
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %57, %47
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %41

77:                                               ; preds = %41
  %78 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %78, i32 0, i32 2
  %80 = call i32 @usb_proc_free(i32* %79)
  %81 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %82 = call i32 @ucom_unref(%struct.ucom_super_softc* %81)
  %83 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UCOM_FLAG_WAIT_REFS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %91 = call i32 @ucom_drain(%struct.ucom_super_softc* %90)
  br label %92

92:                                               ; preds = %89, %77
  %93 = load i32, i32* @UCOM_FLAG_ATTACHED, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %12
  ret void
}

declare dso_local i32 @sysctl_remove_oid(i32*, i32, i32) #1

declare dso_local i32 @usb_proc_drain(i32*) #1

declare dso_local i32 @ucom_detach_tty(%struct.ucom_super_softc*, %struct.ucom_softc*) #1

declare dso_local i32 @usb_proc_free(i32*) #1

declare dso_local i32 @ucom_unref(%struct.ucom_super_softc*) #1

declare dso_local i32 @ucom_drain(%struct.ucom_super_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
