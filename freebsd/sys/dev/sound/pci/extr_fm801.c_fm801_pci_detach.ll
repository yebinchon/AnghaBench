; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_info = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"Forte Media FM801 detach\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fm801_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm801_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.fm801_info* @pcm_getdevinfo(i32 %7)
  store %struct.fm801_info* %8, %struct.fm801_info** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @bus_generic_detach(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %17 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %23 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @device_delete_child(i32 %21, i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %76

30:                                               ; preds = %20
  %31 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %32 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %31, i32 0, i32 7
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %15
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pcm_unregister(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %43 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %46 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %49 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_release_resource(i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %54 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %57 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bus_teardown_intr(i32 %52, i32 %55, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %63 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %66 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bus_release_resource(i32 %60, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %70 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bus_dma_tag_destroy(i32 %71)
  %73 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = call i32 @free(%struct.fm801_info* %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %40, %38, %28, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local %struct.fm801_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.fm801_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
