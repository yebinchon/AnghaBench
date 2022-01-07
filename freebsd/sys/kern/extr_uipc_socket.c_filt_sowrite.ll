; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_filt_sowrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_filt_sowrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@HHOOK_FILT_SOWRITE = common dso_local global i32 0, align 4
@SBS_CANTSENDMORE = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_sowrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_sowrite(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.knote*, %struct.knote** %4, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = call i64 @SOLISTENING(%struct.socket* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.TYPE_7__* %18)
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = call i64 @sbspace(%struct.TYPE_7__* %21)
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.socket*, %struct.socket** %6, align 8
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = load i32, i32* @HHOOK_FILT_SOWRITE, align 4
  %28 = call i32 @hhook_run_socket(%struct.socket* %25, %struct.knote* %26, i32 %27)
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SBS_CANTSENDMORE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %16
  %37 = load i32, i32* @EV_EOF, align 4
  %38 = load %struct.knote*, %struct.knote** %4, align 8
  %39 = getelementptr inbounds %struct.knote, %struct.knote* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.socket*, %struct.socket** %6, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.knote*, %struct.knote** %4, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  store i32 1, i32* %3, align 4
  br label %96

47:                                               ; preds = %16
  %48 = load %struct.socket*, %struct.socket** %6, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %96

53:                                               ; preds = %47
  %54 = load %struct.socket*, %struct.socket** %6, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SS_ISCONNECTED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.socket*, %struct.socket** %6, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PR_CONNREQUIRED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %96

70:                                               ; preds = %60, %53
  %71 = load %struct.knote*, %struct.knote** %4, align 8
  %72 = getelementptr inbounds %struct.knote, %struct.knote* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NOTE_LOWAT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.knote*, %struct.knote** %4, align 8
  %79 = getelementptr inbounds %struct.knote, %struct.knote* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.knote*, %struct.knote** %4, align 8
  %82 = getelementptr inbounds %struct.knote, %struct.knote* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %96

86:                                               ; preds = %70
  %87 = load %struct.knote*, %struct.knote** %4, align 8
  %88 = getelementptr inbounds %struct.knote, %struct.knote* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.socket*, %struct.socket** %6, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %89, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %86, %77, %69, %52, %36, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.TYPE_7__*) #1

declare dso_local i64 @sbspace(%struct.TYPE_7__*) #1

declare dso_local i32 @hhook_run_socket(%struct.socket*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
