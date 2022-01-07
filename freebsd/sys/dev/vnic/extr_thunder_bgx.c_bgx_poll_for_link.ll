; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_poll_for_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_poll_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@BGX_SPUX_STATUS1 = common dso_local global i32 0, align 4
@SPU_STATUS1_RCV_LNK = common dso_local global i32 0, align 4
@BGX_MODE_XLAUI = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bgx_poll_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_poll_for_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lmac*
  store %struct.lmac* %6, %struct.lmac** %3, align 8
  %7 = load %struct.lmac*, %struct.lmac** %3, align 8
  %8 = getelementptr inbounds %struct.lmac, %struct.lmac* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.lmac*, %struct.lmac** %3, align 8
  %11 = getelementptr inbounds %struct.lmac, %struct.lmac* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BGX_SPUX_STATUS1, align 4
  %14 = load i32, i32* @SPU_STATUS1_RCV_LNK, align 4
  %15 = call i32 @bgx_reg_modify(%struct.TYPE_4__* %9, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.lmac*, %struct.lmac** %3, align 8
  %17 = getelementptr inbounds %struct.lmac, %struct.lmac* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.lmac*, %struct.lmac** %3, align 8
  %20 = getelementptr inbounds %struct.lmac, %struct.lmac* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BGX_SPUX_STATUS1, align 4
  %23 = load i32, i32* @SPU_STATUS1_RCV_LNK, align 4
  %24 = call i32 @bgx_poll_reg(%struct.TYPE_4__* %18, i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.lmac*, %struct.lmac** %3, align 8
  %26 = getelementptr inbounds %struct.lmac, %struct.lmac* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.lmac*, %struct.lmac** %3, align 8
  %29 = getelementptr inbounds %struct.lmac, %struct.lmac* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BGX_SPUX_STATUS1, align 4
  %32 = call i32 @bgx_reg_read(%struct.TYPE_4__* %27, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SPU_STATUS1_RCV_LNK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %1
  %38 = load %struct.lmac*, %struct.lmac** %3, align 8
  %39 = getelementptr inbounds %struct.lmac, %struct.lmac* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.lmac*, %struct.lmac** %3, align 8
  %41 = getelementptr inbounds %struct.lmac, %struct.lmac* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BGX_MODE_XLAUI, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.lmac*, %struct.lmac** %3, align 8
  %49 = getelementptr inbounds %struct.lmac, %struct.lmac* %48, i32 0, i32 1
  store i32 40000, i32* %49, align 4
  br label %53

50:                                               ; preds = %37
  %51 = load %struct.lmac*, %struct.lmac** %3, align 8
  %52 = getelementptr inbounds %struct.lmac, %struct.lmac* %51, i32 0, i32 1
  store i32 10000, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.lmac*, %struct.lmac** %3, align 8
  %55 = getelementptr inbounds %struct.lmac, %struct.lmac* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  br label %59

56:                                               ; preds = %1
  %57 = load %struct.lmac*, %struct.lmac** %3, align 8
  %58 = getelementptr inbounds %struct.lmac, %struct.lmac* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.lmac*, %struct.lmac** %3, align 8
  %61 = getelementptr inbounds %struct.lmac, %struct.lmac* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lmac*, %struct.lmac** %3, align 8
  %64 = getelementptr inbounds %struct.lmac, %struct.lmac* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load %struct.lmac*, %struct.lmac** %3, align 8
  %69 = getelementptr inbounds %struct.lmac, %struct.lmac* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lmac*, %struct.lmac** %3, align 8
  %72 = getelementptr inbounds %struct.lmac, %struct.lmac* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.lmac*, %struct.lmac** %3, align 8
  %74 = getelementptr inbounds %struct.lmac, %struct.lmac* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.lmac*, %struct.lmac** %3, align 8
  %79 = call i32 @bgx_xaui_check_link(%struct.lmac* %78)
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %59
  %82 = load %struct.lmac*, %struct.lmac** %3, align 8
  %83 = getelementptr inbounds %struct.lmac, %struct.lmac* %82, i32 0, i32 4
  %84 = load i32, i32* @hz, align 4
  %85 = mul nsw i32 %84, 2
  %86 = load %struct.lmac*, %struct.lmac** %3, align 8
  %87 = call i32 @callout_reset(i32* %83, i32 %85, void (i8*)* @bgx_poll_for_link, %struct.lmac* %86)
  ret void
}

declare dso_local i32 @bgx_reg_modify(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @bgx_poll_reg(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @bgx_xaui_check_link(%struct.lmac*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.lmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
