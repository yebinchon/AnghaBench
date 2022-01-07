; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_msix_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_msix_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICR_RXO = common dso_local global i32 0, align 4
@E1000_ICR_RXSEQ = common dso_local global i32 0, align 4
@E1000_ICR_LSC = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i64 0, align 8
@E1000_IMS = common dso_local global i32 0, align 4
@EM_MSIX_LINK = common dso_local global i32 0, align 4
@E1000_IMS_LSC = common dso_local global i32 0, align 4
@E1000_ICS = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @em_msix_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_msix_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.adapter*
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 2
  %20 = load i32, i32* @E1000_ICR, align 4
  %21 = call i32 @E1000_READ_REG(%struct.TYPE_5__* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @E1000_ICR_RXO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @E1000_ICR_RXSEQ, align 4
  %34 = load i32, i32* @E1000_ICR_LSC, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @em_handle_link(i32 %41)
  br label %60

43:                                               ; preds = %31
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @e1000_82574, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 2
  %54 = load i32, i32* @E1000_IMS, align 4
  %55 = load i32, i32* @EM_MSIX_LINK, align 4
  %56 = load i32, i32* @E1000_IMS_LSC, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @E1000_WRITE_REG(%struct.TYPE_5__* %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_82574, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 2
  %74 = load i32, i32* @E1000_ICS, align 4
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @E1000_WRITE_REG(%struct.TYPE_5__* %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %68
  br label %93

80:                                               ; preds = %60
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 2
  %83 = load i32, i32* @E1000_IMS, align 4
  %84 = load i32, i32* @E1000_IMS_LSC, align 4
  %85 = call i32 @E1000_WRITE_REG(%struct.TYPE_5__* %82, i32 %83, i32 %84)
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 2
  %88 = load i32, i32* @E1000_EIMS, align 4
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @E1000_WRITE_REG(%struct.TYPE_5__* %87, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %80, %79
  %94 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %94
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @em_handle_link(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
