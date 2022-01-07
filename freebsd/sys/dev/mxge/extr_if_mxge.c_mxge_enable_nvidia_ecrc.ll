; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_enable_nvidia_ecrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_enable_nvidia_ecrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@mxge_nvidia_ecrc_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not find parent?\0A\00", align 1
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCI_IVAR_BUS = common dso_local global i32 0, align 4
@PCI_IVAR_SLOT = common dso_local global i32 0, align 4
@PCI_IVAR_FUNCTION = common dso_local global i32 0, align 4
@PCI_IVAR_VENDOR = common dso_local global i32 0, align 4
@PCI_IVAR_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"pmap_kenter_temporary didn't\0A\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"mapping failed: 0x%x:0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"extended mapping failed\0A\00", align 1
@mxge_verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Enabled ECRC on upstream Nvidia bridge at %d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @mxge_enable_nvidia_ecrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_enable_nvidia_ecrc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %19 = load i32, i32* @mxge_nvidia_ecrc_enable, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %207

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32* @device_get_parent(i32* %25)
  %27 = call i32* @device_get_parent(i32* %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 (i32*, i8*, ...) @device_printf(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %207

35:                                               ; preds = %22
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @PCIR_VENDOR, align 4
  %38 = call i32 @pci_read_config(i32* %36, i32 %37, i32 2)
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @PCIR_DEVICE, align 4
  %41 = call i32 @pci_read_config(i32* %39, i32 %40, i32 2)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 4318
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %207

45:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 93
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i64 3758096384, i64* %4, align 8
  br label %78

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %50, 884
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp sle i32 %53, 888
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = call i32* @pci_find_bsf(i32 0, i32 0, i32 0)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @PCIR_VENDOR, align 4
  %62 = call i32 @pci_read_config(i32* %60, i32 %61, i32 2)
  %63 = icmp eq i32 4318, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @PCIR_DEVICE, align 4
  %67 = call i32 @pci_read_config(i32* %65, i32 %66, i32 2)
  %68 = icmp eq i32 873, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @pci_read_config(i32* %70, i32 144, i32 2)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 32766
  %75 = shl i64 %74, 25
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %69, %64, %59, %55
  br label %77

77:                                               ; preds = %76, %52, %49
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %207

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = call i32* @device_get_parent(i32* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @PCI_IVAR_BUS, align 4
  %87 = call i32 @BUS_READ_IVAR(i32* %84, i32* %85, i32 %86, i64* %13)
  %88 = load i32*, i32** %8, align 8
  %89 = call i32* @device_get_parent(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* @PCI_IVAR_SLOT, align 4
  %92 = call i32 @BUS_READ_IVAR(i32* %89, i32* %90, i32 %91, i64* %14)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @device_get_parent(i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* @PCI_IVAR_FUNCTION, align 4
  %97 = call i32 @BUS_READ_IVAR(i32* %94, i32* %95, i32 %96, i64* %15)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32* @device_get_parent(i32* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @PCI_IVAR_VENDOR, align 4
  %102 = call i32 @BUS_READ_IVAR(i32* %99, i32* %100, i32 %101, i64* %16)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32* @device_get_parent(i32* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @PCI_IVAR_DEVICE, align 4
  %107 = call i32 @BUS_READ_IVAR(i32* %104, i32* %105, i32 %106, i64* %17)
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* %13, align 8
  %110 = mul i64 1048576, %109
  %111 = add i64 %108, %110
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %14, align 8
  %114 = mul i64 8, %113
  %115 = add i64 %112, %114
  %116 = mul i64 4096, %115
  %117 = add i64 %111, %116
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @trunc_page(i32 %119)
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = call i8* @pmap_mapdev(i32 %120, i32 %121)
  store i8* %122, i8** %6, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %82
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 (i32*, i8*, ...) @device_printf(i32* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %207

130:                                              ; preds = %82
  %131 = load i8*, i8** %6, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @PAGE_MASK, align 8
  %134 = and i64 %132, %133
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8* %135, i8** %7, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* @PCIR_VENDOR, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = bitcast i8* %139 to i32*
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %10, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* @PCIR_DEVICE, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = bitcast i8* %145 to i32*
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %16, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %130
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %17, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %168, label %157

157:                                              ; preds = %152, %130
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (i32*, i8*, ...) @device_printf(i32* %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i8*, i8** %6, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = call i32 @pmap_unmapdev(i32 %165, i32 %166)
  br label %207

168:                                              ; preds = %152
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 376
  %171 = bitcast i8* %170 to i32*
  store i32* %171, i32** %18, align 8
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %185

176:                                              ; preds = %168
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 (i32*, i8*, ...) @device_printf(i32* %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i8*, i8** %6, align 8
  %182 = ptrtoint i8* %181 to i32
  %183 = load i32, i32* @PAGE_SIZE, align 4
  %184 = call i32 @pmap_unmapdev(i32 %182, i32 %183)
  br label %207

185:                                              ; preds = %168
  %186 = load i32, i32* %3, align 4
  %187 = or i32 %186, 64
  %188 = load i32*, i32** %18, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i8*, i8** %6, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = load i32, i32* @PAGE_SIZE, align 4
  %192 = call i32 @pmap_unmapdev(i32 %190, i32 %191)
  %193 = load i64, i64* @mxge_verbose, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %185
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i64, i64* %14, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i64, i64* %15, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 (i32*, i8*, ...) @device_printf(i32* %198, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %200, i32 %202, i32 %204)
  br label %206

206:                                              ; preds = %195, %185
  br label %207

207:                                              ; preds = %206, %176, %157, %125, %81, %44, %30, %21
  ret void
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i32 @BUS_READ_IVAR(i32*, i32*, i32, i64*) #1

declare dso_local i8* @pmap_mapdev(i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
