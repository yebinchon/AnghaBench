; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_pnpmss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_pnpmss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MD_CS42XX = common dso_local global i32 0, align 4
@BD_F_MSS_OFFSET = common dso_local global i32 0, align 4
@MD_CS423X = common dso_local global i32 0, align 4
@MD_YM0020 = common dso_local global i32 0, align 4
@MD_VIVO = common dso_local global i32 0, align 4
@MD_OPTI931 = common dso_local global i32 0, align 4
@MD_OPTI925 = common dso_local global i32 0, align 4
@MD_OPTI924 = common dso_local global i32 0, align 4
@BD_F_924PNP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MD_GUSPNP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pnpmss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpmss_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mss_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.mss_info* @malloc(i32 48, i32 %5, i32 %8)
  store %struct.mss_info* %9, %struct.mss_info** %4, align 8
  %10 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %11 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %13 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %15 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %17 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %16, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %19 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @MD_CS42XX, align 4
  %21 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %22 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @isa_get_logicalid(i32 %23)
  switch i32 %24, label %120 [
    i32 25358, label %25
    i32 90894, label %25
    i32 553691237, label %34
    i32 286315285, label %42
    i32 278074430, label %48
    i32 1351750718, label %59
    i32 5182, label %67
    i32 270710841, label %96
    i32 16798727, label %99
    i32 16777216, label %117
  ]

25:                                               ; preds = %1, %1
  %26 = load i32, i32* @BD_F_MSS_OFFSET, align 4
  %27 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %28 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @MD_CS423X, align 4
  %32 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %33 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  br label %126

34:                                               ; preds = %1
  %35 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %36 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %38 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = load i32, i32* @MD_YM0020, align 4
  %40 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %41 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  br label %126

42:                                               ; preds = %1
  %43 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %44 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @MD_VIVO, align 4
  %46 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %47 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  br label %126

48:                                               ; preds = %1
  %49 = load i32, i32* @BD_F_MSS_OFFSET, align 4
  %50 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %51 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %55 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %54, i32 0, i32 1
  store i32 3, i32* %55, align 4
  %56 = load i32, i32* @MD_OPTI931, align 4
  %57 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %58 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  br label %126

59:                                               ; preds = %1
  %60 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %61 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %63 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %62, i32 0, i32 1
  store i32 3, i32* %63, align 4
  %64 = load i32, i32* @MD_OPTI925, align 4
  %65 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %66 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  br label %126

67:                                               ; preds = %1
  %68 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %69 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %68, i32 0, i32 4
  store i32 229, i32* %69, align 8
  %70 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %71 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %70, i32 0, i32 5
  store i32 3, i32* %71, align 4
  %72 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %73 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %72, i32 0, i32 6
  store i32 3852, i32* %73, align 8
  %74 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %75 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %74, i32 0, i32 0
  store i32 2, i32* %75, align 8
  %76 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %77 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %76, i32 0, i32 1
  store i32 3, i32* %77, align 4
  %78 = load i32, i32* @MD_OPTI924, align 4
  %79 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %80 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @BD_F_924PNP, align 4
  %82 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %83 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %88 = call i32 @opti_init(i32 %86, %struct.mss_info* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %67
  %91 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %92 = load i32, i32* @M_DEVBUF, align 4
  %93 = call i32 @free(%struct.mss_info* %91, i32 %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %130

95:                                               ; preds = %67
  br label %126

96:                                               ; preds = %1
  %97 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %98 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %126

99:                                               ; preds = %1
  %100 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @azt2320_mss_mode(%struct.mss_info* %100, i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %106 = load i32, i32* @M_DEVBUF, align 4
  %107 = call i32 @free(%struct.mss_info* %105, i32 %106)
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %2, align 4
  br label %130

109:                                              ; preds = %99
  %110 = load i32, i32* @BD_F_MSS_OFFSET, align 4
  %111 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %112 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %116 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %115, i32 0, i32 0
  store i32 2, i32* %116, align 8
  br label %126

117:                                              ; preds = %1
  %118 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %119 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %118, i32 0, i32 3
  store i32 -1, i32* %119, align 4
  br label %126

120:                                              ; preds = %1
  %121 = load i32, i32* @BD_F_MSS_OFFSET, align 4
  %122 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %123 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %117, %109, %96, %95, %59, %48, %42, %34, %25
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %129 = call i32 @mss_doattach(i32 %127, %struct.mss_info* %128)
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %104, %90
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.mss_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @isa_get_logicalid(i32) #1

declare dso_local i32 @opti_init(i32, %struct.mss_info*) #1

declare dso_local i32 @free(%struct.mss_info*, i32) #1

declare dso_local i32 @azt2320_mss_mode(%struct.mss_info*, i32) #1

declare dso_local i32 @mss_doattach(i32, %struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
