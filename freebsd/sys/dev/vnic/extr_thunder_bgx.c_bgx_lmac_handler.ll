; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bgx_lmac_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_lmac_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.lmac*
  store %struct.lmac* %10, %struct.lmac** %3, align 8
  %11 = load %struct.lmac*, %struct.lmac** %3, align 8
  %12 = getelementptr inbounds %struct.lmac, %struct.lmac* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lmac*, %struct.lmac** %3, align 8
  %15 = getelementptr inbounds %struct.lmac, %struct.lmac* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @LMAC_MEDIA_STATUS(i32 %13, i32 %16, i32* %4, i32* %5, i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %86

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.lmac*, %struct.lmac** %3, align 8
  %26 = getelementptr inbounds %struct.lmac, %struct.lmac* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %24, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.lmac*, %struct.lmac** %3, align 8
  %35 = getelementptr inbounds %struct.lmac, %struct.lmac* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load %struct.lmac*, %struct.lmac** %3, align 8
  %41 = getelementptr inbounds %struct.lmac, %struct.lmac* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.lmac*, %struct.lmac** %3, align 8
  %47 = getelementptr inbounds %struct.lmac, %struct.lmac* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39, %33
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %45, %30
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.lmac*, %struct.lmac** %3, align 8
  %55 = getelementptr inbounds %struct.lmac, %struct.lmac* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.lmac*, %struct.lmac** %3, align 8
  %58 = getelementptr inbounds %struct.lmac, %struct.lmac* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.lmac*, %struct.lmac** %3, align 8
  %61 = getelementptr inbounds %struct.lmac, %struct.lmac* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  br label %86

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.lmac*, %struct.lmac** %3, align 8
  %70 = getelementptr inbounds %struct.lmac, %struct.lmac* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  br label %74

71:                                               ; preds = %65
  %72 = load %struct.lmac*, %struct.lmac** %3, align 8
  %73 = getelementptr inbounds %struct.lmac, %struct.lmac* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.lmac*, %struct.lmac** %3, align 8
  %76 = getelementptr inbounds %struct.lmac, %struct.lmac* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.lmac*, %struct.lmac** %3, align 8
  %81 = call i32 @bgx_sgmii_change_link_state(%struct.lmac* %80)
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.lmac*, %struct.lmac** %3, align 8
  %84 = call i32 @bgx_xaui_check_link(%struct.lmac* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %64, %20
  %87 = load %struct.lmac*, %struct.lmac** %3, align 8
  %88 = getelementptr inbounds %struct.lmac, %struct.lmac* %87, i32 0, i32 4
  %89 = load i32, i32* @hz, align 4
  %90 = mul nsw i32 %89, 2
  %91 = load %struct.lmac*, %struct.lmac** %3, align 8
  %92 = call i32 @callout_reset(i32* %88, i32 %90, void (i8*)* @bgx_lmac_handler, %struct.lmac* %91)
  ret void
}

declare dso_local i32 @LMAC_MEDIA_STATUS(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bgx_sgmii_change_link_state(%struct.lmac*) #1

declare dso_local i32 @bgx_xaui_check_link(%struct.lmac*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.lmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
