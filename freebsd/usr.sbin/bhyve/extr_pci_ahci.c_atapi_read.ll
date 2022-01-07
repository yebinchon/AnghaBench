; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, i64 }
%struct.ahci_ioreq = type { i64*, i32, i32, i32, %struct.blockif_req }
%struct.blockif_req = type { i32 }
%struct.ahci_cmd_hdr = type { i32 }
%struct.ahci_prdt_entry = type { i32 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i64 0, align 8
@ATA_I_CMD = common dso_local global i64 0, align 8
@ATA_I_IN = common dso_local global i64 0, align 8
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i64*, i32)* @atapi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_read(%struct.ahci_port* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahci_ioreq*, align 8
  %10 = alloca %struct.ahci_cmd_hdr*, align 8
  %11 = alloca %struct.ahci_prdt_entry*, align 8
  %12 = alloca %struct.blockif_req*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 64
  store i64* %18, i64** %13, align 8
  %19 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %20 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AHCI_CL_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = inttoptr i64 %26 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %27, %struct.ahci_cmd_hdr** %10, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 128
  %30 = bitcast i64* %29 to %struct.ahci_prdt_entry*
  store %struct.ahci_prdt_entry* %30, %struct.ahci_prdt_entry** %11, align 8
  %31 = load i64*, i64** %13, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = call i32 @be32dec(i64* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i64*, i64** %13, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @READ_10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load i64*, i64** %13, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 7
  %42 = call i32 @be16dec(i64* %41)
  store i32 %42, i32* %15, align 4
  br label %47

43:                                               ; preds = %4
  %44 = load i64*, i64** %13, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 6
  %46 = call i32 @be32dec(i64* %45)
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 4
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, -8
  %55 = load i64, i64* @ATA_I_CMD, align 8
  %56 = or i64 %54, %55
  %57 = load i64, i64* @ATA_I_IN, align 8
  %58 = or i64 %56, %57
  %59 = load i64*, i64** %7, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i64*, i64** %7, align 8
  %64 = load i32, i32* @ATA_S_READY, align 4
  %65 = load i32, i32* @ATA_S_DSC, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %61, i32 %62, i64* %63, i32 %66)
  br label %68

68:                                               ; preds = %50, %47
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 %69, 2048
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %71, 2048
  store i32 %72, i32* %15, align 4
  %73 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %74 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %73, i32 0, i32 3
  %75 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %74)
  store %struct.ahci_ioreq* %75, %struct.ahci_ioreq** %9, align 8
  %76 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %77 = icmp ne %struct.ahci_ioreq* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %81 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %80, i32 0, i32 3
  %82 = load i32, i32* @io_flist, align 4
  %83 = call i32 @STAILQ_REMOVE_HEAD(i32* %81, i32 %82)
  %84 = load i64*, i64** %7, align 8
  %85 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %86 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %85, i32 0, i32 0
  store i64* %84, i64** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %89 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %92 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %95 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %97 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %96, i32 0, i32 4
  store %struct.blockif_req* %97, %struct.blockif_req** %12, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.blockif_req*, %struct.blockif_req** %12, align 8
  %102 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %104 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %105 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %11, align 8
  %106 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %10, align 8
  %107 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ahci_build_iov(%struct.ahci_port* %103, %struct.ahci_ioreq* %104, %struct.ahci_prdt_entry* %105, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = shl i32 1, %110
  %112 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %113 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %117 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %116, i32 0, i32 2
  %118 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %119 = load i32, i32* @io_blist, align 4
  %120 = call i32 @TAILQ_INSERT_HEAD(i32* %117, %struct.ahci_ioreq* %118, i32 %119)
  %121 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %122 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.blockif_req*, %struct.blockif_req** %12, align 8
  %125 = call i32 @blockif_read(i32 %123, %struct.blockif_req* %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  ret void
}

declare dso_local i32 @be32dec(i64*) #1

declare dso_local i32 @be16dec(i64*) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i64*, i32) #1

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahci_build_iov(%struct.ahci_port*, %struct.ahci_ioreq*, %struct.ahci_prdt_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @blockif_read(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
