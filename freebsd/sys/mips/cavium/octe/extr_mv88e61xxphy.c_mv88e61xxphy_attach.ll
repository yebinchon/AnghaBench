; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.mv88e61xxphy_softc = type { %struct.mv88e61xxphy_port_softc*, i32 }
%struct.mv88e61xxphy_port_softc = type { i32, i32, i64, i64, i64, %struct.mv88e61xxphy_softc* }

@__const.mv88e61xxphy_attach.portbuf = private unnamed_addr constant [2 x i8] c"N\00", align 1
@MV88E61XX_PORTS = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Switch Ports\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Switch Port\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@MV88E61XXPHY_LINK_SYSCTL_DUPLEX = common dso_local global i32 0, align 4
@mv88e61xxphy_sysctl_link_proc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Media duplex status (0 = half duplex; 1 = full duplex)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@MV88E61XXPHY_LINK_SYSCTL_LINK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Link status (0 = down; 1 = up)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@MV88E61XXPHY_LINK_SYSCTL_MEDIA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [68 x i8] c"Media speed (0 = unknown; 10 = 10Mbps; 100 = 100Mbps; 1000 = 1Gbps)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@MV88E61XXPHY_PORT_SYSCTL_DOMAIN = common dso_local global i32 0, align 4
@mv88e61xxphy_sysctl_port_proc = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"Broadcast domain (ports can only talk to other ports in the same domain)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@MV88E61XXPHY_PORT_SYSCTL_VLAN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"Tag packets from/for this port with a given VLAN.\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@MV88E61XXPHY_PORT_SYSCTL_PRIORITY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"Default packet priority for this port.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv88e61xxphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e61xxphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca %struct.mv88e61xxphy_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mv88e61xxphy_port_softc*, align 8
  %14 = alloca %struct.mv88e61xxphy_port_softc*, align 8
  store i32 %0, i32* %2, align 4
  %15 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.mv88e61xxphy_attach.portbuf, i32 0, i32 0), i64 2, i1 false)
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %16)
  store %struct.sysctl_ctx_list* %17, %struct.sysctl_ctx_list** %4, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %18)
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %5, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %21 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  store %struct.sysctl_oid_list* %21, %struct.sysctl_oid_list** %6, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.mv88e61xxphy_softc* @device_get_softc(i32 %22)
  store %struct.mv88e61xxphy_softc* %23, %struct.mv88e61xxphy_softc** %11, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %11, align 8
  %26 = getelementptr inbounds %struct.mv88e61xxphy_softc, %struct.mv88e61xxphy_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %54, %1
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @MV88E61XX_PORTS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %11, align 8
  %33 = getelementptr inbounds %struct.mv88e61xxphy_softc, %struct.mv88e61xxphy_softc* %32, i32 0, i32 0
  %34 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %34, i64 %36
  store %struct.mv88e61xxphy_port_softc* %37, %struct.mv88e61xxphy_port_softc** %13, align 8
  %38 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %11, align 8
  %39 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %13, align 8
  %40 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %39, i32 0, i32 5
  store %struct.mv88e61xxphy_softc* %38, %struct.mv88e61xxphy_softc** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %13, align 8
  %43 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %13, align 8
  %45 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add i32 %46, 1
  %48 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %13, align 8
  %49 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %13, align 8
  %51 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %13, align 8
  %53 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RD, align 4
  %62 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %61, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %62, %struct.sysctl_oid** %7, align 8
  %63 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %64 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  store %struct.sysctl_oid_list* %64, %struct.sysctl_oid_list** %9, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %148, %57
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @MV88E61XX_PORTS, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %151

