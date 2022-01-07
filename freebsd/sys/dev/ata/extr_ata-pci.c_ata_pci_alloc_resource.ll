; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ata_pci_controller = type { %struct.resource*, i64 }
%struct.ata_channel = type { i32 }

@ata_devclass = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_SECONDARY = common dso_local global i32 0, align 4
@ATA_PRIMARY = common dso_local global i32 0, align 4
@ATA_IOSIZE = common dso_local global i32 0, align 4
@ATA_CTLOFFSET = common dso_local global i32 0, align 4
@ATA_CTLIOSIZE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @ata_pci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ata_pci_controller*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.ata_pci_controller* @device_get_softc(i32 %23)
  store %struct.ata_pci_controller* %24, %struct.ata_pci_controller** %18, align 8
  store %struct.resource* null, %struct.resource** %19, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @device_get_devclass(i32 %25)
  %27 = load i64, i64* @ata_devclass, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %144

29:                                               ; preds = %8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.ata_pci_controller* @device_get_softc(i32 %30)
  %32 = bitcast %struct.ata_pci_controller* %31 to %struct.ata_channel*
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @SYS_RES_IOPORT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %29
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %109 [
    i32 128, label %41
    i32 129, label %74
  ]

41:                                               ; preds = %38
  %42 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %18, align 8
  %43 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @ATA_SECONDARY, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @ATA_PRIMARY, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @ATA_IOSIZE, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %53, %41
  %61 = call i32 @PCIR_BAR(i32 0)
  %62 = load i32, i32* %20, align 4
  %63 = shl i32 %62, 3
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @device_get_parent(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @SYS_RES_IOPORT, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %66, i32 %67, i32 %68, i32* %21, i32 %69, i32 %70, i32 %71, i32 %72)
  store %struct.resource* %73, %struct.resource** %19, align 8
  br label %109

74:                                               ; preds = %38
  %75 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %18, align 8
  %76 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load i32, i32* %20, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @ATA_SECONDARY, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @ATA_PRIMARY, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* @ATA_CTLOFFSET, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @ATA_CTLIOSIZE, align 4
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %91, %92
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %86, %74
  %96 = call i32 @PCIR_BAR(i32 1)
  %97 = load i32, i32* %20, align 4
  %98 = shl i32 %97, 3
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @device_get_parent(i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @SYS_RES_IOPORT, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %101, i32 %102, i32 %103, i32* %21, i32 %104, i32 %105, i32 %106, i32 %107)
  store %struct.resource* %108, %struct.resource** %19, align 8
  br label %109

109:                                              ; preds = %38, %95, %60
  br label %110

110:                                              ; preds = %109, %29
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @SYS_RES_IRQ, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %110
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATA_IRQ_RID, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %18, align 8
  %121 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i32, i32* %20, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 14, i32 15
  store i32 %128, i32* %22, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @device_get_parent(i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @SYS_RES_IRQ, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %17, align 4
  %137 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %130, i32 %131, i32 %132, i32* %133, i32 %134, i32 %135, i32 1, i32 %136)
  store %struct.resource* %137, %struct.resource** %19, align 8
  br label %142

138:                                              ; preds = %119
  %139 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %18, align 8
  %140 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %139, i32 0, i32 0
  %141 = load %struct.resource*, %struct.resource** %140, align 8
  store %struct.resource* %141, %struct.resource** %19, align 8
  br label %142

142:                                              ; preds = %138, %124
  br label %143

143:                                              ; preds = %142, %114, %110
  br label %170

144:                                              ; preds = %8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @SYS_RES_IRQ, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ATA_IRQ_RID, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %172

154:                                              ; preds = %148
  %155 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %18, align 8
  %156 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %155, i32 0, i32 0
  %157 = load %struct.resource*, %struct.resource** %156, align 8
  store %struct.resource* %157, %struct.resource** %19, align 8
  br label %169

158:                                              ; preds = %144
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @device_get_parent(i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %160, i32 %161, i32 %162, i32* %163, i32 %164, i32 %165, i32 %166, i32 %167)
  store %struct.resource* %168, %struct.resource** %19, align 8
  br label %169

169:                                              ; preds = %158, %154
  br label %170

170:                                              ; preds = %169, %143
  %171 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %171, %struct.resource** %9, align 8
  br label %172

172:                                              ; preds = %170, %153
  %173 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %173
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
