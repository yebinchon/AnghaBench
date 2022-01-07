; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_init_io_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_init_io_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_que*, i32, i32, i32, i32, %struct.ena_ring*, %struct.ena_ring*, %struct.ena_com_dev* }
%struct.ena_que = type { i32, %struct.ena_ring*, %struct.ena_ring*, %struct.ena_adapter* }
%struct.ena_ring = type { i64, %struct.ena_que*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ena_com_dev = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:tx(%d)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s:rx(%d)\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_init_io_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_init_io_rings(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca %struct.ena_que*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 8
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %9, align 8
  store %struct.ena_com_dev* %10, %struct.ena_com_dev** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %146, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %149

17:                                               ; preds = %11
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %18, i32 0, i32 7
  %20 = load %struct.ena_ring*, %struct.ena_ring** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %20, i64 %22
  store %struct.ena_ring* %23, %struct.ena_ring** %4, align 8
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 6
  %26 = load %struct.ena_ring*, %struct.ena_ring** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %26, i64 %28
  store %struct.ena_ring* %29, %struct.ena_ring** %5, align 8
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %31 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ena_init_io_rings_common(%struct.ena_adapter* %30, %struct.ena_ring* %31, i32 %32)
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %35 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ena_init_io_rings_common(%struct.ena_adapter* %34, %struct.ena_ring* %35, i32 %36)
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %47 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %49 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %54 = call i32 @ena_com_get_nonadaptive_moderation_interval_tx(%struct.ena_com_dev* %53)
  %55 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %56 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %61 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %63 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %68 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %67, i32 0, i32 3
  %69 = call i32 @buf_ring_alloc(i32 %64, i32 %65, i32 %66, i32* %68)
  %70 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %71 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %73 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %72, i32 0, i32 7
  %74 = call i32 @ena_alloc_counters(i32* %73, i32 4)
  %75 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %79 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %81 = call i32 @ena_com_get_nonadaptive_moderation_interval_rx(%struct.ena_com_dev* %80)
  %82 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %83 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %85 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %84, i32 0, i32 4
  %86 = call i32 @ena_alloc_counters(i32* %85, i32 4)
  %87 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %88 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %91 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @nitems(i32 %92)
  %94 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @device_get_nameunit(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @snprintf(i32 %89, i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %97, i32 %98)
  %100 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %101 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %104 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @nitems(i32 %105)
  %107 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @device_get_nameunit(i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @snprintf(i32 %102, i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %110, i32 %111)
  %113 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %114 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %113, i32 0, i32 3
  %115 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %116 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MTX_DEF, align 4
  %119 = call i32 @mtx_init(i32* %114, i32 %117, i32* null, i32 %118)
  %120 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %120, i32 0, i32 1
  %122 = load %struct.ena_que*, %struct.ena_que** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %122, i64 %124
  store %struct.ena_que* %125, %struct.ena_que** %6, align 8
  %126 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %127 = load %struct.ena_que*, %struct.ena_que** %6, align 8
  %128 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %127, i32 0, i32 3
  store %struct.ena_adapter* %126, %struct.ena_adapter** %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.ena_que*, %struct.ena_que** %6, align 8
  %131 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %133 = load %struct.ena_que*, %struct.ena_que** %6, align 8
  %134 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %133, i32 0, i32 2
  store %struct.ena_ring* %132, %struct.ena_ring** %134, align 8
  %135 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %136 = load %struct.ena_que*, %struct.ena_que** %6, align 8
  %137 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %136, i32 0, i32 1
  store %struct.ena_ring* %135, %struct.ena_ring** %137, align 8
  %138 = load %struct.ena_que*, %struct.ena_que** %6, align 8
  %139 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %140 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %139, i32 0, i32 1
  store %struct.ena_que* %138, %struct.ena_que** %140, align 8
  %141 = load %struct.ena_que*, %struct.ena_que** %6, align 8
  %142 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %143 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %142, i32 0, i32 1
  store %struct.ena_que* %141, %struct.ena_que** %143, align 8
  %144 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %145 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %17
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %11

149:                                              ; preds = %11
  ret void
}

declare dso_local i32 @ena_init_io_rings_common(%struct.ena_adapter*, %struct.ena_ring*, i32) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_tx(%struct.ena_com_dev*) #1

declare dso_local i32 @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @ena_alloc_counters(i32*, i32) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_rx(%struct.ena_com_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
