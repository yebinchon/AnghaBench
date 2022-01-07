; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_handle_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i64, i64 }
%struct.ahci_cmd_hdr = type { i64 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_READ_LOG_EXT = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @ahci_handle_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_read_log(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ahci_cmd_hdr*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  store i32* %11, i32** %9, align 8
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  store i32* %12, i32** %10, align 8
  %13 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %14 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AHCI_CL_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = inttoptr i64 %20 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %21, %struct.ahci_cmd_hdr** %7, align 8
  %22 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %23 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %3
  %27 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 9
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 13
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46, %41, %36, %31, %26, %3
  %52 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @ATA_E_ABORT, align 4
  %56 = shl i32 %55, 8
  %57 = load i32, i32* @ATA_S_READY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ATA_S_ERROR, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %52, i32 %53, i32* %54, i32 %60)
  br label %146

62:                                               ; preds = %46
  %63 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %64 = call i32 @memset(i32* %63, i32 0, i32 512)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 1, i32* %71, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  store i32 1, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 19
  store i32 1, i32* %75, align 4
  br label %123

76:                                               ; preds = %62
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %84 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32* %82, i32 %85, i32 4)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @ahci_checksum(i32* %87, i32 512)
  br label %122

89:                                               ; preds = %76
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 19
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %96 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @blockif_candelete(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %102 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @blockif_is_ro(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %107, align 16
  %108 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 1
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %100, %94
  br label %121

110:                                              ; preds = %89
  %111 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @ATA_E_ABORT, align 4
  %115 = shl i32 %114, 8
  %116 = load i32, i32* @ATA_S_READY, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @ATA_S_ERROR, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %111, i32 %112, i32* %113, i32 %119)
  br label %146

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %81
  br label %123

123:                                              ; preds = %122, %69
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATA_READ_LOG_EXT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %131 = call i32 @ahci_write_fis_piosetup(%struct.ahci_port* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %137 = bitcast i32* %136 to i8*
  %138 = call i32 @write_prdt(%struct.ahci_port* %133, i32 %134, i32* %135, i8* %137, i32 512)
  %139 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* @ATA_S_DSC, align 4
  %143 = load i32, i32* @ATA_S_READY, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %139, i32 %140, i32* %141, i32 %144)
  br label %146

146:                                              ; preds = %132, %110, %51
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ahci_checksum(i32*, i32) #1

declare dso_local i64 @blockif_candelete(i32) #1

declare dso_local i32 @blockif_is_ro(i32) #1

declare dso_local i32 @ahci_write_fis_piosetup(%struct.ahci_port*) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
