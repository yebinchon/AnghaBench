; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smbios.c_ipmi_smbios_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smbios.c_ipmi_smbios_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_get_info = type { i32 }
%struct.smbios_eps = type { i32, i64, i32, i32 }

@SMBIOS_START = common dso_local global i32 0, align 4
@SMBIOS_SIG = common dso_local global i32 0, align 4
@SMBIOS_LEN = common dso_local global i32 0, align 4
@SMBIOS_STEP = common dso_local global i32 0, align 4
@SMBIOS_OFF = common dso_local global i32 0, align 4
@smbios_ipmi_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_get_info*)* @ipmi_smbios_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_smbios_probe(%struct.ipmi_get_info* %0) #0 {
  %2 = alloca %struct.ipmi_get_info*, align 8
  %3 = alloca %struct.smbios_eps*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ipmi_get_info* %0, %struct.ipmi_get_info** %2, align 8
  %6 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %2, align 8
  %7 = call i32 @bzero(%struct.ipmi_get_info* %6, i32 4)
  %8 = load i32, i32* @SMBIOS_START, align 4
  %9 = load i32, i32* @SMBIOS_SIG, align 4
  %10 = load i32, i32* @SMBIOS_LEN, align 4
  %11 = load i32, i32* @SMBIOS_STEP, align 4
  %12 = load i32, i32* @SMBIOS_OFF, align 4
  %13 = call i64 @bios_sigsearch(i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %68

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = call i8* @pmap_mapbios(i64 %18, i32 24)
  %20 = bitcast i8* %19 to %struct.smbios_eps*
  store %struct.smbios_eps* %20, %struct.smbios_eps** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %23 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @pmap_mapbios(i64 %21, i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %27 = ptrtoint %struct.smbios_eps* %26 to i32
  %28 = call i32 @pmap_unmapbios(i32 %27, i32 24)
  %29 = load i8*, i8** %4, align 8
  %30 = bitcast i8* %29 to %struct.smbios_eps*
  store %struct.smbios_eps* %30, %struct.smbios_eps** %3, align 8
  %31 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %32 = call i64 @smbios_cksum(%struct.smbios_eps* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %36 = ptrtoint %struct.smbios_eps* %35 to i32
  %37 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %38 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pmap_unmapbios(i32 %36, i32 %39)
  br label %68

41:                                               ; preds = %17
  %42 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %43 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %46 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @pmap_mapbios(i64 %44, i32 %47)
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %51 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @smbios_ipmi_info, align 4
  %54 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %2, align 8
  %55 = call i32 @smbios_walk_table(i8* %49, i32 %52, i32 %53, %struct.ipmi_get_info* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %59 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pmap_unmapbios(i32 %57, i32 %60)
  %62 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %63 = ptrtoint %struct.smbios_eps* %62 to i32
  %64 = load %struct.smbios_eps*, %struct.smbios_eps** %3, align 8
  %65 = getelementptr inbounds %struct.smbios_eps, %struct.smbios_eps* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pmap_unmapbios(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %41, %34, %16
  ret void
}

declare dso_local i32 @bzero(%struct.ipmi_get_info*, i32) #1

declare dso_local i64 @bios_sigsearch(i32, i32, i32, i32, i32) #1

declare dso_local i8* @pmap_mapbios(i64, i32) #1

declare dso_local i32 @pmap_unmapbios(i32, i32) #1

declare dso_local i64 @smbios_cksum(%struct.smbios_eps*) #1

declare dso_local i32 @smbios_walk_table(i8*, i32, i32, %struct.ipmi_get_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
