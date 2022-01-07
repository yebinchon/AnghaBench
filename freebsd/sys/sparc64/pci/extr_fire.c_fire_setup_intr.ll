; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, %struct.fire_msiqarg* }
%struct.fire_msiqarg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.resource = type { i32 }
%struct.fire_softc = type { i32*, i64, i64, i64, i64 }

@intr_vectors = common dso_local global %struct.TYPE_4__* null, align 8
@fire_ic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"invalid interrupt controller for vector 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fire_msiq_filter = common dso_local global i32 0, align 4
@fire_msiqc_filter = common dso_local global i32 0, align 4
@INTCLR_IDLE = common dso_local global i32 0, align 4
@fire_msiq_handler = common dso_local global i32 0, align 4
@FO_PCI_EQ_CTRL_SET_BASE = common dso_local global i64 0, align 8
@FO_PCI_EQ_CTRL_SET_EN = common dso_local global i32 0, align 4
@FO_PCI_MSI_MAP_BASE = common dso_local global i64 0, align 8
@FO_PCI_MSI_MAP_EQNUM_MASK = common dso_local global i32 0, align 4
@FO_PCI_MSI_MAP_EQNUM_SHFT = common dso_local global i32 0, align 4
@FO_PCI_MSI_CLR_BASE = common dso_local global i64 0, align 8
@FO_PCI_MSI_CLR_EQWR_N = common dso_local global i32 0, align 4
@FO_PCI_MSI_MAP_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid interrupt vector 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @fire_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.fire_softc*, align 8
  %19 = alloca %struct.fire_msiqarg*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.fire_softc* @device_get_softc(i32 %24)
  store %struct.fire_softc* %25, %struct.fire_softc** %18, align 8
  %26 = load %struct.resource*, %struct.resource** %12, align 8
  %27 = call i64 @rman_get_rid(%struct.resource* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %188

29:                                               ; preds = %8
  %30 = load %struct.resource*, %struct.resource** %12, align 8
  %31 = call i8* @rman_get_start(%struct.resource* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %22, align 4
  %33 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %34 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %22, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %39 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %23, align 4
  %44 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %45 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %48 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %23, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i64 @INTMAP_VEC(i64 %46, i64 %52)
  store i64 %53, i64* %20, align 8
  %54 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %55 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %23, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %23, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_vectors, align 8
  %62 = load i64, i64* %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, @fire_ic
  br i1 %66, label %67, label %72

67:                                               ; preds = %29
  %68 = load i32, i32* %10, align 4
  %69 = load i64, i64* %20, align 8
  %70 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %9, align 4
  br label %225

72:                                               ; preds = %29
  %73 = load %struct.resource*, %struct.resource** %12, align 8
  %74 = load i64, i64* %20, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @rman_set_start(%struct.resource* %73, i32 %75)
  %77 = load %struct.resource*, %struct.resource** %12, align 8
  %78 = load i64, i64* %20, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @rman_set_end(%struct.resource* %77, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.resource*, %struct.resource** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i8**, i8*** %17, align 8
  %89 = call i32 @bus_generic_setup_intr(i32 %81, i32 %82, %struct.resource* %83, i32 %84, i32* %85, i32* %86, i8* %87, i8** %88)
  store i32 %89, i32* %21, align 4
  %90 = load %struct.resource*, %struct.resource** %12, align 8
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @rman_set_start(%struct.resource* %90, i32 %91)
  %93 = load %struct.resource*, %struct.resource** %12, align 8
  %94 = load i32, i32* %22, align 4
  %95 = call i32 @rman_set_end(%struct.resource* %93, i32 %94)
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %72
  %99 = load i32, i32* %21, align 4
  store i32 %99, i32* %9, align 4
  br label %225

100:                                              ; preds = %72
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_vectors, align 8
  %102 = load i64, i64* %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %104, align 8
  store %struct.fire_msiqarg* %105, %struct.fire_msiqarg** %19, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %125

108:                                              ; preds = %100
  %109 = load i32, i32* @fire_msiq_filter, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_vectors, align 8
  %111 = load i64, i64* %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_vectors, align 8
  %115 = load i64, i64* %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32* @fire_msiqc_filter, i32** %117, align 8
  %118 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %119 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %19, align 8
  %120 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @INTCLR_IDLE, align 4
  %124 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %118, i64 %122, i32 %123)
  br label %131

125:                                              ; preds = %100
  %126 = load i32, i32* @fire_msiq_handler, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_vectors, align 8
  %128 = load i64, i64* %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %108
  %132 = load i32, i32* %22, align 4
  %133 = load %struct.fire_msiqarg*, %struct.fire_msiqarg** %19, align 8
  %134 = getelementptr inbounds %struct.fire_msiqarg, %struct.fire_msiqarg* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %136 = load i64, i64* @FO_PCI_EQ_CTRL_SET_BASE, align 8
  %137 = load i32, i32* %23, align 4
  %138 = shl i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %136, %139
  %141 = load i32, i32* @FO_PCI_EQ_CTRL_SET_EN, align 4
  %142 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %135, i64 %140, i32 %141)
  %143 = load i32, i32* %22, align 4
  %144 = shl i32 %143, 3
  store i32 %144, i32* %22, align 4
  %145 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %146 = load i64, i64* @FO_PCI_MSI_MAP_BASE, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %151 = load i64, i64* @FO_PCI_MSI_MAP_BASE, align 8
  %152 = load i32, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %150, i64 %154)
  %156 = load i32, i32* @FO_PCI_MSI_MAP_EQNUM_MASK, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* @FO_PCI_MSI_MAP_EQNUM_SHFT, align 4
  %161 = shl i32 %159, %160
  %162 = load i32, i32* @FO_PCI_MSI_MAP_EQNUM_MASK, align 4
  %163 = and i32 %161, %162
  %164 = or i32 %158, %163
  %165 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %145, i64 %149, i32 %164)
  %166 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %167 = load i64, i64* @FO_PCI_MSI_CLR_BASE, align 8
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = load i32, i32* @FO_PCI_MSI_CLR_EQWR_N, align 4
  %172 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %166, i64 %170, i32 %171)
  %173 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %174 = load i64, i64* @FO_PCI_MSI_MAP_BASE, align 8
  %175 = load i32, i32* %22, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %179 = load i64, i64* @FO_PCI_MSI_MAP_BASE, align 8
  %180 = load i32, i32* %22, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %178, i64 %182)
  %184 = load i32, i32* @FO_PCI_MSI_MAP_V, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %173, i64 %177, i32 %185)
  %187 = load i32, i32* %21, align 4
  store i32 %187, i32* %9, align 4
  br label %225

