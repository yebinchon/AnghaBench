; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_simplerequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_simplerequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.smbioc_rq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32, i32, i32, %struct.mdchain, %struct.mbchain }
%struct.mdchain = type { i32 }
%struct.mbchain = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@M_SMBTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MB_MUSER = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_usr_simplerequest(%struct.smb_share* %0, %struct.smbioc_rq* %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca %struct.smbioc_rq*, align 8
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_rq*, align 8
  %9 = alloca %struct.mbchain*, align 8
  %10 = alloca %struct.mdchain*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %5, align 8
  store %struct.smbioc_rq* %1, %struct.smbioc_rq** %6, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %14 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %15 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %19 [
    i32 132, label %17
    i32 131, label %17
    i32 136, label %17
    i32 130, label %17
    i32 128, label %17
    i32 134, label %17
    i32 133, label %17
    i32 135, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %18 = load i32, i32* @EPERM, align 4
  store i32 %18, i32* %4, align 4
  br label %157

19:                                               ; preds = %3
  %20 = load i32, i32* @M_SMBTEMP, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call %struct.smb_rq* @malloc(i32 20, i32 %20, i32 %21)
  store %struct.smb_rq* %22, %struct.smb_rq** %8, align 8
  %23 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %24 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %25 = call i32 @SSTOCP(%struct.smb_share* %24)
  %26 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %27 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %30 = call i32 @smb_rq_init(%struct.smb_rq* %23, i32 %25, i32 %28, %struct.smb_cred* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %35 = load i32, i32* @M_SMBTEMP, align 4
  %36 = call i32 @free(%struct.smb_rq* %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %157

38:                                               ; preds = %19
  %39 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %40 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %39, i32 0, i32 4
  store %struct.mbchain* %40, %struct.mbchain** %9, align 8
  %41 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %42 = call i32 @smb_rq_wstart(%struct.smb_rq* %41)
  %43 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %44 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %45 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %48 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32, i32* @MB_MUSER, align 4
  %52 = call i32 @mb_put_mem(%struct.mbchain* %43, i32 %46, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %135

56:                                               ; preds = %38
  %57 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %58 = call i32 @smb_rq_wend(%struct.smb_rq* %57)
  %59 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %60 = call i32 @smb_rq_bstart(%struct.smb_rq* %59)
  %61 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %62 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %63 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %66 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MB_MUSER, align 4
  %69 = call i32 @mb_put_mem(%struct.mbchain* %61, i32 %64, i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %135

73:                                               ; preds = %56
  %74 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %75 = call i32 @smb_rq_bend(%struct.smb_rq* %74)
  %76 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %77 = call i32 @smb_rq_simple(%struct.smb_rq* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %135

81:                                               ; preds = %73
  %82 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %83 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %82, i32 0, i32 3
  store %struct.mdchain* %83, %struct.mdchain** %10, align 8
  %84 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %85 = call i32 @md_get_uint8(%struct.mdchain* %84, i32* %11)
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %88 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %93 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i32, i32* @EBADRPC, align 4
  store i32 %97, i32* %13, align 4
  br label %135

98:                                               ; preds = %81
  %99 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %100 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %101 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @MB_MUSER, align 4
  %105 = call i32 @md_get_mem(%struct.mdchain* %99, i64 %102, i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %135

109:                                              ; preds = %98
  %110 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %111 = call i32 @md_get_uint16le(%struct.mdchain* %110, i32* %12)
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %116 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @EBADRPC, align 4
  store i32 %120, i32* %13, align 4
  br label %135

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %124 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %126 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %127 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @MB_MUSER, align 4
  %134 = call i32 @md_get_mem(%struct.mdchain* %125, i64 %131, i32 %132, i32 %133)
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %121, %119, %108, %96, %80, %72, %55
  %136 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %137 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %140 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 8
  %141 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %142 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %145 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 4
  %146 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %147 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.smbioc_rq*, %struct.smbioc_rq** %6, align 8
  %150 = getelementptr inbounds %struct.smbioc_rq, %struct.smbioc_rq* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %152 = call i32 @smb_rq_done(%struct.smb_rq* %151)
  %153 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %154 = load i32, i32* @M_SMBTEMP, align 4
  %155 = call i32 @free(%struct.smb_rq* %153, i32 %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %135, %33, %17
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.smb_rq* @malloc(i32, i32, i32) #1

declare dso_local i32 @smb_rq_init(%struct.smb_rq*, i32, i32, %struct.smb_cred*) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @free(%struct.smb_rq*, i32) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_mem(%struct.mdchain*, i64, i32, i32) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
