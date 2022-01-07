; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_remove_all_ucast_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_remove_all_ucast_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ecore_dev }
%struct.ecore_dev = type { i32 }
%struct.ecore_filter_ucast = type { i32, i32, i32 }

@ECORE_FILTER_REPLACE = common dso_local global i32 0, align 4
@ECORE_FILTER_MAC = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @qlnx_remove_all_ucast_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_remove_all_ucast_mac(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ecore_filter_ucast, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = call i32 @bzero(%struct.ecore_filter_ucast* %3, i32 12)
  %7 = load i32, i32* @ECORE_FILTER_REPLACE, align 4
  %8 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @ECORE_FILTER_MAC, align 4
  %10 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %3, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ecore_dev* %13, %struct.ecore_dev** %4, align 8
  %14 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %15 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %16 = call i32 @ecore_filter_ucast_cmd(%struct.ecore_dev* %14, %struct.ecore_filter_ucast* %3, i32 %15, i32* null)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @bzero(%struct.ecore_filter_ucast*, i32) #1

declare dso_local i32 @ecore_filter_ucast_cmd(%struct.ecore_dev*, %struct.ecore_filter_ucast*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
