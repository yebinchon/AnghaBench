; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_port_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"Port %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cxgb_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_port_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.port_info* @device_get_softc(i32 %6)
  store %struct.port_info* %7, %struct.port_info** %3, align 8
  %8 = load %struct.port_info*, %struct.port_info** %3, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %13 = load %struct.port_info*, %struct.port_info** %3, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @snprintf(i8* %12, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  %18 = load i32, i32* %2, align 4
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %20 = call i32 @device_set_desc_copy(i32 %18, i8* %19)
  ret i32 0
}

declare dso_local %struct.port_info* @device_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
