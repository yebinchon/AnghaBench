; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_regular_request_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_regular_request_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32 }
%struct.g_mirror_disk = type { i32 }
%struct.bio = type { i64, i64 }

@BIO_FLUSH = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@G_MIRROR_DISK_FLAG_BROKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Request failed (error=%d).\00", align 1
@g_mirror_disconnect_on_failure = common dso_local global i64 0, align 8
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i64 0, align 8
@G_MIRROR_BUMP_SYNCID = common dso_local global i32 0, align 4
@G_MIRROR_BUMP_SYNCID_NOW = common dso_local global i32 0, align 4
@G_MIRROR_BUMP_GENID = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_MIRROR_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.g_mirror_disk*, %struct.bio*)* @g_mirror_regular_request_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_regular_request_error(%struct.g_mirror_softc* %0, %struct.g_mirror_disk* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.g_mirror_softc*, align 8
  %5 = alloca %struct.g_mirror_disk*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %4, align 8
  store %struct.g_mirror_disk* %1, %struct.g_mirror_disk** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BIO_FLUSH, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.bio*, %struct.bio** %6, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EOPNOTSUPP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %93

19:                                               ; preds = %12, %3
  %20 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %21 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @G_MIRROR_DISK_FLAG_BROKEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i32, i32* @G_MIRROR_DISK_FLAG_BROKEN, align 4
  %28 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %29 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @G_MIRROR_LOGREQ(i32 0, %struct.bio* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = load %struct.bio*, %struct.bio** %6, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @G_MIRROR_LOGREQ(i32 1, %struct.bio* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %37, %26
  %44 = load i64, i64* @g_mirror_disconnect_on_failure, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %43
  %47 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %48 = load i32, i32* @G_MIRROR_DISK_STATE_ACTIVE, align 4
  %49 = call i32 @g_mirror_ndisks(%struct.g_mirror_softc* %47, i32 %48)
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %93

51:                                               ; preds = %46
  %52 = load %struct.bio*, %struct.bio** %6, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ENXIO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.bio*, %struct.bio** %6, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BIO_READ, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @G_MIRROR_BUMP_SYNCID, align 4
  %65 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %66 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %88

69:                                               ; preds = %57, %51
  %70 = load %struct.bio*, %struct.bio** %6, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ENXIO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @G_MIRROR_BUMP_SYNCID_NOW, align 4
  %77 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %78 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %87

81:                                               ; preds = %69
  %82 = load i32, i32* @G_MIRROR_BUMP_GENID, align 4
  %83 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %84 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %90 = load i32, i32* @G_MIRROR_DISK_STATE_DISCONNECTED, align 4
  %91 = load i32, i32* @G_MIRROR_EVENT_DONTWAIT, align 4
  %92 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %18, %88, %46, %43
  ret void
}

declare dso_local i32 @G_MIRROR_LOGREQ(i32, %struct.bio*, i8*, i64) #1

declare dso_local i32 @g_mirror_ndisks(%struct.g_mirror_softc*, i32) #1

declare dso_local i32 @g_mirror_event_send(%struct.g_mirror_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
