; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_set_num_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_set_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, i32, i32, i32, i32 }

@BGX_MODE_SGMII = common dso_local global i32 0, align 4
@BGX_MODE_XAUI = common dso_local global i32 0, align 4
@BGX_MODE_RXAUI = common dso_local global i32 0, align 4
@BGX_MODE_XFI = common dso_local global i32 0, align 4
@BGX_MODE_XLAUI = common dso_local global i32 0, align 4
@BGX_MODE_10G_KR = common dso_local global i32 0, align 4
@BGX_MODE_40G_KR = common dso_local global i32 0, align 4
@BGX_CMR_RX_LMACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*)* @bgx_set_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_set_num_ports(%struct.bgx* %0) #0 {
  %2 = alloca %struct.bgx*, align 8
  %3 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %2, align 8
  %4 = load %struct.bgx*, %struct.bgx** %2, align 8
  %5 = getelementptr inbounds %struct.bgx, %struct.bgx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %67 [
    i32 131, label %7
    i32 130, label %15
    i32 132, label %23
    i32 129, label %31
    i32 128, label %39
    i32 134, label %47
    i32 133, label %57
  ]

7:                                                ; preds = %1
  %8 = load %struct.bgx*, %struct.bgx** %2, align 8
  %9 = getelementptr inbounds %struct.bgx, %struct.bgx* %8, i32 0, i32 1
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* @BGX_MODE_SGMII, align 4
  %11 = load %struct.bgx*, %struct.bgx** %2, align 8
  %12 = getelementptr inbounds %struct.bgx, %struct.bgx* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bgx*, %struct.bgx** %2, align 8
  %14 = getelementptr inbounds %struct.bgx, %struct.bgx* %13, i32 0, i32 2
  store i32 0, i32* %14, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.bgx*, %struct.bgx** %2, align 8
  %17 = getelementptr inbounds %struct.bgx, %struct.bgx* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @BGX_MODE_XAUI, align 4
  %19 = load %struct.bgx*, %struct.bgx** %2, align 8
  %20 = getelementptr inbounds %struct.bgx, %struct.bgx* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bgx*, %struct.bgx** %2, align 8
  %22 = getelementptr inbounds %struct.bgx, %struct.bgx* %21, i32 0, i32 2
  store i32 228, i32* %22, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.bgx*, %struct.bgx** %2, align 8
  %25 = getelementptr inbounds %struct.bgx, %struct.bgx* %24, i32 0, i32 1
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* @BGX_MODE_RXAUI, align 4
  %27 = load %struct.bgx*, %struct.bgx** %2, align 8
  %28 = getelementptr inbounds %struct.bgx, %struct.bgx* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bgx*, %struct.bgx** %2, align 8
  %30 = getelementptr inbounds %struct.bgx, %struct.bgx* %29, i32 0, i32 2
  store i32 228, i32* %30, align 4
  br label %70

31:                                               ; preds = %1
  %32 = load %struct.bgx*, %struct.bgx** %2, align 8
  %33 = getelementptr inbounds %struct.bgx, %struct.bgx* %32, i32 0, i32 1
  store i32 4, i32* %33, align 4
  %34 = load i32, i32* @BGX_MODE_XFI, align 4
  %35 = load %struct.bgx*, %struct.bgx** %2, align 8
  %36 = getelementptr inbounds %struct.bgx, %struct.bgx* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bgx*, %struct.bgx** %2, align 8
  %38 = getelementptr inbounds %struct.bgx, %struct.bgx* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  br label %70

39:                                               ; preds = %1
  %40 = load %struct.bgx*, %struct.bgx** %2, align 8
  %41 = getelementptr inbounds %struct.bgx, %struct.bgx* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @BGX_MODE_XLAUI, align 4
  %43 = load %struct.bgx*, %struct.bgx** %2, align 8
  %44 = getelementptr inbounds %struct.bgx, %struct.bgx* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bgx*, %struct.bgx** %2, align 8
  %46 = getelementptr inbounds %struct.bgx, %struct.bgx* %45, i32 0, i32 2
  store i32 228, i32* %46, align 4
  br label %70

47:                                               ; preds = %1
  %48 = load %struct.bgx*, %struct.bgx** %2, align 8
  %49 = getelementptr inbounds %struct.bgx, %struct.bgx* %48, i32 0, i32 1
  store i32 4, i32* %49, align 4
  %50 = load i32, i32* @BGX_MODE_10G_KR, align 4
  %51 = load %struct.bgx*, %struct.bgx** %2, align 8
  %52 = getelementptr inbounds %struct.bgx, %struct.bgx* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bgx*, %struct.bgx** %2, align 8
  %54 = getelementptr inbounds %struct.bgx, %struct.bgx* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.bgx*, %struct.bgx** %2, align 8
  %56 = getelementptr inbounds %struct.bgx, %struct.bgx* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  br label %70

57:                                               ; preds = %1
  %58 = load %struct.bgx*, %struct.bgx** %2, align 8
  %59 = getelementptr inbounds %struct.bgx, %struct.bgx* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @BGX_MODE_40G_KR, align 4
  %61 = load %struct.bgx*, %struct.bgx** %2, align 8
  %62 = getelementptr inbounds %struct.bgx, %struct.bgx* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.bgx*, %struct.bgx** %2, align 8
  %64 = getelementptr inbounds %struct.bgx, %struct.bgx* %63, i32 0, i32 2
  store i32 228, i32* %64, align 4
  %65 = load %struct.bgx*, %struct.bgx** %2, align 8
  %66 = getelementptr inbounds %struct.bgx, %struct.bgx* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %70

67:                                               ; preds = %1
  %68 = load %struct.bgx*, %struct.bgx** %2, align 8
  %69 = getelementptr inbounds %struct.bgx, %struct.bgx* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %57, %47, %39, %31, %23, %15, %7
  %71 = load %struct.bgx*, %struct.bgx** %2, align 8
  %72 = load i32, i32* @BGX_CMR_RX_LMACS, align 4
  %73 = call i32 @bgx_reg_read(%struct.bgx* %71, i32 0, i32 %72)
  %74 = and i32 %73, 7
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.bgx*, %struct.bgx** %2, align 8
  %80 = getelementptr inbounds %struct.bgx, %struct.bgx* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %70
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
