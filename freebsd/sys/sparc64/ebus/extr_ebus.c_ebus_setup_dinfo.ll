; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_setup_dinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_setup_dinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ebus_softc = type { i32, i32, i32 }
%struct.isa_regs = type { i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"<%s>: incomplete\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@EBUS_PCI = common dso_local global i32 0, align 4
@PCI_INVALID_IRQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"<%s>: could not map EBus interrupt %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ebus_devinfo* (i32, %struct.ebus_softc*, i32)* @ebus_setup_dinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ebus_devinfo* @ebus_setup_dinfo(i32 %0, %struct.ebus_softc* %1, i32 %2) #0 {
  %4 = alloca %struct.ebus_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ebus_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isa_regs, align 8
  %9 = alloca %struct.isa_regs*, align 8
  %10 = alloca %struct.isa_regs, align 8
  %11 = alloca %struct.isa_regs*, align 8
  %12 = alloca %struct.ebus_devinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ebus_softc* %1, %struct.ebus_softc** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.ebus_devinfo* @malloc(i32 8, i32 %19, i32 %22)
  store %struct.ebus_devinfo* %23, %struct.ebus_devinfo** %12, align 8
  %24 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %25 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_2__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @free(%struct.ebus_devinfo* %30, i32 %31)
  store %struct.ebus_devinfo* null, %struct.ebus_devinfo** %4, align 8
  br label %183

33:                                               ; preds = %3
  %34 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %35 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %34, i32 0, i32 0
  %36 = call i32 @resource_list_init(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = bitcast %struct.isa_regs** %9 to i8**
  %39 = call i32 @OF_getprop_alloc_multi(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 8, i8** %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %45 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %50 = call i32 @ebus_destroy_dinfo(%struct.ebus_devinfo* %49)
  store %struct.ebus_devinfo* null, %struct.ebus_devinfo** %4, align 8
  br label %183

51:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load %struct.isa_regs*, %struct.isa_regs** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %57, i64 %59
  %61 = call i64 @ISA_REG_PHYS(%struct.isa_regs* %60)
  store i64 %61, i64* %13, align 8
  %62 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %63 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %62, i32 0, i32 0
  %64 = load i32, i32* @SYS_RES_MEMORY, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.isa_regs*, %struct.isa_regs** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %68, i64 %70
  %72 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %67, %73
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.isa_regs*, %struct.isa_regs** %9, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %76, i64 %78
  %80 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @resource_list_add(i32* %63, i32 %64, i32 %65, i64 %66, i64 %75, i32 %82)
  br label %84

84:                                               ; preds = %56
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %52

87:                                               ; preds = %52
  %88 = load %struct.isa_regs*, %struct.isa_regs** %9, align 8
  %89 = call i32 @OF_prop_free(%struct.isa_regs* %88)
  %90 = load i32, i32* %7, align 4
  %91 = bitcast %struct.isa_regs** %11 to i8**
  %92 = call i32 @OF_getprop_alloc_multi(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 8, i8** %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  store %struct.ebus_devinfo* %96, %struct.ebus_devinfo** %4, align 8
  br label %183

97:                                               ; preds = %87
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %176, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %179

102:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  %103 = load %struct.ebus_softc*, %struct.ebus_softc** %6, align 8
  %104 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @EBUS_PCI, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.ebus_softc*, %struct.ebus_softc** %6, align 8
  %113 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %112, i32 0, i32 2
  %114 = load %struct.isa_regs*, %struct.isa_regs** %11, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %114, i64 %116
  %118 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @ofw_isa_route_intr(i32 %110, i32 %111, i32* %113, i64 %119)
  store i64 %120, i64* %14, align 8
  br label %141

121:                                              ; preds = %102
  %122 = load %struct.isa_regs*, %struct.isa_regs** %11, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %122, i64 %124
  %126 = bitcast %struct.isa_regs* %10 to i8*
  %127 = bitcast %struct.isa_regs* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 8, i1 false)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.ebus_softc*, %struct.ebus_softc** %6, align 8
  %130 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %129, i32 0, i32 2
  %131 = call i32 @ofw_bus_lookup_imap(i32 %128, i32* %130, %struct.isa_regs* %8, i32 8, %struct.isa_regs* %10, i32 8, i64* %14, i32 8, i32* null)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %121
  %135 = load %struct.ebus_softc*, %struct.ebus_softc** %6, align 8
  %136 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %14, align 8
  %139 = call i64 @INTMAP_VEC(i32 %137, i64 %138)
  store i64 %139, i64* %14, align 8
  br label %140

140:                                              ; preds = %134, %121
  br label %141

141:                                              ; preds = %140, %109
  %142 = load %struct.ebus_softc*, %struct.ebus_softc** %6, align 8
  %143 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @EBUS_PCI, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* %18, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %168

151:                                              ; preds = %141
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* @PCI_INVALID_IRQ, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151, %148
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %158 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.isa_regs*, %struct.isa_regs** %11, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %161, i64 %163
  %165 = getelementptr inbounds %struct.isa_regs, %struct.isa_regs* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %160, i64 %166)
  br label %176

168:                                              ; preds = %151, %148
  %169 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  %170 = getelementptr inbounds %struct.ebus_devinfo, %struct.ebus_devinfo* %169, i32 0, i32 0
  %171 = load i32, i32* @SYS_RES_IRQ, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %14, align 8
  %175 = call i32 @resource_list_add(i32* %170, i32 %171, i32 %172, i64 %173, i64 %174, i32 1)
  br label %176

176:                                              ; preds = %168, %155
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %98

179:                                              ; preds = %98
  %180 = load %struct.isa_regs*, %struct.isa_regs** %11, align 8
  %181 = call i32 @OF_prop_free(%struct.isa_regs* %180)
  %182 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %12, align 8
  store %struct.ebus_devinfo* %182, %struct.ebus_devinfo** %4, align 8
  br label %183

183:                                              ; preds = %179, %95, %42, %29
  %184 = load %struct.ebus_devinfo*, %struct.ebus_devinfo** %4, align 8
  ret %struct.ebus_devinfo* %184
}

declare dso_local %struct.ebus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @free(%struct.ebus_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ebus_destroy_dinfo(%struct.ebus_devinfo*) #1

declare dso_local i64 @ISA_REG_PHYS(%struct.isa_regs*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @OF_prop_free(%struct.isa_regs*) #1

declare dso_local i64 @ofw_isa_route_intr(i32, i32, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ofw_bus_lookup_imap(i32, i32*, %struct.isa_regs*, i32, %struct.isa_regs*, i32, i64*, i32, i32*) #1

declare dso_local i64 @INTMAP_VEC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
