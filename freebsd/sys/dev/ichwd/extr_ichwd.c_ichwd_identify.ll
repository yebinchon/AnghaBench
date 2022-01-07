; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ichwd_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unexpected TCO version %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"could not find PCI SMBus device for TCOv4\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"could not find PCI LPC bridge device for TCOv1-3\00", align 1
@ICH_RCBA = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ICH_GCS_OFFSET = common dso_local global i32 0, align 4
@ICH_GCS_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Can not set TCO v%d memory resource for RCBA\0A\00", align 1
@ICH_PBASE = common dso_local global i32 0, align 4
@ICH_PMC_OFFSET = common dso_local global i32 0, align 4
@ICH_PMC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Can not set TCO v%d memory resource for PBASE\0A\00", align 1
@ICH_TCOCTL = common dso_local global i32 0, align 4
@ICH_TCOCTL_TCO_BASE_EN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"TCO v%d decoding is not enabled\0A\00", align 1
@ICH_TCOBASE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ICH_TCOBASE_ADDRMASK = common dso_local global i32 0, align 4
@ICH_TCOBASE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Can not set TCO v%d I/O resource (err = %d)\0A\00", align 1
@SBREG_BAR = common dso_local global i32 0, align 4
@SMB_PORT_ID = common dso_local global i32 0, align 4
@SMB_GC_REG = common dso_local global i32 0, align 4
@SMB_GC_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Can not set TCO v%d PCR I/O resource (err = %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Can not set unknown TCO v%d memory resource for unknown base address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @ichwd_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichwd_identify(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ichwd_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @ichwd_find_ich_lpc_bridge(i32* %13, %struct.ichwd_device** %5)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @ichwd_find_smb_dev(i32* %18, %struct.ichwd_device** %5)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %197

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %26 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %31 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %29, i8* %34)
  %36 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %37 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br label %43

43:                                               ; preds = %40, %24
  %44 = phi i1 [ true, %24 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %48 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 4
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br label %54

54:                                               ; preds = %51, %43
  %55 = phi i1 [ true, %43 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @device_find_child(i32* %58, i32 %61, i32 0)
  store i32* %62, i32** %8, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @BUS_ADD_CHILD(i32* %65, i32 0, i32 %68, i32 0)
  store i32* %69, i32** %8, align 8
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32*, i32** %8, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %197

74:                                               ; preds = %70
  %75 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %76 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %191 [
    i32 1, label %78
    i32 2, label %79
    i32 3, label %100
    i32 4, label %121
  ]

78:                                               ; preds = %74
  br label %197

79:                                               ; preds = %74
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @ICH_RCBA, align 4
  %82 = call i32 @pci_read_config(i32* %80, i32 %81, i32 4)
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @SYS_RES_MEMORY, align 4
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, -16384
  %87 = load i32, i32* @ICH_GCS_OFFSET, align 4
  %88 = add i32 %86, %87
  %89 = load i32, i32* @ICH_GCS_SIZE, align 4
  %90 = call i32 @bus_set_resource(i32* %83, i32 %84, i32 0, i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %96 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32*, i8*, i32, ...) @ichwd_verbose_printf(i32* %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %79
  br label %197

100:                                              ; preds = %74
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @ICH_PBASE, align 4
  %103 = call i32 @pci_read_config(i32* %101, i32 %102, i32 4)
  store i32 %103, i32* %10, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @SYS_RES_MEMORY, align 4
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, -512
  %108 = load i32, i32* @ICH_PMC_OFFSET, align 4
  %109 = add i32 %107, %108
  %110 = load i32, i32* @ICH_PMC_SIZE, align 4
  %111 = call i32 @bus_set_resource(i32* %104, i32 %105, i32 0, i32 %109, i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %100
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %117 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @ichwd_verbose_printf(i32* %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %100
  br label %197

121:                                              ; preds = %74
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @ICH_TCOCTL, align 4
  %124 = call i32 @pci_read_config(i32* %122, i32 %123, i32 4)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @ICH_TCOCTL_TCO_BASE_EN, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i32*, i32** %8, align 8
  %131 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %132 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32*, i8*, i32, ...) @ichwd_verbose_printf(i32* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %197

135:                                              ; preds = %121
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* @ICH_TCOBASE, align 4
  %138 = call i32 @pci_read_config(i32* %136, i32 %137, i32 4)
  store i32 %138, i32* %10, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* @SYS_RES_IOPORT, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @ICH_TCOBASE_ADDRMASK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @ICH_TCOBASE_SIZE, align 4
  %145 = call i32 @bus_set_resource(i32* %139, i32 %140, i32 0, i32 %143, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %135
  %149 = load i32*, i32** %8, align 8
  %150 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %151 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 (i32*, i8*, i32, ...) @ichwd_verbose_printf(i32* %149, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %135
  %156 = call i32 @pci_cfgregwrite(i32 0, i32 31, i32 1, i32 225, i32 0, i32 1)
  %157 = load i32, i32* @SBREG_BAR, align 4
  %158 = add nsw i32 %157, 4
  %159 = call i32 @pci_cfgregread(i32 0, i32 31, i32 1, i32 %158, i32 4)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = shl i32 %160, 32
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* @SBREG_BAR, align 4
  %163 = call i32 @pci_cfgregread(i32 0, i32 31, i32 1, i32 %162, i32 4)
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = and i64 %167, -16
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %9, align 4
  %170 = call i32 @pci_cfgregwrite(i32 0, i32 31, i32 1, i32 225, i32 1, i32 1)
  %171 = load i32, i32* @SMB_PORT_ID, align 4
  %172 = load i32, i32* @SMB_GC_REG, align 4
  %173 = call i32 @PCR_REG_OFF(i32 %171, i32 %172)
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* @SYS_RES_MEMORY, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @SMB_GC_SIZE, align 4
  %180 = call i32 @bus_set_resource(i32* %176, i32 %177, i32 1, i32 %178, i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %155
  %184 = load i32*, i32** %8, align 8
  %185 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %186 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 (i32*, i8*, i32, ...) @ichwd_verbose_printf(i32* %184, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %183, %155
  br label %197

191:                                              ; preds = %74
  %192 = load i32*, i32** %8, align 8
  %193 = load %struct.ichwd_device*, %struct.ichwd_device** %5, align 8
  %194 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32*, i8*, i32, ...) @ichwd_verbose_printf(i32* %192, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %22, %73, %191, %190, %129, %120, %99, %78
  ret void
}

declare dso_local i32* @ichwd_find_ich_lpc_bridge(i32*, %struct.ichwd_device**) #1

declare dso_local i32* @ichwd_find_smb_dev(i32*, %struct.ichwd_device**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @device_find_child(i32*, i32, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @bus_set_resource(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ichwd_verbose_printf(i32*, i8*, i32, ...) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCR_REG_OFF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
