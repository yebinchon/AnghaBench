; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@PCI_POWERSTATE_D0 = common dso_local global i64 0, align 8
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_MINGNT = common dso_local global i32 0, align 4
@PCIR_MAXLAT = common dso_local global i32 0, align 4
@PCIR_SECLAT_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_1 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIR_SECLAT_2 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_2 = common dso_local global i32 0, align 4
@PCIR_SECBUS_2 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_2 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_cfg_restore(i32 %0, %struct.pci_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pci_devinfo* %1, %struct.pci_devinfo** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @pci_get_powerstate(i32 %5)
  %7 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %12 = call i32 @pci_set_powerstate(i32 %10, i64 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCIR_COMMAND, align 4
  %16 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %17 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_write_config(i32 %14, i32 %15, i32 %19, i32 2)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PCIR_INTLINE, align 4
  %23 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %24 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_write_config(i32 %21, i32 %22, i32 %26, i32 1)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PCIR_INTPIN, align 4
  %30 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %31 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_write_config(i32 %28, i32 %29, i32 %33, i32 1)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %37 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %38 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_write_config(i32 %35, i32 %36, i32 %40, i32 1)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PCIR_LATTIMER, align 4
  %44 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %45 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_write_config(i32 %42, i32 %43, i32 %47, i32 1)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @PCIR_PROGIF, align 4
  %51 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %52 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pci_write_config(i32 %49, i32 %50, i32 %54, i32 1)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @PCIR_REVID, align 4
  %58 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %59 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pci_write_config(i32 %56, i32 %57, i32 %61, i32 1)
  %63 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %64 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PCIM_HDRTYPE, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %166 [
    i32 128, label %69
    i32 130, label %84
    i32 129, label %125
  ]

69:                                               ; preds = %13
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @PCIR_MINGNT, align 4
  %72 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %73 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pci_write_config(i32 %70, i32 %71, i32 %75, i32 1)
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @PCIR_MAXLAT, align 4
  %79 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %80 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pci_write_config(i32 %77, i32 %78, i32 %82, i32 1)
  br label %166

84:                                               ; preds = %13
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @PCIR_SECLAT_1, align 4
  %87 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %88 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_write_config(i32 %85, i32 %86, i32 %91, i32 1)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %95 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %96 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pci_write_config(i32 %93, i32 %94, i32 %99, i32 1)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @PCIR_SECBUS_1, align 4
  %103 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %104 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pci_write_config(i32 %101, i32 %102, i32 %107, i32 1)
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @PCIR_PRIBUS_1, align 4
  %111 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %112 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pci_write_config(i32 %109, i32 %110, i32 %115, i32 1)
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %119 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %120 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @pci_write_config(i32 %117, i32 %118, i32 %123, i32 2)
  br label %166

125:                                              ; preds = %13
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @PCIR_SECLAT_2, align 4
  %128 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %129 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @pci_write_config(i32 %126, i32 %127, i32 %132, i32 1)
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @PCIR_SUBBUS_2, align 4
  %136 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %137 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pci_write_config(i32 %134, i32 %135, i32 %140, i32 1)
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @PCIR_SECBUS_2, align 4
  %144 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %145 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pci_write_config(i32 %142, i32 %143, i32 %148, i32 1)
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @PCIR_PRIBUS_2, align 4
  %152 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %153 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @pci_write_config(i32 %150, i32 %151, i32 %156, i32 1)
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @PCIR_BRIDGECTL_2, align 4
  %160 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %161 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @pci_write_config(i32 %158, i32 %159, i32 %164, i32 2)
  br label %166

166:                                              ; preds = %13, %125, %84, %69
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @pci_restore_bars(i32 %167)
  %169 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %170 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %178 = call i32 @pci_cfg_restore_pcie(i32 %176, %struct.pci_devinfo* %177)
  br label %179

179:                                              ; preds = %175, %166
  %180 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %181 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i32, i32* %3, align 4
  %188 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %189 = call i32 @pci_cfg_restore_pcix(i32 %187, %struct.pci_devinfo* %188)
  br label %190

190:                                              ; preds = %186, %179
  %191 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %192 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @pci_resume_msi(i32 %198)
  br label %200

200:                                              ; preds = %197, %190
  %201 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %202 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @pci_resume_msix(i32 %208)
  br label %210

210:                                              ; preds = %207, %200
  ret void
}

declare dso_local i64 @pci_get_powerstate(i32) #1

declare dso_local i32 @pci_set_powerstate(i32, i64) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_restore_bars(i32) #1

declare dso_local i32 @pci_cfg_restore_pcie(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @pci_cfg_restore_pcix(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @pci_resume_msi(i32) #1

declare dso_local i32 @pci_resume_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
