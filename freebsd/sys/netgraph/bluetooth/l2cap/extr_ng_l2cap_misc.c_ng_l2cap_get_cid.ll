; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_get_cid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_get_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@NG_L2CAP_LELAST_CID = common dso_local global i32 0, align 4
@NG_L2CAP_L2CA_IDTYPE_LE = common dso_local global i32 0, align 4
@NG_L2CAP_LAST_CID = common dso_local global i32 0, align 4
@NG_L2CAP_L2CA_IDTYPE_BREDR = common dso_local global i32 0, align 4
@NG_L2CAP_FIRST_CID = common dso_local global i32 0, align 4
@NG_L2CAP_NULL_CID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @ng_l2cap_get_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2cap_get_cid(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @NG_L2CAP_LELAST_CID, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @NG_L2CAP_L2CA_IDTYPE_LE, align 4
  store i32 %17, i32* %9, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @NG_L2CAP_LAST_CID, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @NG_L2CAP_L2CA_IDTYPE_BREDR, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NG_L2CAP_FIRST_CID, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @NG_L2CAP_FIRST_CID, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %24
  br label %35

35:                                               ; preds = %69, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32* @ng_l2cap_chan_by_scid(%struct.TYPE_4__* %40, i32 %41, i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %72

58:                                               ; preds = %39
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @NG_L2CAP_FIRST_CID, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @NG_L2CAP_FIRST_CID, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %58
  br label %35

70:                                               ; preds = %35
  %71 = load i32, i32* @NG_L2CAP_NULL_CID, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %56
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32* @ng_l2cap_chan_by_scid(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
