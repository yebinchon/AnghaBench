; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_send_phy_db_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_send_phy_db_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_phy_db = type { i32 }
%struct.iwm_phy_db_cmd = type { i8*, i8* }
%struct.iwm_host_cmd = type { i32*, i32*, %struct.iwm_phy_db_cmd**, i32 }

@PHY_DB_CMD = common dso_local global i32 0, align 4
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Sending PHY-DB hcmd of type %d, of length %d\0A\00", align 1
@IWM_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_phy_db*, i32, i32, i8*)* @iwm_send_phy_db_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_send_phy_db_cmd(%struct.iwm_phy_db* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.iwm_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iwm_phy_db_cmd, align 8
  %10 = alloca %struct.iwm_host_cmd, align 8
  store %struct.iwm_phy_db* %0, %struct.iwm_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = bitcast %struct.iwm_host_cmd* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %10, i32 0, i32 3
  %13 = load i32, i32* @PHY_DB_CMD, align 4
  store i32 %13, i32* %12, align 8
  %14 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %15 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @IWM_DPRINTF(i32 %16, i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @htole16(i32 %21)
  %23 = getelementptr inbounds %struct.iwm_phy_db_cmd, %struct.iwm_phy_db_cmd* %9, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @htole16(i32 %24)
  %26 = getelementptr inbounds %struct.iwm_phy_db_cmd, %struct.iwm_phy_db_cmd* %9, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %10, i32 0, i32 2
  %28 = load %struct.iwm_phy_db_cmd**, %struct.iwm_phy_db_cmd*** %27, align 8
  %29 = getelementptr inbounds %struct.iwm_phy_db_cmd*, %struct.iwm_phy_db_cmd** %28, i64 0
  store %struct.iwm_phy_db_cmd* %9, %struct.iwm_phy_db_cmd** %29, align 8
  %30 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %10, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 16, i32* %32, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.iwm_phy_db_cmd*
  %35 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %10, i32 0, i32 2
  %36 = load %struct.iwm_phy_db_cmd**, %struct.iwm_phy_db_cmd*** %35, align 8
  %37 = getelementptr inbounds %struct.iwm_phy_db_cmd*, %struct.iwm_phy_db_cmd** %36, i64 1
  store %struct.iwm_phy_db_cmd* %34, %struct.iwm_phy_db_cmd** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %10, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %43 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iwm_send_cmd(i32 %44, %struct.iwm_host_cmd* %10)
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IWM_DPRINTF(i32, i32, i8*, i32, i32) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i32 @iwm_send_cmd(i32, %struct.iwm_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
