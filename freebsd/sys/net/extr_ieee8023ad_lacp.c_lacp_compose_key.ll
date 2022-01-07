; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_compose_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_compose_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, i32, %struct.TYPE_3__*, %struct.lagg_port* }
%struct.TYPE_3__ = type { i32 }
%struct.lagg_port = type { %struct.lagg_softc* }
%struct.lagg_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LACP_STATE_AGGREGATION = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid media type\00", align 1
@IFM_FDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"aggregating HDX interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lacp_port*)* @lacp_compose_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lacp_compose_key(%struct.lacp_port* %0) #0 {
  %2 = alloca %struct.lacp_port*, align 8
  %3 = alloca %struct.lagg_port*, align 8
  %4 = alloca %struct.lagg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %2, align 8
  %8 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %9 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %8, i32 0, i32 3
  %10 = load %struct.lagg_port*, %struct.lagg_port** %9, align 8
  store %struct.lagg_port* %10, %struct.lagg_port** %3, align 8
  %11 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %12 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %11, i32 0, i32 0
  %13 = load %struct.lagg_softc*, %struct.lagg_softc** %12, align 8
  store %struct.lagg_softc* %13, %struct.lagg_softc** %4, align 8
  %14 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %15 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %18 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %25 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 32768
  store i32 %30, i32* %6, align 4
  br label %73

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @IFM_SUBTYPE(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @IFM_TYPE(i32 %34)
  %36 = load i64, i64* @IFM_ETHER, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IFM_FDX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %61 [
    i32 189, label %47
    i32 193, label %47
    i32 192, label %47
    i32 190, label %47
    i32 191, label %47
    i32 208, label %48
    i32 213, label %48
    i32 209, label %48
    i32 207, label %48
    i32 210, label %48
    i32 211, label %48
    i32 212, label %48
    i32 233, label %49
    i32 235, label %49
    i32 238, label %49
    i32 232, label %49
    i32 236, label %49
    i32 234, label %49
    i32 237, label %49
    i32 200, label %50
    i32 197, label %50
    i32 204, label %50
    i32 195, label %50
    i32 194, label %50
    i32 199, label %50
    i32 196, label %50
    i32 201, label %50
    i32 202, label %50
    i32 205, label %50
    i32 203, label %50
    i32 198, label %50
    i32 206, label %50
    i32 178, label %51
    i32 177, label %52
    i32 176, label %52
    i32 175, label %52
    i32 145, label %53
    i32 148, label %53
    i32 146, label %53
    i32 147, label %53
    i32 131, label %54
    i32 139, label %54
    i32 137, label %54
    i32 129, label %54
    i32 132, label %54
    i32 134, label %54
    i32 135, label %54
    i32 141, label %54
    i32 142, label %54
    i32 140, label %54
    i32 130, label %54
    i32 133, label %54
    i32 138, label %54
    i32 136, label %54
    i32 143, label %54
    i32 144, label %54
    i32 128, label %55
    i32 164, label %56
    i32 171, label %56
    i32 168, label %56
    i32 163, label %56
    i32 165, label %56
    i32 174, label %56
    i32 173, label %56
    i32 162, label %56
    i32 169, label %56
    i32 170, label %56
    i32 166, label %56
    i32 172, label %56
    i32 167, label %56
    i32 156, label %57
    i32 152, label %57
    i32 153, label %57
    i32 149, label %57
    i32 154, label %57
    i32 151, label %57
    i32 150, label %57
    i32 155, label %57
    i32 222, label %58
    i32 214, label %58
    i32 218, label %58
    i32 216, label %58
    i32 224, label %58
    i32 225, label %58
    i32 228, label %58
    i32 229, label %58
    i32 221, label %58
    i32 217, label %58
    i32 223, label %58
    i32 215, label %58
    i32 220, label %58
    i32 219, label %58
    i32 226, label %58
    i32 227, label %58
    i32 230, label %58
    i32 231, label %58
    i32 184, label %59
    i32 179, label %59
    i32 182, label %59
    i32 180, label %59
    i32 183, label %59
    i32 181, label %59
    i32 187, label %59
    i32 188, label %59
    i32 185, label %59
    i32 186, label %59
    i32 158, label %60
    i32 157, label %60
    i32 159, label %60
    i32 160, label %60
    i32 161, label %60
  ]

47:                                               ; preds = %31, %31, %31, %31, %31
  store i32 189, i32* %6, align 4
  br label %63

48:                                               ; preds = %31, %31, %31, %31, %31, %31, %31
  store i32 208, i32* %6, align 4
  br label %63

49:                                               ; preds = %31, %31, %31, %31, %31, %31, %31
  store i32 233, i32* %6, align 4
  br label %63

50:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 200, i32* %6, align 4
  br label %63

51:                                               ; preds = %31
  store i32 178, i32* %6, align 4
  br label %63

52:                                               ; preds = %31, %31, %31
  store i32 177, i32* %6, align 4
  br label %63

53:                                               ; preds = %31, %31, %31, %31
  store i32 145, i32* %6, align 4
  br label %63

54:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 131, i32* %6, align 4
  br label %63

55:                                               ; preds = %31
  store i32 128, i32* %6, align 4
  br label %63

56:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 164, i32* %6, align 4
  br label %63

57:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  store i32 156, i32* %6, align 4
  br label %63

58:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 222, i32* %6, align 4
  br label %63

59:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 184, i32* %6, align 4
  br label %63

60:                                               ; preds = %31, %31, %31, %31, %31
  store i32 158, i32* %6, align 4
  br label %63

61:                                               ; preds = %31
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47
  %64 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %65 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 5
  %70 = and i32 32736, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %63, %23
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @htons(i32 %74)
  ret i32 %75
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
