; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_guspcm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_guspcm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i32, i32*, i32, i64, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BD_F_MSS_OFFSET = common dso_local global i32 0, align 4
@MD_GUSMAX = common dso_local global i32 0, align 4
@MD_GUSPNP = common dso_local global i32 0, align 4
@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @guspcm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guspcm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @malloc(i32 48, i32 %11, i32 %14)
  %16 = inttoptr i64 %15 to %struct.mss_info*
  store %struct.mss_info* %16, %struct.mss_info** %5, align 8
  %17 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %18 = icmp eq %struct.mss_info* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %119

21:                                               ; preds = %1
  %22 = load i32, i32* @BD_F_MSS_OFFSET, align 4
  %23 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %24 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %26 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %25, i32 0, i32 0
  store i32 2, i32* %26, align 8
  %27 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %28 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %30 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %32 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %34 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %33, i32 0, i32 3
  store i32 -1, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @isa_get_logicalid(i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load i32, i32* @MD_GUSMAX, align 4
  %40 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %41 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  br label %48

42:                                               ; preds = %21
  %43 = load i32, i32* @MD_GUSPNP, align 4
  %44 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %45 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %47 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  br label %115

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @device_get_flags(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %57 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SYS_RES_IOPORT, align 4
  %61 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %62 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %61, i32 0, i32 1
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = call i32* @bus_alloc_resource_anywhere(i32 %59, i32 %60, i32* %62, i32 8, i32 %63)
  %65 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %66 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %68 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @mss_release_resources(%struct.mss_info* %72, i32 %73)
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %2, align 4
  br label %119

76:                                               ; preds = %58
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @isa_get_port(i32 %77)
  store i32 %78, i32* %6, align 4
  store i8 64, i8* %8, align 1
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @isa_get_drq(i32 %79)
  %81 = icmp sgt i32 %80, 3
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, 16
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %8, align 1
  br label %87

87:                                               ; preds = %82, %76
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp sgt i32 %95, 3
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8, i8* %8, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %99, 32
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %8, align 1
  br label %102

102:                                              ; preds = %97, %92, %87
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %103, 4
  %105 = and i32 %104, 15
  %106 = load i8, i8* %8, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %8, align 1
  %110 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %111 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i8, i8* %8, align 1
  %114 = call i32 @port_wr(i32* %112, i32 6, i8 zeroext %113)
  br label %115

115:                                              ; preds = %102, %42
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %118 = call i32 @mss_doattach(i32 %116, %struct.mss_info* %117)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %71, %19
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @isa_get_logicalid(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mss_release_resources(%struct.mss_info*, i32) #1

declare dso_local i32 @isa_get_port(i32) #1

declare dso_local i32 @isa_get_drq(i32) #1

declare dso_local i32 @port_wr(i32*, i32, i8 zeroext) #1

declare dso_local i32 @mss_doattach(i32, %struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
