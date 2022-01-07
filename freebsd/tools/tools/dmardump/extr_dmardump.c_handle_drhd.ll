; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/dmardump/extr_dmardump.c_handle_drhd.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/dmardump/extr_dmardump.c_handle_drhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_root_entry = type { i32, i32 }

@DMAR_VER_REG = common dso_local global i32 0, align 4
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"drhd @ %#jx (version %d.%d) PCI segment %d%s:\0A\00", align 1
@DMAR_GSTS_TES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" (disabled)\00", align 1
@DMAR_GSTS_RTPS = common dso_local global i32 0, align 4
@DMAR_RTADDR_REG = common dso_local global i32 0, align 4
@DMAR_RTADDR_RTT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"    %sroot table @ 0x%#jx\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"extended \00", align 1
@DMAR_RTADDR_RTA_MASK = common dso_local global i32 0, align 4
@DMAR_ROOT_R1_P = common dso_local global i32 0, align 4
@DMAR_ROOT_R1_CTP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @handle_drhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_drhd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_root_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @acpi_map_physical(i32 %12, i32 4096)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @DMAR_VER_REG, align 4
  %16 = call i32 @read_4(i8* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @DMAR_GSTS_REG, align 4
  %19 = call i32 @read_4(i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @DMAR_MAJOR_VER(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @DMAR_MINOR_VER(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DMAR_GSTS_TES, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24, i32 %26, i32 %27, i8* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DMAR_GSTS_TES, align 4
  %37 = load i32, i32* @DMAR_GSTS_RTPS, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @DMAR_GSTS_TES, align 4
  %41 = load i32, i32* @DMAR_GSTS_RTPS, align 4
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %101

45:                                               ; preds = %2
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @DMAR_RTADDR_REG, align 4
  %48 = call i32 @read_8(i8* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DMAR_RTADDR_RTT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DMAR_RTADDR_RTA_MASK, align 4
  %60 = and i32 %58, %59
  %61 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @DMAR_RTADDR_RTA_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i8* @acpi_map_physical(i32 %64, i32 4096)
  %66 = bitcast i8* %65 to %struct.dmar_root_entry*
  store %struct.dmar_root_entry* %66, %struct.dmar_root_entry** %5, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %98, %45
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 255
  br i1 %69, label %70, label %101

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %97

74:                                               ; preds = %70
  %75 = load %struct.dmar_root_entry*, %struct.dmar_root_entry** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.dmar_root_entry, %struct.dmar_root_entry* %75, i64 %77
  %79 = getelementptr inbounds %struct.dmar_root_entry, %struct.dmar_root_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DMAR_ROOT_R1_P, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.dmar_root_entry*, %struct.dmar_root_entry** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dmar_root_entry, %struct.dmar_root_entry* %87, i64 %89
  %91 = getelementptr inbounds %struct.dmar_root_entry, %struct.dmar_root_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DMAR_ROOT_R1_CTP_MASK, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @dump_context_table(i32 %85, i32 %86, i32 %94)
  br label %96

96:                                               ; preds = %84, %74
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %67

101:                                              ; preds = %44, %67
  ret void
}

declare dso_local i8* @acpi_map_physical(i32, i32) #1

declare dso_local i32 @read_4(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i32 @DMAR_MAJOR_VER(i32) #1

declare dso_local i32 @DMAR_MINOR_VER(i32) #1

declare dso_local i32 @read_8(i8*, i32) #1

declare dso_local i32 @dump_context_table(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
