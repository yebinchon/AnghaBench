; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_update_mfc_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_update_mfc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc = type { i32*, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mfcctl2 = type { i32*, %struct.TYPE_2__, i32*, i32 }

@V_numvifs = common dso_local global i32 0, align 4
@V_mrt_api_config = common dso_local global i32 0, align 4
@MRT_MFC_FLAGS_ALL = common dso_local global i32 0, align 4
@MRT_MFC_RP = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfc*, %struct.mfcctl2*)* @update_mfc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mfc_params(%struct.mfc* %0, %struct.mfcctl2* %1) #0 {
  %3 = alloca %struct.mfc*, align 8
  %4 = alloca %struct.mfcctl2*, align 8
  %5 = alloca i32, align 4
  store %struct.mfc* %0, %struct.mfc** %3, align 8
  store %struct.mfcctl2* %1, %struct.mfcctl2** %4, align 8
  %6 = load %struct.mfcctl2*, %struct.mfcctl2** %4, align 8
  %7 = getelementptr inbounds %struct.mfcctl2, %struct.mfcctl2* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mfc*, %struct.mfc** %3, align 8
  %10 = getelementptr inbounds %struct.mfc, %struct.mfc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @V_numvifs, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load %struct.mfcctl2*, %struct.mfcctl2** %4, align 8
  %17 = getelementptr inbounds %struct.mfcctl2, %struct.mfcctl2* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mfc*, %struct.mfc** %3, align 8
  %24 = getelementptr inbounds %struct.mfc, %struct.mfc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.mfcctl2*, %struct.mfcctl2** %4, align 8
  %30 = getelementptr inbounds %struct.mfcctl2, %struct.mfcctl2* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @V_mrt_api_config, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @MRT_MFC_FLAGS_ALL, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.mfc*, %struct.mfc** %3, align 8
  %41 = getelementptr inbounds %struct.mfc, %struct.mfc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %15
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* @V_mrt_api_config, align 4
  %51 = load i32, i32* @MRT_MFC_RP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.mfc*, %struct.mfc** %3, align 8
  %56 = getelementptr inbounds %struct.mfc, %struct.mfc* %55, i32 0, i32 1
  %57 = load %struct.mfcctl2*, %struct.mfcctl2** %4, align 8
  %58 = getelementptr inbounds %struct.mfcctl2, %struct.mfcctl2* %57, i32 0, i32 1
  %59 = bitcast %struct.TYPE_2__* %56 to i8*
  %60 = bitcast %struct.TYPE_2__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 4, i1 false)
  br label %66

61:                                               ; preds = %49
  %62 = load i32, i32* @INADDR_ANY, align 4
  %63 = load %struct.mfc*, %struct.mfc** %3, align 8
  %64 = getelementptr inbounds %struct.mfc, %struct.mfc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %54
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
