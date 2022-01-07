; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sv_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sv_detach(i32 %0) #0 {
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
  br label %76

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sc_info* @pcm_getdevinfo(i32 %13)
  store %struct.sc_info* %14, %struct.sc_info** %4, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %16 = call i32 @sv_mix_mute_all(%struct.sc_info* %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %18 = call i32 @sv_power(%struct.sc_info* %17, i32 3)
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_dma_tag_destroy(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bus_teardown_intr(i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bus_release_resource(i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bus_release_resource(i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %64 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_release_resource(i32 %62, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = call i32 @free(%struct.sc_info* %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %12, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @sv_mix_mute_all(%struct.sc_info*) #1

declare dso_local i32 @sv_power(%struct.sc_info*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
