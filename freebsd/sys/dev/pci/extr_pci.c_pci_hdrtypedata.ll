; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_hdrtypedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_hdrtypedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }

@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@PCIR_MINGNT = common dso_local global i32 0, align 4
@PCIR_MAXLAT = common dso_local global i32 0, align 4
@PCI_MAXMAPS_0 = common dso_local global i32 0, align 4
@PCIR_SECLAT_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_1 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCI_MAXMAPS_1 = common dso_local global i32 0, align 4
@PCIR_SECLAT_2 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_2 = common dso_local global i32 0, align 4
@PCIR_SECBUS_2 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_2 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_2 = common dso_local global i32 0, align 4
@PCIR_SUBVEND_2 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_2 = common dso_local global i32 0, align 4
@PCI_MAXMAPS_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.TYPE_5__*)* @pci_hdrtypedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_hdrtypedata(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCIM_HDRTYPE, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %198 [
    i32 128, label %16
    i32 130, label %60
    i32 129, label %119
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %22 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 2)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %32 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 2)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PCIR_MINGNT, align 4
  %42 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 1)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PCIR_MAXLAT, align 4
  %52 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 1)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @PCI_MAXMAPS_0, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %198

60:                                               ; preds = %5
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @PCIR_SECLAT_1, align 4
  %66 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 1)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %77 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 1)
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @PCIR_SECBUS_1, align 4
  %88 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 1)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @PCIR_PRIBUS_1, align 4
  %99 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 1)
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %110 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 2)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load i32, i32* @PCI_MAXMAPS_1, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %198

119:                                              ; preds = %5
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @PCIR_SECLAT_2, align 4
  %125 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 1)
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @PCIR_SUBBUS_2, align 4
  %136 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 1)
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i8* %138, i8** %141, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @PCIR_SECBUS_2, align 4
  %147 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 1)
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i8* %149, i8** %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @PCIR_PRIBUS_2, align 4
  %158 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 1)
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @PCIR_BRIDGECTL_2, align 4
  %169 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 2)
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i8* %171, i8** %174, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @PCIR_SUBVEND_2, align 4
  %180 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 2)
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @PCIR_SUBDEV_2, align 4
  %190 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 2)
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* @PCI_MAXMAPS_2, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %5, %119, %60, %16
  ret void
}

declare dso_local i32 @PCIB_READ_CONFIG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
