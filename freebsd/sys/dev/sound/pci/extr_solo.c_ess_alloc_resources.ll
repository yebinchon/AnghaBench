; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*, i32)* @ess_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_alloc_resources(%struct.ess_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ess_info* %0, %struct.ess_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @PCIR_BAR(i32 0)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SYS_RES_IOPORT, align 4
  %9 = load i32, i32* @RF_ACTIVE, align 4
  %10 = call i8* @bus_alloc_resource_any(i32 %7, i32 %8, i32* %5, i32 %9)
  %11 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %12 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = call i32 @PCIR_BAR(i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SYS_RES_IOPORT, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %5, i32 %16)
  %18 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %19 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = call i32 @PCIR_BAR(i32 2)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SYS_RES_IOPORT, align 4
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = call i8* @bus_alloc_resource_any(i32 %21, i32 %22, i32* %5, i32 %23)
  %25 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %26 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = call i32 @PCIR_BAR(i32 3)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i8* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %5, i32 %30)
  %32 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %33 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = call i32 @PCIR_BAR(i32 4)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SYS_RES_IOPORT, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource_any(i32 %35, i32 %36, i32* %5, i32 %37)
  %39 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %40 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  store i32 0, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = load i32, i32* @RF_SHAREABLE, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i32* %5, i32 %45)
  %47 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %48 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %50 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %79

53:                                               ; preds = %2
  %54 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %55 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %60 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %65 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %70 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %75 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %81

79:                                               ; preds = %73, %68, %63, %58, %53, %2
  %80 = load i32, i32* @ENXIO, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 0, %78 ], [ %80, %79 ]
  ret i32 %82
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
