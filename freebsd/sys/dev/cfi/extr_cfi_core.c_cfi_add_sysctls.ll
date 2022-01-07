; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i64, i32*, i32*, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"typical_erase_timout_count\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CFI_TIMEOUT_ERASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Number of times the typical erase timeout was exceeded\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"max_erase_timout_count\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Number of times the maximum erase timeout was exceeded\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"typical_write_timout_count\00", align 1
@CFI_TIMEOUT_WRITE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"Number of times the typical write timeout was exceeded\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"max_write_timout_count\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Number of times the maximum write timeout was exceeded\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"typical_bufwrite_timout_count\00", align 1
@CFI_TIMEOUT_BUFWRITE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [64 x i8] c"Number of times the typical buffered write timeout was exceeded\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"max_bufwrite_timout_count\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"Number of times the maximum buffered write timeout was exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfi_softc*)* @cfi_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_add_sysctls(%struct.cfi_softc* %0) #0 {
  %2 = alloca %struct.cfi_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.cfi_softc* %0, %struct.cfi_softc** %2, align 8
  %5 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %4, align 8
  %14 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLFLAG_RD, align 4
  %18 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @CFI_TIMEOUT_ERASE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %14, %struct.sysctl_oid_list* %15, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32* %22, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @CFI_TIMEOUT_ERASE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32* %32, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RD, align 4
  %38 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %39 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @CFI_TIMEOUT_WRITE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32* %42, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %45 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %49 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @CFI_TIMEOUT_WRITE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %44, %struct.sysctl_oid_list* %45, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %47, i32* %52, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %54 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %55 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %1
  %59 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %60 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RD, align 4
  %63 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %64 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @CFI_TIMEOUT_BUFWRITE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %59, %struct.sysctl_oid_list* %60, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %62, i32* %67, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0))
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %70 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = load %struct.cfi_softc*, %struct.cfi_softc** %2, align 8
  %74 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @CFI_TIMEOUT_BUFWRITE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %69, %struct.sysctl_oid_list* %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %72, i32* %77, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  br label %79

79:                                               ; preds = %58, %1
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
