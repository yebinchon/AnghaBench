; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Can't detach: softc is null.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdspe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.sc_info* @device_get_softc(i32 %6)
  store %struct.sc_info* %7, %struct.sc_info** %4, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %9 = icmp eq %struct.sc_info* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_delete_children(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %82

20:                                               ; preds = %13
  %21 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %22 = call i32 @hdspe_dmafree(%struct.sc_info* %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bus_teardown_intr(i32 %28, i64 %31, i64 %34)
  br label %36

36:                                               ; preds = %27, %20
  %37 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bus_dma_tag_destroy(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 0, i64 %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @SYS_RES_MEMORY, align 4
  %66 = call i32 @PCIR_BAR(i32 0)
  %67 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %68 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %78 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @snd_mtxfree(i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %18, %10
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.sc_info* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @hdspe_dmafree(%struct.sc_info*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @snd_mtxfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
