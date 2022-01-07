; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_setup_ifmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_setup_ifmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }

@IFM_IMASK = common dso_local global i32 0, align 4
@nicvf_media_change = common dso_local global i32 0, align 4
@nicvf_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_setup_ifmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_setup_ifmedia(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %3 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %4 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %3, i32 0, i32 0
  %5 = load i32, i32* @IFM_IMASK, align 4
  %6 = load i32, i32* @nicvf_media_change, align 4
  %7 = load i32, i32* @nicvf_media_status, align 4
  %8 = call i32 @ifmedia_init(i32* %4, i32 %5, i32 %6, i32 %7)
  %9 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  %11 = load i32, i32* @IFM_ETHER, align 4
  %12 = load i32, i32* @IFM_10_T, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IFM_FDX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ifmedia_add(i32* %10, i32 %15, i32 0, i32* null)
  %17 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %18 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %17, i32 0, i32 0
  %19 = load i32, i32* @IFM_ETHER, align 4
  %20 = load i32, i32* @IFM_100_TX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IFM_FDX, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ifmedia_add(i32* %18, i32 %23, i32 0, i32* null)
  %25 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %26 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %25, i32 0, i32 0
  %27 = load i32, i32* @IFM_ETHER, align 4
  %28 = load i32, i32* @IFM_1000_T, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IFM_FDX, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ifmedia_add(i32* %26, i32 %31, i32 0, i32* null)
  %33 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %34 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %33, i32 0, i32 0
  %35 = load i32, i32* @IFM_ETHER, align 4
  %36 = load i32, i32* @IFM_10G_SR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IFM_FDX, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ifmedia_add(i32* %34, i32 %39, i32 0, i32* null)
  %41 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %42 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %41, i32 0, i32 0
  %43 = load i32, i32* @IFM_ETHER, align 4
  %44 = load i32, i32* @IFM_40G_CR4, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IFM_FDX, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ifmedia_add(i32* %42, i32 %47, i32 0, i32* null)
  %49 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %50 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %49, i32 0, i32 0
  %51 = load i32, i32* @IFM_ETHER, align 4
  %52 = load i32, i32* @IFM_AUTO, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IFM_FDX, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ifmedia_add(i32* %50, i32 %55, i32 0, i32* null)
  %57 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %58 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %57, i32 0, i32 0
  %59 = load i32, i32* @IFM_ETHER, align 4
  %60 = load i32, i32* @IFM_AUTO, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IFM_FDX, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ifmedia_set(i32* %58, i32 %63)
  ret i32 0
}

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