188:                                              ; preds = %8
  %189 = load %struct.resource*, %struct.resource** %12, align 8
  %190 = call i8* @rman_get_start(%struct.resource* %189)
  %191 = ptrtoint i8* %190 to i64
  store i64 %191, i64* %20, align 8
  %192 = load i64, i64* %20, align 8
  %193 = call i64 @INTIGN(i64 %192)
  %194 = load %struct.fire_softc*, %struct.fire_softc** %18, align 8
  %195 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %193, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %188
  %199 = load i32, i32* %10, align 4
  %200 = load i64, i64* %20, align 8
  %201 = call i32 @device_printf(i32 %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %200)
  %202 = load i32, i32* @EINVAL, align 4
  store i32 %202, i32* %9, align 4
  br label %225

203:                                              ; preds = %188
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_vectors, align 8
  %205 = load i64, i64* %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, @fire_ic
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load i32, i32* %10, align 4
  %212 = load i64, i64* %20, align 8
  %213 = call i32 @device_printf(i32 %211, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %212)
  %214 = load i32, i32* @EINVAL, align 4
  store i32 %214, i32* %9, align 4
  br label %225

215:                                              ; preds = %203
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.resource*, %struct.resource** %12, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32*, i32** %14, align 8
  %221 = load i32*, i32** %15, align 8
  %222 = load i8*, i8** %16, align 8
  %223 = load i8**, i8*** %17, align 8
  %224 = call i32 @bus_generic_setup_intr(i32 %216, i32 %217, %struct.resource* %218, i32 %219, i32* %220, i32* %221, i8* %222, i8** %223)
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %215, %210, %198, %131, %98, %67
  %226 = load i32, i32* %9, align 4
  ret i32 %226
}

declare dso_local %struct.fire_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_rid(%struct.resource*) #1

declare dso_local i8* @rman_get_start(%struct.resource*) #1

declare dso_local i64 @INTMAP_VEC(i64, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @rman_set_start(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_end(%struct.resource*, i32) #1

declare dso_local i32 @bus_generic_setup_intr(i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i64, i32) #1

declare dso_local i32 @FIRE_PCI_READ_8(%struct.fire_softc*, i64) #1

declare dso_local i64 @INTIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
