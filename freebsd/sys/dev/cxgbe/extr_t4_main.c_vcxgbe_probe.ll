; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vcxgbe_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vcxgbe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vi_info* }

@.str = private unnamed_addr constant [15 x i8] c"port %d vi %td\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vcxgbe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcxgbe_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.vi_info*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vi_info* @device_get_softc(i32 %5)
  store %struct.vi_info* %6, %struct.vi_info** %4, align 8
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %8 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %9 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %14 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %15 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.vi_info*, %struct.vi_info** %17, align 8
  %19 = ptrtoint %struct.vi_info* %13 to i64
  %20 = ptrtoint %struct.vi_info* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @snprintf(i8* %7, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %27 = call i32 @device_set_desc_copy(i32 %25, i8* %26)
  %28 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  ret i32 %28
}

declare dso_local %struct.vi_info* @device_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
