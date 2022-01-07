; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_read_prdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_read_prdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i64 }
%struct.ahci_cmd_hdr = type { i32 }
%struct.ahci_prdt_entry = type { i32, i32 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@DBCMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i8*, i32)* @read_prdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_prdt(%struct.ahci_port* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ahci_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahci_cmd_hdr*, align 8
  %12 = alloca %struct.ahci_prdt_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ahci_port*, %struct.ahci_port** %6, align 8
  %20 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AHCI_CL_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = inttoptr i64 %26 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %27, %struct.ahci_cmd_hdr** %11, align 8
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %13, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 128
  %32 = bitcast i32* %31 to %struct.ahci_prdt_entry*
  store %struct.ahci_prdt_entry* %32, %struct.ahci_prdt_entry** %12, align 8
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %76, %5
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %11, align 8
  %36 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  br i1 %43, label %44, label %79

44:                                               ; preds = %42
  %45 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %12, align 8
  %46 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DBCMASK, align 4
  %49 = and i32 %47, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %17, align 4
  %51 = load %struct.ahci_port*, %struct.ahci_port** %6, align 8
  %52 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ahci_ctx(i32 %53)
  %55 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %12, align 8
  %56 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32* @paddr_guest2host(i32 %54, i32 %57, i32 %58)
  store i32* %59, i32** %16, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @MIN(i32 %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @memcpy(i8* %63, i32* %64, i32 %65)
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr i8, i8* %71, i64 %72
  store i8* %73, i8** %13, align 8
  %74 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %12, align 8
  %75 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %74, i32 1
  store %struct.ahci_prdt_entry* %75, %struct.ahci_prdt_entry** %12, align 8
  br label %76

76:                                               ; preds = %44
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %33

79:                                               ; preds = %42
  ret void
}

declare dso_local i32* @paddr_guest2host(i32, i32, i32) #1

declare dso_local i32 @ahci_ctx(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
