; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_ENVY24HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @envy24ht_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sc_info* @pcm_getdevinfo(i32 %7)
  store %struct.sc_info* %8, %struct.sc_info** %4, align 8
  %9 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %10 = icmp eq %struct.sc_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %134

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pcm_unregister(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %134

19:                                               ; preds = %12
  %20 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %21 = call i32 @envy24ht_dmafree(%struct.sc_info* %20)
  %22 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 11
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp ne i32 (i32)* %28, null
  br i1 %29, label %30, label %83

30:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 11
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 13
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %44(i32 %51)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %31

56:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 11
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 12
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %70(i32 %77)
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %57

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %19
  %84 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 11
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @envy24ht_cfgfree(%struct.TYPE_4__* %86)
  %88 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %89 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bus_dma_tag_destroy(i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %94 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bus_teardown_intr(i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @SYS_RES_IRQ, align 4
  %102 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %106 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bus_release_resource(i32 %100, i32 %101, i32 %104, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @SYS_RES_IOPORT, align 4
  %111 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %112 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %115 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bus_release_resource(i32 %109, i32 %110, i32 %113, i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @SYS_RES_IOPORT, align 4
  %120 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %121 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %124 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bus_release_resource(i32 %118, i32 %119, i32 %122, i32 %125)
  %127 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %128 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @snd_mtxfree(i32 %129)
  %131 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %132 = load i32, i32* @M_ENVY24HT, align 4
  %133 = call i32 @free(%struct.sc_info* %131, i32 %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %83, %17, %11
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @envy24ht_dmafree(%struct.sc_info*) #1

declare dso_local i32 @envy24ht_cfgfree(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
