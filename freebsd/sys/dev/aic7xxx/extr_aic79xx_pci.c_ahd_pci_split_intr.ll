; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_pci_split_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_pci_split_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64, i32 }

@PCIXR_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: PCI Split Interrupt - PCI-X status = 0x%x\0A\00", align 1
@DCHSPLTSTAT0 = common dso_local global i32 0, align 4
@DCHSPLTSTAT1 = common dso_local global i32 0, align 4
@SGSPLTSTAT0 = common dso_local global i32 0, align 4
@SGSPLTSTAT1 = common dso_local global i32 0, align 4
@ahd_pci_split_intr.s = internal global i8* null, align 8
@split_status_strings = common dso_local global i8** null, align 8
@split_status_source = common dso_local global i8** null, align 8
@ahd_pci_split_intr.s.1 = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"SG\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSPLTINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_pci_split_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_pci_split_intr(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCIXR_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @aic_pci_read_config(i32 %15, i64 %20, i32 4)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = call i8* @ahd_name(%struct.ahd_softc* %22)
  %24 = load i32, i32* %11, align 4
  %25 = ashr i32 %24, 16
  %26 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = call i32 @ahd_save_modes(%struct.ahd_softc* %27)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %93, %2
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ahd_set_modes(%struct.ahd_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %38 = load i32, i32* @DCHSPLTSTAT0, align 4
  %39 = call i32 @ahd_inb(%struct.ahd_softc* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %44 = load i32, i32* @DCHSPLTSTAT1, align 4
  %45 = call i32 @ahd_inb(%struct.ahd_softc* %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %50 = load i32, i32* @DCHSPLTSTAT0, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ahd_outb(%struct.ahd_softc* %49, i32 %50, i32 %54)
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = load i32, i32* @DCHSPLTSTAT1, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ahd_outb(%struct.ahd_softc* %56, i32 %57, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %32
  br label %93

66:                                               ; preds = %32
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %68 = load i32, i32* @SGSPLTSTAT0, align 4
  %69 = call i32 @ahd_inb(%struct.ahd_softc* %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %74 = load i32, i32* @SGSPLTSTAT1, align 4
  %75 = call i32 @ahd_inb(%struct.ahd_softc* %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = load i32, i32* @SGSPLTSTAT0, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ahd_outb(%struct.ahd_softc* %79, i32 %80, i32 %84)
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %87 = load i32, i32* @SGSPLTSTAT1, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ahd_outb(%struct.ahd_softc* %86, i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %66, %65
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %29

96:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %156, %96
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %159

100:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %152, %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %104
  %114 = load i8**, i8*** @split_status_strings, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** @ahd_pci_split_intr.s, align 8
  %119 = load i8*, i8** @ahd_pci_split_intr.s, align 8
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %121 = call i8* @ahd_name(%struct.ahd_softc* %120)
  %122 = load i8**, i8*** @split_status_source, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, i8*, ...) @printf(i8* %119, i8* %121, i8* %126)
  br label %128

128:                                              ; preds = %113, %104
  %129 = load i32, i32* %10, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %152

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = shl i32 1, %137
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %132
  %142 = load i8**, i8*** @split_status_strings, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** @ahd_pci_split_intr.s.1, align 8
  %147 = load i8*, i8** @ahd_pci_split_intr.s.1, align 8
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %149 = call i8* @ahd_name(%struct.ahd_softc* %148)
  %150 = call i32 (i8*, i8*, ...) @printf(i8* %147, i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %151

151:                                              ; preds = %141, %132
  br label %152

152:                                              ; preds = %151, %131
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %101

155:                                              ; preds = %101
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %97

159:                                              ; preds = %97
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %161 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %164 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PCIXR_STATUS, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @aic_pci_write_config(i32 %162, i64 %167, i32 %168, i32 4)
  %170 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %171 = load i32, i32* @CLRINT, align 4
  %172 = load i32, i32* @CLRSPLTINT, align 4
  %173 = call i32 @ahd_outb(%struct.ahd_softc* %170, i32 %171, i32 %172)
  %174 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @ahd_restore_modes(%struct.ahd_softc* %174, i32 %175)
  ret void
}

declare dso_local i32 @aic_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @aic_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
