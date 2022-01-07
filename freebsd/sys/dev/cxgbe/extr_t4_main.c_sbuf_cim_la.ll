; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_sbuf_cim_la.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_sbuf_cim_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sbuf = type { i32 }

@A_UP_UP_DBG_LA_CFG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHELSIO_T6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sbuf*, i32)* @sbuf_cim_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbuf_cim_la(%struct.adapter* %0, %struct.sbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sbuf* %1, %struct.sbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = load i32, i32* @A_UP_UP_DBG_LA_CFG, align 4
  %13 = call i32 @t4_cim_read(%struct.adapter* %11, i32 %12, i32 1, i32* %8)
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ true, %19 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @M_CXGBE, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %39, %40
  %42 = call i32* @malloc(i32 %37, i32 %38, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %4, align 4
  br label %78

47:                                               ; preds = %27
  %48 = load %struct.adapter*, %struct.adapter** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @t4_cim_read_la(%struct.adapter* %48, i32* %49, i32* null)
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %73

55:                                               ; preds = %47
  %56 = load %struct.adapter*, %struct.adapter** %5, align 8
  %57 = call i64 @chip_id(%struct.adapter* %56)
  %58 = load i64, i64* @CHELSIO_T6, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @sbuf_cim_la4(%struct.adapter* %61, %struct.sbuf* %62, i32* %63, i32 %64)
  br label %72

66:                                               ; preds = %55
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @sbuf_cim_la6(%struct.adapter* %67, %struct.sbuf* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @M_CXGBE, align 4
  %76 = call i32 @free(i32* %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %45, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @t4_cim_read(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @t4_cim_read_la(%struct.adapter*, i32*, i32*) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @sbuf_cim_la4(%struct.adapter*, %struct.sbuf*, i32*, i32) #1

declare dso_local i32 @sbuf_cim_la6(%struct.adapter*, %struct.sbuf*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