69:                                               ; preds = %65
  %70 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %11, align 8
  %71 = getelementptr inbounds %struct.mv88e61xxphy_softc, %struct.mv88e61xxphy_softc* %70, i32 0, i32 0
  %72 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %72, i64 %74
  store %struct.mv88e61xxphy_port_softc* %75, %struct.mv88e61xxphy_port_softc** %14, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add i32 48, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %78, i8* %79, align 1
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %81 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %80, %struct.sysctl_oid_list* %81, i32 %82, i8* %83, i32 %84, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %85, %struct.sysctl_oid** %8, align 8
  %86 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %87 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %86)
  store %struct.sysctl_oid_list* %87, %struct.sysctl_oid_list** %10, align 8
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RD, align 4
  %92 = load i32, i32* @CTLTYPE_INT, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %14, align 8
  %95 = load i32, i32* @MV88E61XXPHY_LINK_SYSCTL_DUPLEX, align 4
  %96 = load i32, i32* @mv88e61xxphy_sysctl_link_proc, align 4
  %97 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %93, %struct.mv88e61xxphy_port_softc* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %98 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %99 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = load i32, i32* @CTLTYPE_INT, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %14, align 8
  %105 = load i32, i32* @MV88E61XXPHY_LINK_SYSCTL_LINK, align 4
  %106 = load i32, i32* @mv88e61xxphy_sysctl_link_proc, align 4
  %107 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %98, %struct.sysctl_oid_list* %99, i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %103, %struct.mv88e61xxphy_port_softc* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %108 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %109 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %110 = load i32, i32* @OID_AUTO, align 4
  %111 = load i32, i32* @CTLFLAG_RD, align 4
  %112 = load i32, i32* @CTLTYPE_INT, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %14, align 8
  %115 = load i32, i32* @MV88E61XXPHY_LINK_SYSCTL_MEDIA, align 4
  %116 = load i32, i32* @mv88e61xxphy_sysctl_link_proc, align 4
  %117 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %108, %struct.sysctl_oid_list* %109, i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %113, %struct.mv88e61xxphy_port_softc* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %118 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %119 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLFLAG_RW, align 4
  %122 = load i32, i32* @CTLTYPE_INT, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %14, align 8
  %125 = load i32, i32* @MV88E61XXPHY_PORT_SYSCTL_DOMAIN, align 4
  %126 = load i32, i32* @mv88e61xxphy_sysctl_port_proc, align 4
  %127 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %118, %struct.sysctl_oid_list* %119, i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %123, %struct.mv88e61xxphy_port_softc* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  %128 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %129 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %130 = load i32, i32* @OID_AUTO, align 4
  %131 = load i32, i32* @CTLFLAG_RW, align 4
  %132 = load i32, i32* @CTLTYPE_INT, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %14, align 8
  %135 = load i32, i32* @MV88E61XXPHY_PORT_SYSCTL_VLAN, align 4
  %136 = load i32, i32* @mv88e61xxphy_sysctl_port_proc, align 4
  %137 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %128, %struct.sysctl_oid_list* %129, i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %133, %struct.mv88e61xxphy_port_softc* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %138 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %139 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %140 = load i32, i32* @OID_AUTO, align 4
  %141 = load i32, i32* @CTLFLAG_RW, align 4
  %142 = load i32, i32* @CTLTYPE_INT, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %14, align 8
  %145 = load i32, i32* @MV88E61XXPHY_PORT_SYSCTL_PRIORITY, align 4
  %146 = load i32, i32* @mv88e61xxphy_sysctl_port_proc, align 4
  %147 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %138, %struct.sysctl_oid_list* %139, i32 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %143, %struct.mv88e61xxphy_port_softc* %144, i32 %145, i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %148

148:                                              ; preds = %69
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %65

151:                                              ; preds = %65
  %152 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %11, align 8
  %153 = call i32 @mv88e61xxphy_init(%struct.mv88e61xxphy_softc* %152)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #2

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #2

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #2

declare dso_local %struct.mv88e61xxphy_softc* @device_get_softc(i32) #2

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #2

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.mv88e61xxphy_port_softc*, i32, i32, i8*, i8*) #2

declare dso_local i32 @mv88e61xxphy_init(%struct.mv88e61xxphy_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
