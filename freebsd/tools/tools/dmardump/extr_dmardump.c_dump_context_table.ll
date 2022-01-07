; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/dmardump/extr_dmardump.c_dump_context_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/dmardump/extr_dmardump.c_dump_context_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx_entry = type { i32, i32 }
%struct.pci_conf = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DMAR_PAGE_SIZE = common dso_local global i32 0, align 4
@DMAR_CTX_CNT = common dso_local global i32 0, align 4
@DMAR_CTX1_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09PCI bus %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09    { %d,%d }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (%s%lu)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09    { %d,%d } (absent)\00", align 1
@DMAR_CTX1_FPD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" FPD\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" UNTR\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" TR\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" PASS\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" TT3?\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" SLPT %#jx\00", align 1
@DMAR_CTX1_ASR_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c" domain %d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @dump_context_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_context_table(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmar_ctx_entry*, align 8
  %8 = alloca %struct.pci_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DMAR_PAGE_SIZE, align 4
  %13 = call %struct.dmar_ctx_entry* @acpi_map_physical(i32 %11, i32 %12)
  store %struct.dmar_ctx_entry* %13, %struct.dmar_ctx_entry** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %133, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @DMAR_CTX_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %136

18:                                               ; preds = %14
  %19 = load %struct.dmar_ctx_entry*, %struct.dmar_ctx_entry** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMAR_CTX1_P, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %133

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.pci_conf* @pci_find_conf(i32 %36, i32 %37, i32 0, i32 %38)
  store %struct.pci_conf* %39, %struct.pci_conf** %8, align 8
  %40 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %41 = icmp eq %struct.pci_conf* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 3
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 7
  %49 = call %struct.pci_conf* @pci_find_conf(i32 %43, i32 %44, i32 %46, i32 %48)
  store %struct.pci_conf* %49, %struct.pci_conf** %8, align 8
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %52 = icmp ne %struct.pci_conf* %51, null
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  %54 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %55 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %59 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %64 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %53
  %71 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %72 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.pci_conf*, %struct.pci_conf** %8, align 8
  %75 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %53
  br label %85

79:                                               ; preds = %50
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, 3
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 7
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %79, %78
  %86 = load %struct.dmar_ctx_entry*, %struct.dmar_ctx_entry** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %86, i64 %88
  %90 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DMAR_CTX1_FPD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %85
  %98 = load %struct.dmar_ctx_entry*, %struct.dmar_ctx_entry** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %98, i64 %100
  %102 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 12
  switch i32 %104, label %111 [
    i32 128, label %105
    i32 129, label %107
    i32 130, label %109
  ]

105:                                              ; preds = %97
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %113

107:                                              ; preds = %97
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %113

109:                                              ; preds = %97
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %113

111:                                              ; preds = %97
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %109, %107, %105
  %114 = load %struct.dmar_ctx_entry*, %struct.dmar_ctx_entry** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %114, i64 %116
  %118 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DMAR_CTX1_ASR_MASK, align 4
  %121 = and i32 %119, %120
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %121)
  %123 = load %struct.dmar_ctx_entry*, %struct.dmar_ctx_entry** %7, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %123, i64 %125
  %127 = getelementptr inbounds %struct.dmar_ctx_entry, %struct.dmar_ctx_entry* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @DMAR_CTX2_GET_DID(i32 %128)
  %130 = trunc i64 %129 to i32
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %133

133:                                              ; preds = %113, %28
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %14

136:                                              ; preds = %14
  ret void
}

declare dso_local %struct.dmar_ctx_entry* @acpi_map_physical(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.pci_conf* @pci_find_conf(i32, i32, i32, i32) #1

declare dso_local i64 @DMAR_CTX2_GET_DID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
