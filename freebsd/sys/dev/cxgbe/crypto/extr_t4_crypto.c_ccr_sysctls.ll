; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Hash requests submitted\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"HMAC requests submitted\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cipher_encrypt\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Cipher encryption requests submitted\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"cipher_decrypt\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Cipher decryption requests submitted\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"authenc_encrypt\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Combined AES+HMAC encryption requests submitted\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"authenc_decrypt\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Combined AES+HMAC decryption requests submitted\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"gcm_encrypt\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"AES-GCM encryption requests submitted\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gcm_decrypt\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"AES-GCM decryption requests submitted\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"ccm_encrypt\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"AES-CCM encryption requests submitted\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"ccm_decrypt\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"AES-CCM decryption requests submitted\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"wr_nomem\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Work request memory allocation failures\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Requests currently pending\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"mac_error\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"MAC errors\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"pad_error\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Padding errors\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"bad_session\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Requests with invalid session ID\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"sglist_error\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Requests for which DMA mapping failed\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"process_error\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"Requests failed during queueing\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"sw_fallback\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"Requests processed by falling back to software\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_softc*)* @ccr_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_sysctls(%struct.ccr_softc* %0) #0 {
  %2 = alloca %struct.ccr_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.ccr_softc* %0, %struct.ccr_softc** %2, align 8
  %6 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %6, i32 0, i32 18
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %4, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %5, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %4, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %22 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  store %struct.sysctl_oid_list* %22, %struct.sysctl_oid_list** %5, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %27, i32 0, i32 17
  %29 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32* %28, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RD, align 4
  %34 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %34, i32 0, i32 16
  %36 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32* %35, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLFLAG_RD, align 4
  %41 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %41, i32 0, i32 15
  %43 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32* %42, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %45 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %48, i32 0, i32 14
  %50 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %44, %struct.sysctl_oid_list* %45, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %47, i32* %49, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %52 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLFLAG_RD, align 4
  %55 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %55, i32 0, i32 13
  %57 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %51, %struct.sysctl_oid_list* %52, i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %54, i32* %56, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RD, align 4
  %62 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %62, i32 0, i32 12
  %64 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %61, i32* %63, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %65 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %66 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i32, i32* @CTLFLAG_RD, align 4
  %69 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %69, i32 0, i32 11
  %71 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %65, %struct.sysctl_oid_list* %66, i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %68, i32* %70, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %72 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %73 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = load i32, i32* @CTLFLAG_RD, align 4
  %76 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %76, i32 0, i32 10
  %78 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %72, %struct.sysctl_oid_list* %73, i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %75, i32* %77, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %80 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLFLAG_RD, align 4
  %83 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %83, i32 0, i32 9
  %85 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %79, %struct.sysctl_oid_list* %80, i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %82, i32* %84, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %86 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %87 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RD, align 4
  %90 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %90, i32 0, i32 8
  %92 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %86, %struct.sysctl_oid_list* %87, i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %89, i32* %91, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0))
  %93 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %94 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %97, i32 0, i32 7
  %99 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %93, %struct.sysctl_oid_list* %94, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %96, i32* %98, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLFLAG_RD, align 4
  %104 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %105 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %104, i32 0, i32 6
  %106 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %103, i32* %105, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %107 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %108 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %109 = load i32, i32* @OID_AUTO, align 4
  %110 = load i32, i32* @CTLFLAG_RD, align 4
  %111 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %111, i32 0, i32 5
  %113 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %107, %struct.sysctl_oid_list* %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %110, i32* %112, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %114 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %115 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %116 = load i32, i32* @OID_AUTO, align 4
  %117 = load i32, i32* @CTLFLAG_RD, align 4
  %118 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %118, i32 0, i32 4
  %120 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %114, %struct.sysctl_oid_list* %115, i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 %117, i32* %119, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %121 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %122 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %123 = load i32, i32* @OID_AUTO, align 4
  %124 = load i32, i32* @CTLFLAG_RD, align 4
  %125 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %125, i32 0, i32 3
  %127 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %121, %struct.sysctl_oid_list* %122, i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 %124, i32* %126, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0))
  %128 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %129 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %130 = load i32, i32* @OID_AUTO, align 4
  %131 = load i32, i32* @CTLFLAG_RD, align 4
  %132 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %133 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %132, i32 0, i32 2
  %134 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %128, %struct.sysctl_oid_list* %129, i32 %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i32 %131, i32* %133, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0))
  %135 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %136 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i32, i32* @CTLFLAG_RD, align 4
  %139 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %140 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %139, i32 0, i32 1
  %141 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %135, %struct.sysctl_oid_list* %136, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 %138, i32* %140, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0))
  %142 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %143 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %144 = load i32, i32* @OID_AUTO, align 4
  %145 = load i32, i32* @CTLFLAG_RD, align 4
  %146 = load %struct.ccr_softc*, %struct.ccr_softc** %2, align 8
  %147 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %146, i32 0, i32 0
  %148 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %142, %struct.sysctl_oid_list* %143, i32 %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %145, i32* %147, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
