; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_app_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_app_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.dcbx_app_priority_feature = type { i32 }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.ecore_dcbx_params = type { i32, i8*, i8*, i8*, %struct.ecore_app_entry* }
%struct.ecore_app_entry = type { i32, i32, i8*, i32, i8* }

@DCBX_APP_WILLING = common dso_local global i32 0, align 4
@DCBX_APP_ENABLED = common dso_local global i32 0, align 4
@DCBX_APP_ERROR = common dso_local global i32 0, align 4
@DCBX_APP_NUM_ENTRIES = common dso_local global i32 0, align 4
@DCBX_APP_SF_IEEE = common dso_local global i32 0, align 4
@DCBX_APP_SF = common dso_local global i32 0, align 4
@ECORE_DCBX_SF_IEEE_TCP_UDP_PORT = common dso_local global i8* null, align 8
@ECORE_DCBX_SF_IEEE_ETHTYPE = common dso_local global i8* null, align 8
@ECORE_DCBX_SF_IEEE_TCP_PORT = common dso_local global i8* null, align 8
@ECORE_DCBX_SF_IEEE_UDP_PORT = common dso_local global i8* null, align 8
@DCBX_APP_PRI_MAP = common dso_local global i32 0, align 4
@DCBX_APP_PROTOCOL_ID = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"APP params: willing %d, valid %d error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_entry*, %struct.ecore_dcbx_params*, i32)* @ecore_dcbx_get_app_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_get_app_data(%struct.ecore_hwfn* %0, %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_entry* %2, %struct.ecore_dcbx_params* %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.dcbx_app_priority_feature*, align 8
  %8 = alloca %struct.dcbx_app_priority_entry*, align 8
  %9 = alloca %struct.ecore_dcbx_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_app_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_feature** %7, align 8
  store %struct.dcbx_app_priority_entry* %2, %struct.dcbx_app_priority_entry** %8, align 8
  store %struct.ecore_dcbx_params* %3, %struct.ecore_dcbx_params** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %17 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DCBX_APP_WILLING, align 4
  %20 = call i8* @GET_MFW_FIELD(i32 %18, i32 %19)
  %21 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %22 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %24 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DCBX_APP_ENABLED, align 4
  %27 = call i8* @GET_MFW_FIELD(i32 %25, i32 %26)
  %28 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %29 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %31 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DCBX_APP_ERROR, align 4
  %34 = call i8* @GET_MFW_FIELD(i32 %32, i32 %33)
  %35 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %36 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %38 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DCBX_APP_NUM_ENTRIES, align 4
  %41 = call i8* @GET_MFW_FIELD(i32 %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %44 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %159, %5
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %48 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %162

51:                                               ; preds = %45
  %52 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %53 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %52, i32 0, i32 4
  %54 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %54, i64 %56
  store %struct.ecore_app_entry* %57, %struct.ecore_app_entry** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %51
  %61 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %61, i64 %63
  %65 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DCBX_APP_SF_IEEE, align 4
  %68 = call i8* @GET_MFW_FIELD(i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  switch i32 %70, label %106 [
    i32 131, label %71
    i32 132, label %90
    i32 130, label %94
    i32 128, label %98
    i32 129, label %102
  ]

71:                                               ; preds = %60
  %72 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DCBX_APP_SF, align 4
  %79 = call i8* @GET_MFW_FIELD(i32 %77, i32 %78)
  store i8* %79, i8** %15, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i8*, i8** @ECORE_DCBX_SF_IEEE_TCP_UDP_PORT, align 8
  br label %86

84:                                               ; preds = %71
  %85 = load i8*, i8** @ECORE_DCBX_SF_IEEE_ETHTYPE, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %89 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  br label %106

90:                                               ; preds = %60
  %91 = load i8*, i8** @ECORE_DCBX_SF_IEEE_ETHTYPE, align 8
  %92 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %93 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  br label %106

94:                                               ; preds = %60
  %95 = load i8*, i8** @ECORE_DCBX_SF_IEEE_TCP_PORT, align 8
  %96 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %97 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  br label %106

98:                                               ; preds = %60
  %99 = load i8*, i8** @ECORE_DCBX_SF_IEEE_UDP_PORT, align 8
  %100 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %101 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  br label %106

102:                                              ; preds = %60
  %103 = load i8*, i8** @ECORE_DCBX_SF_IEEE_TCP_UDP_PORT, align 8
  %104 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %105 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %60, %102, %98, %94, %90, %86
  br label %121

107:                                              ; preds = %51
  %108 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %108, i64 %110
  %112 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DCBX_APP_SF, align 4
  %115 = call i8* @GET_MFW_FIELD(i32 %113, i32 %114)
  %116 = icmp ne i8* %115, null
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %120 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %107, %106
  %122 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %122, i64 %124
  %126 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DCBX_APP_PRI_MAP, align 4
  %129 = call i8* @GET_MFW_FIELD(i32 %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %133 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %132, i32 0, i32 3
  %134 = call i32 @ecore_dcbx_get_app_priority(i32 %131, i32* %133)
  %135 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %135, i64 %137
  %139 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DCBX_APP_PROTOCOL_ID, align 4
  %142 = call i8* @GET_MFW_FIELD(i32 %140, i32 %141)
  %143 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %144 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %146 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %146, i64 %148
  %150 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %153 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.ecore_app_entry*, %struct.ecore_app_entry** %11, align 8
  %156 = getelementptr inbounds %struct.ecore_app_entry, %struct.ecore_app_entry* %155, i32 0, i32 1
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @ecore_dcbx_get_app_protocol_type(%struct.ecore_hwfn* %145, i32 %151, i8* %154, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %121
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %45

162:                                              ; preds = %45
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %164 = load i32, i32* @ECORE_MSG_DCB, align 4
  %165 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %166 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %169 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %9, align 8
  %172 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %163, i32 %164, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %167, i8* %170, i8* %173)
  ret void
}

declare dso_local i8* @GET_MFW_FIELD(i32, i32) #1

declare dso_local i32 @ecore_dcbx_get_app_priority(i32, i32*) #1

declare dso_local i32 @ecore_dcbx_get_app_protocol_type(%struct.ecore_hwfn*, i32, i8*, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
