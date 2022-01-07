; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_vpd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_vpd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_3__ = type { i64, i64*, i32 }

@EACCES = common dso_local global i32 0, align 4
@M_SFXGE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EFX_VPD_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vpd\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Vital Product Data\00", align 1
@EFX_VPD_RO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_vpd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_vpd_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %4, align 8
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 2
  %19 = call i32 @efx_vpd_size(i32 %16, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @EACCES, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %140

26:                                               ; preds = %21
  br label %147

27:                                               ; preds = %1
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %29 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @M_SFXGE, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i32 @malloc(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %35 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @efx_vpd_read(i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %141

48:                                               ; preds = %27
  %49 = load i32, i32* @EFX_VPD_ID, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @efx_vpd_get(i32 %53, i32 %56, i32 %59, %struct.TYPE_3__* %8)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %69 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @device_set_desc_copy(i32 %70, i64* %72)
  %74 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %75 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %78)
  br label %80

80:                                               ; preds = %62, %48
  %81 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %82 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %83 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %84)
  %86 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %85)
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLFLAG_RD, align 4
  %89 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %81, %struct.sysctl_oid_list* %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %89, %struct.sysctl_oid** %5, align 8
  %90 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %91 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %90)
  store %struct.sysctl_oid_list* %91, %struct.sysctl_oid_list** %6, align 8
  %92 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %93 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %94 = load i32, i32* @EFX_VPD_RO, align 4
  %95 = call i32 @sfxge_vpd_try_add(%struct.sfxge_softc* %92, %struct.sysctl_oid_list* %93, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %98 = load i32, i32* @EFX_VPD_RO, align 4
  %99 = call i32 @sfxge_vpd_try_add(%struct.sfxge_softc* %96, %struct.sysctl_oid_list* %97, i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %102 = load i32, i32* @EFX_VPD_RO, align 4
  %103 = call i32 @sfxge_vpd_try_add(%struct.sfxge_softc* %100, %struct.sysctl_oid_list* %101, i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %104 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 86, i8* %104, align 1
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 48, i8* %106, align 1
  br label %107

107:                                              ; preds = %118, %80
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 %110, 57
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %114 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %115 = load i32, i32* @EFX_VPD_RO, align 4
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %117 = call i32 @sfxge_vpd_try_add(%struct.sfxge_softc* %113, %struct.sysctl_oid_list* %114, i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = add i8 %120, 1
  store i8 %121, i8* %119, align 1
  br label %107

122:                                              ; preds = %107
  %123 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 65, i8* %123, align 1
  br label %124

124:                                              ; preds = %135, %122
  %125 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 90
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %131 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %132 = load i32, i32* @EFX_VPD_RO, align 4
  %133 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %134 = call i32 @sfxge_vpd_try_add(%struct.sfxge_softc* %130, %struct.sysctl_oid_list* %131, i32 %132, i8* %133)
  br label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = add i8 %137, 1
  store i8 %138, i8* %136, align 1
  br label %124

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %25
  store i32 0, i32* %2, align 4
  br label %149

141:                                              ; preds = %47
  %142 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %143 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @M_SFXGE, align 4
  %146 = call i32 @free(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %26
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %140
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @efx_vpd_size(i32, i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @efx_vpd_read(i32, i32, i32) #1

declare dso_local i64 @efx_vpd_get(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @device_set_desc_copy(i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i64*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @sfxge_vpd_try_add(%struct.sfxge_softc*, %struct.sysctl_oid_list*, i32, i8*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
