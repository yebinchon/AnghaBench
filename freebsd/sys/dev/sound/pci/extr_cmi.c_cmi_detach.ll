; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i64, i32, i64, i32, i64, i64, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pcm_unregister(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sc_info* @pcm_getdevinfo(i32 %13)
  store %struct.sc_info* %14, %struct.sc_info** %4, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %16 = call i32 @cmi_uninit(%struct.sc_info* %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %18 = call i32 @cmi_power(%struct.sc_info* %17, i32 3)
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bus_dma_tag_destroy(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bus_teardown_intr(i32 %23, i64 %26, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 %35, i64 %38)
  %40 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %41 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %12
  %45 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mpu401_uninit(i64 %47)
  br label %49

49:                                               ; preds = %44, %12
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_IOPORT, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %54, i64 %57)
  %59 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %49
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @SYS_RES_IOPORT, align 4
  %66 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %68, i64 %71)
  br label %73

73:                                               ; preds = %63, %49
  %74 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %75 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @snd_mtxfree(i32 %76)
  %78 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = call i32 @free(%struct.sc_info* %78, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @cmi_uninit(%struct.sc_info*) #1

declare dso_local i32 @cmi_power(%struct.sc_info*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mpu401_uninit(i64) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
