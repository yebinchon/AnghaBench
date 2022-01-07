; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_softc = type { i32 }
%struct.proto_busdma = type { i32, i32 }
%struct.proto_ioc_busdma = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.proto_tag = type { i32 }
%struct.proto_md = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_busdma_ioctl(%struct.proto_softc* %0, %struct.proto_busdma* %1, %struct.proto_ioc_busdma* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.proto_softc*, align 8
  %6 = alloca %struct.proto_busdma*, align 8
  %7 = alloca %struct.proto_ioc_busdma*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.proto_tag*, align 8
  %10 = alloca %struct.proto_md*, align 8
  %11 = alloca i32, align 4
  store %struct.proto_softc* %0, %struct.proto_softc** %5, align 8
  store %struct.proto_busdma* %1, %struct.proto_busdma** %6, align 8
  store %struct.proto_ioc_busdma* %2, %struct.proto_ioc_busdma** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %12 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %13 = getelementptr inbounds %struct.proto_busdma, %struct.proto_busdma* %12, i32 0, i32 0
  %14 = call i32 @sx_xlock(i32* %13)
  store i32 0, i32* %11, align 4
  %15 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %16 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %164 [
    i32 130, label %18
    i32 129, label %28
    i32 128, label %43
    i32 133, label %57
    i32 132, label %74
    i32 137, label %88
    i32 136, label %105
    i32 135, label %119
    i32 134, label %135
    i32 131, label %149
  ]

18:                                               ; preds = %4
  %19 = load %struct.proto_softc*, %struct.proto_softc** %5, align 8
  %20 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_get_dma_tag(i32 %21)
  %23 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %24 = getelementptr inbounds %struct.proto_busdma, %struct.proto_busdma* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %26 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %27 = call i32 @proto_busdma_tag_create(%struct.proto_busdma* %25, %struct.proto_tag* null, %struct.proto_ioc_busdma* %26)
  store i32 %27, i32* %11, align 4
  br label %166

28:                                               ; preds = %4
  %29 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %30 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %31 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.proto_tag* @proto_busdma_tag_lookup(%struct.proto_busdma* %29, i32 %32)
  store %struct.proto_tag* %33, %struct.proto_tag** %9, align 8
  %34 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %35 = icmp eq %struct.proto_tag* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %11, align 4
  br label %166

38:                                               ; preds = %28
  %39 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %40 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %41 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %42 = call i32 @proto_busdma_tag_create(%struct.proto_busdma* %39, %struct.proto_tag* %40, %struct.proto_ioc_busdma* %41)
  store i32 %42, i32* %11, align 4
  br label %166

43:                                               ; preds = %4
  %44 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %45 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %46 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.proto_tag* @proto_busdma_tag_lookup(%struct.proto_busdma* %44, i32 %47)
  store %struct.proto_tag* %48, %struct.proto_tag** %9, align 8
  %49 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %50 = icmp eq %struct.proto_tag* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %11, align 4
  br label %166

53:                                               ; preds = %43
  %54 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %55 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %56 = call i32 @proto_busdma_tag_destroy(%struct.proto_busdma* %54, %struct.proto_tag* %55)
  store i32 %56, i32* %11, align 4
  br label %166

57:                                               ; preds = %4
  %58 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %59 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %60 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.proto_tag* @proto_busdma_tag_lookup(%struct.proto_busdma* %58, i32 %63)
  store %struct.proto_tag* %64, %struct.proto_tag** %9, align 8
  %65 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %66 = icmp eq %struct.proto_tag* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %11, align 4
  br label %166

69:                                               ; preds = %57
  %70 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %71 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %72 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %73 = call i32 @proto_busdma_mem_alloc(%struct.proto_busdma* %70, %struct.proto_tag* %71, %struct.proto_ioc_busdma* %72)
  store i32 %73, i32* %11, align 4
  br label %166

74:                                               ; preds = %4
  %75 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %76 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %77 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.proto_md* @proto_busdma_md_lookup(%struct.proto_busdma* %75, i32 %78)
  store %struct.proto_md* %79, %struct.proto_md** %10, align 8
  %80 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %81 = icmp eq %struct.proto_md* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %11, align 4
  br label %166

84:                                               ; preds = %74
  %85 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %86 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %87 = call i32 @proto_busdma_mem_free(%struct.proto_busdma* %85, %struct.proto_md* %86)
  store i32 %87, i32* %11, align 4
  br label %166

88:                                               ; preds = %4
  %89 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %90 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %91 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.proto_tag* @proto_busdma_tag_lookup(%struct.proto_busdma* %89, i32 %94)
  store %struct.proto_tag* %95, %struct.proto_tag** %9, align 8
  %96 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %97 = icmp eq %struct.proto_tag* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %11, align 4
  br label %166

100:                                              ; preds = %88
  %101 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %102 = load %struct.proto_tag*, %struct.proto_tag** %9, align 8
  %103 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %104 = call i32 @proto_busdma_md_create(%struct.proto_busdma* %101, %struct.proto_tag* %102, %struct.proto_ioc_busdma* %103)
  store i32 %104, i32* %11, align 4
  br label %166

105:                                              ; preds = %4
  %106 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %107 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %108 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.proto_md* @proto_busdma_md_lookup(%struct.proto_busdma* %106, i32 %109)
  store %struct.proto_md* %110, %struct.proto_md** %10, align 8
  %111 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %112 = icmp eq %struct.proto_md* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %11, align 4
  br label %166

115:                                              ; preds = %105
  %116 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %117 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %118 = call i32 @proto_busdma_md_destroy(%struct.proto_busdma* %116, %struct.proto_md* %117)
  store i32 %118, i32* %11, align 4
  br label %166

119:                                              ; preds = %4
  %120 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %121 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %122 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.proto_md* @proto_busdma_md_lookup(%struct.proto_busdma* %120, i32 %123)
  store %struct.proto_md* %124, %struct.proto_md** %10, align 8
  %125 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %126 = icmp eq %struct.proto_md* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %11, align 4
  br label %166

129:                                              ; preds = %119
  %130 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %131 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %132 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %133 = load %struct.thread*, %struct.thread** %8, align 8
  %134 = call i32 @proto_busdma_md_load(%struct.proto_busdma* %130, %struct.proto_md* %131, %struct.proto_ioc_busdma* %132, %struct.thread* %133)
  store i32 %134, i32* %11, align 4
  br label %166

135:                                              ; preds = %4
  %136 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %137 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %138 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.proto_md* @proto_busdma_md_lookup(%struct.proto_busdma* %136, i32 %139)
  store %struct.proto_md* %140, %struct.proto_md** %10, align 8
  %141 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %142 = icmp eq %struct.proto_md* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %11, align 4
  br label %166

145:                                              ; preds = %135
  %146 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %147 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %148 = call i32 @proto_busdma_md_unload(%struct.proto_busdma* %146, %struct.proto_md* %147)
  store i32 %148, i32* %11, align 4
  br label %166

149:                                              ; preds = %4
  %150 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %151 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %152 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call %struct.proto_md* @proto_busdma_md_lookup(%struct.proto_busdma* %150, i32 %153)
  store %struct.proto_md* %154, %struct.proto_md** %10, align 8
  %155 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %156 = icmp eq %struct.proto_md* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %11, align 4
  br label %166

159:                                              ; preds = %149
  %160 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %161 = load %struct.proto_md*, %struct.proto_md** %10, align 8
  %162 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %163 = call i32 @proto_busdma_sync(%struct.proto_busdma* %160, %struct.proto_md* %161, %struct.proto_ioc_busdma* %162)
  store i32 %163, i32* %11, align 4
  br label %166

164:                                              ; preds = %4
  %165 = load i32, i32* @EINVAL, align 4
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %164, %159, %157, %145, %143, %129, %127, %115, %113, %100, %98, %84, %82, %69, %67, %53, %51, %38, %36, %18
  %167 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %168 = getelementptr inbounds %struct.proto_busdma, %struct.proto_busdma* %167, i32 0, i32 0
  %169 = call i32 @sx_xunlock(i32* %168)
  %170 = load i32, i32* %11, align 4
  ret i32 %170
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @proto_busdma_tag_create(%struct.proto_busdma*, %struct.proto_tag*, %struct.proto_ioc_busdma*) #1

declare dso_local %struct.proto_tag* @proto_busdma_tag_lookup(%struct.proto_busdma*, i32) #1

declare dso_local i32 @proto_busdma_tag_destroy(%struct.proto_busdma*, %struct.proto_tag*) #1

declare dso_local i32 @proto_busdma_mem_alloc(%struct.proto_busdma*, %struct.proto_tag*, %struct.proto_ioc_busdma*) #1

declare dso_local %struct.proto_md* @proto_busdma_md_lookup(%struct.proto_busdma*, i32) #1

declare dso_local i32 @proto_busdma_mem_free(%struct.proto_busdma*, %struct.proto_md*) #1

declare dso_local i32 @proto_busdma_md_create(%struct.proto_busdma*, %struct.proto_tag*, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @proto_busdma_md_destroy(%struct.proto_busdma*, %struct.proto_md*) #1

declare dso_local i32 @proto_busdma_md_load(%struct.proto_busdma*, %struct.proto_md*, %struct.proto_ioc_busdma*, %struct.thread*) #1

declare dso_local i32 @proto_busdma_md_unload(%struct.proto_busdma*, %struct.proto_md*) #1

declare dso_local i32 @proto_busdma_sync(%struct.proto_busdma*, %struct.proto_md*, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
