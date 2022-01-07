; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_handle_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_handle_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i8*, i32, i32, i32, i32, i64, i64 }
%struct.ahci_cmd_hdr = type { i64 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"001\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BHYVE SATA DISK\00", align 1
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_SATA_GEN1 = common dso_local global i32 0, align 4
@ATA_SATA_GEN2 = common dso_local global i32 0, align 4
@ATA_SATA_GEN3 = common dso_local global i32 0, align 4
@ATA_SUPPORT_NCQ = common dso_local global i32 0, align 4
@ATA_SUPPORT_RCVSND_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SUPPORT_POWERMGT = common dso_local global i32 0, align 4
@ATA_SUPPORT_WRITECACHE = common dso_local global i32 0, align 4
@ATA_SUPPORT_LOOKAHEAD = common dso_local global i32 0, align 4
@ATA_SUPPORT_NOP = common dso_local global i32 0, align 4
@ATA_SUPPORT_ADDRESS48 = common dso_local global i32 0, align 4
@ATA_SUPPORT_FLUSHCACHE = common dso_local global i32 0, align 4
@ATA_SUPPORT_FLUSHCACHE48 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_SUPPORT_RZAT = common dso_local global i32 0, align 4
@ATA_SUPPORT_DRAT = common dso_local global i32 0, align 4
@ATA_SUPPORT_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_SUPPORT_RWLOGDMAEXT = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @handle_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_identify(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ahci_cmd_hdr*, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %19 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AHCI_CL_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = inttoptr i64 %25 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %26, %struct.ahci_cmd_hdr** %7, align 8
  %27 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %28 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31, %3
  %37 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @ATA_E_ABORT, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* @ATA_S_READY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ATA_S_ERROR, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %37, i32 %38, i32* %39, i32 %45)
  br label %307

47:                                               ; preds = %31
  %48 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %49 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @blockif_is_ro(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %53 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @blockif_candelete(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %57 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @blockif_sectsz(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %61 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @blockif_size(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %67 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @blockif_chs(i32 %68, i32* %15, i32* %17, i32* %16)
  %70 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %71 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @blockif_psectsz(i32 %72, i32* %11, i32* %12)
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %75 = call i32 @memset(i32* %74, i32 0, i32 1024)
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  store i32 64, i32* %76, align 16
  %77 = load i32, i32* %15, align 4
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %17, align 4
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 3
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %16, align 4
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 6
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %86 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @ata_string(i32* %84, i8* %87, i32 20)
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %90 = getelementptr inbounds i32, i32* %89, i64 23
  %91 = call i32 @ata_string(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 8)
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %93 = getelementptr inbounds i32, i32* %92, i64 27
  %94 = call i32 @ata_string(i32* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 40)
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 47
  store i32 32896, i32* %95, align 4
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 48
  store i32 0, i32* %96, align 16
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 49
  store i32 2816, i32* %97, align 4
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 50
  store i32 16384, i32* %98, align 8
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 53
  store i32 6, i32* %99, align 4
  %100 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %101 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %47
  %105 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %106 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 256, %107
  %109 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 59
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %47
  %111 = load i32, i32* %9, align 4
  %112 = icmp sle i32 %111, 268435455
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 60
  store i32 %114, i32* %115, align 16
  %116 = load i32, i32* %9, align 4
  %117 = ashr i32 %116, 16
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 61
  store i32 %117, i32* %118, align 4
  br label %122

119:                                              ; preds = %110
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 60
  store i32 65535, i32* %120, align 16
  %121 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 61
  store i32 4095, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 63
  store i32 7, i32* %123, align 4
  %124 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %125 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATA_WDMA0, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %132 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 7
  %135 = add nsw i32 %134, 8
  %136 = shl i32 1, %135
  %137 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 63
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %130, %122
  %141 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 64
  store i32 3, i32* %141, align 16
  %142 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 65
  store i32 120, i32* %142, align 4
  %143 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 66
  store i32 120, i32* %143, align 8
  %144 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 67
  store i32 120, i32* %144, align 4
  %145 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 68
  store i32 120, i32* %145, align 16
  %146 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 69
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 75
  store i32 31, i32* %147, align 4
  %148 = load i32, i32* @ATA_SATA_GEN1, align 4
  %149 = load i32, i32* @ATA_SATA_GEN2, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @ATA_SATA_GEN3, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @ATA_SUPPORT_NCQ, align 4
  %154 = or i32 %152, %153
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 76
  store i32 %154, i32* %155, align 16
  %156 = load i32, i32* @ATA_SUPPORT_RCVSND_FPDMA_QUEUED, align 4
  %157 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %158 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %161 = and i32 %159, %160
  %162 = ashr i32 %161, 3
  %163 = or i32 %156, %162
  %164 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 77
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 80
  store i32 1008, i32* %165, align 16
  %166 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 81
  store i32 40, i32* %166, align 4
  %167 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %168 = load i32, i32* @ATA_SUPPORT_WRITECACHE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @ATA_SUPPORT_LOOKAHEAD, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @ATA_SUPPORT_NOP, align 4
  %173 = or i32 %171, %172
  %174 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 82
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %176 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE48, align 4
  %179 = or i32 %177, %178
  %180 = or i32 %179, 16384
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 83
  store i32 %180, i32* %181, align 4
  %182 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 84
  store i32 16384, i32* %182, align 16
  %183 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %184 = load i32, i32* @ATA_SUPPORT_WRITECACHE, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @ATA_SUPPORT_LOOKAHEAD, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @ATA_SUPPORT_NOP, align 4
  %189 = or i32 %187, %188
  %190 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 85
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %192 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE48, align 4
  %195 = or i32 %193, %194
  %196 = or i32 %195, 32768
  %197 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 86
  store i32 %196, i32* %197, align 8
  %198 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 87
  store i32 16384, i32* %198, align 4
  %199 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 88
  store i32 127, i32* %199, align 16
  %200 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %201 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @ATA_UDMA0, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %140
  %207 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %208 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 7
  %211 = add nsw i32 %210, 8
  %212 = shl i32 1, %211
  %213 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 88
  %214 = load i32, i32* %213, align 16
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 16
  br label %216

216:                                              ; preds = %206, %140
  %217 = load i32, i32* %9, align 4
  %218 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 100
  store i32 %217, i32* %218, align 16
  %219 = load i32, i32* %9, align 4
  %220 = ashr i32 %219, 16
  %221 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 101
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* %9, align 4
  %223 = ashr i32 %222, 32
  %224 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 102
  store i32 %223, i32* %224, align 8
  %225 = load i32, i32* %9, align 4
  %226 = ashr i32 %225, 48
  %227 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 103
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %216
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @ATA_SUPPORT_RZAT, align 4
  %235 = load i32, i32* @ATA_SUPPORT_DRAT, align 4
  %236 = or i32 %234, %235
  %237 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 69
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 4
  %240 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 105
  store i32 1, i32* %240, align 4
  %241 = load i32, i32* @ATA_SUPPORT_DSM_TRIM, align 4
  %242 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 169
  store i32 %241, i32* %242, align 4
  br label %243

243:                                              ; preds = %233, %230, %216
  %244 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  store i32 16384, i32* %244, align 8
  %245 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 209
  store i32 16384, i32* %245, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %243
  %250 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, 8192
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %10, align 4
  %255 = sdiv i32 %253, %254
  %256 = call i32 @ffsl(i32 %255)
  %257 = sub nsw i32 %256, 1
  %258 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %257
  store i32 %260, i32* %258, align 8
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %10, align 4
  %263 = sdiv i32 %261, %262
  %264 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 209
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %263
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %249, %243
  %268 = load i32, i32* %10, align 4
  %269 = icmp sgt i32 %268, 512
  br i1 %269, label %270, label %281

270:                                              ; preds = %267
  %271 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, 4096
  store i32 %273, i32* %271, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sdiv i32 %274, 2
  %276 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 117
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* %10, align 4
  %278 = sdiv i32 %277, 2
  %279 = ashr i32 %278, 16
  %280 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 118
  store i32 %279, i32* %280, align 8
  br label %281

281:                                              ; preds = %270, %267
  %282 = load i32, i32* @ATA_SUPPORT_RWLOGDMAEXT, align 4
  %283 = or i32 %282, 16384
  %284 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 119
  store i32 %283, i32* %284, align 4
  %285 = load i32, i32* @ATA_SUPPORT_RWLOGDMAEXT, align 4
  %286 = or i32 %285, 16384
  %287 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 120
  store i32 %286, i32* %287, align 16
  %288 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 222
  store i32 4128, i32* %288, align 8
  %289 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 255
  store i32 165, i32* %289, align 4
  %290 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %291 = call i32 @ahci_checksum(i32* %290, i32 1024)
  %292 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %293 = call i32 @ahci_write_fis_piosetup(%struct.ahci_port* %292)
  %294 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %295 = load i32, i32* %5, align 4
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %298 = bitcast i32* %297 to i8*
  %299 = call i32 @write_prdt(%struct.ahci_port* %294, i32 %295, i32* %296, i8* %298, i32 1024)
  %300 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %301 = load i32, i32* %5, align 4
  %302 = load i32*, i32** %6, align 8
  %303 = load i32, i32* @ATA_S_DSC, align 4
  %304 = load i32, i32* @ATA_S_READY, align 4
  %305 = or i32 %303, %304
  %306 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %300, i32 %301, i32* %302, i32 %305)
  br label %307

307:                                              ; preds = %281, %36
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @blockif_is_ro(i32) #1

declare dso_local i32 @blockif_candelete(i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @blockif_size(i32) #1

declare dso_local i32 @blockif_chs(i32, i32*, i32*, i32*) #1

declare dso_local i32 @blockif_psectsz(i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ata_string(i32*, i8*, i32) #1

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @ahci_checksum(i32*, i32) #1

declare dso_local i32 @ahci_write_fis_piosetup(%struct.ahci_port*) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
