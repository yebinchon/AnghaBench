; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_cmdqueue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_cmdqueue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@IPS_COMMAND_LEN = common dso_local global i32 0, align 4
@ips_cmd_dmaload = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@IPS_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ips_cmdqueue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_cmdqueue_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 32, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @malloc(i32 %11, i32 %12, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %132

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = call i32 @SLIST_INIT(i32* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %118, %26
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %121

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = call i64 @bus_dmamem_alloc(i32 %51, i32* %53, i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %36
  br label %128

60:                                               ; preds = %36
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IPS_COMMAND_LEN, align 4
  %71 = load i32, i32* @ips_cmd_dmaload, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %74 = call i32 @bus_dmamap_load(i32 %63, i32 %66, i32 %69, i32 %70, i32 %71, %struct.TYPE_8__* %72, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %60
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bus_dmamem_free(i32 %82, i32 %85, i32 %88)
  br label %128

90:                                               ; preds = %60
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = call i64 @bus_dmamap_create(i32 %101, i32 0, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %128

107:                                              ; preds = %93
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = load i32, i32* @next, align 4
  %112 = call i32 @SLIST_INSERT_HEAD(i32* %109, %struct.TYPE_8__* %110, i32 %111)
  br label %117

113:                                              ; preds = %90
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %116, align 8
  br label %117

117:                                              ; preds = %113, %107
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %30

121:                                              ; preds = %30
  %122 = load i32, i32* @IPS_OFFLINE, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  store i32 0, i32* %2, align 4
  br label %132

128:                                              ; preds = %106, %79, %59
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = call i32 @ips_cmdqueue_free(%struct.TYPE_7__* %129)
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %121, %24
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ips_cmdqueue_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
