; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_alloc_msi_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_alloc_msi_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.resource_list_entry = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@pci_do_msi = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"attempting to allocate %d MSI vectors (%d supported)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"using IRQ %d for MSI\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"using IRQs %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" for MSI\0A\00", align 1
@PCIM_MSICTRL_MME_MASK = common dso_local global i32 0, align 4
@PCIR_MSI_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_alloc_msi_method(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.resource_list_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [32 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.pci_devinfo* @device_get_ivars(i32 %17)
  store %struct.pci_devinfo* %18, %struct.pci_devinfo** %8, align 8
  %19 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %20 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %19, i32 0, i32 1
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %242

26:                                               ; preds = %3
  %27 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %28 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %27, i32 0, i32 0
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = call %struct.resource_list_entry* @resource_list_find(i32* %28, i32 %29, i32 0)
  store %struct.resource_list_entry* %30, %struct.resource_list_entry** %10, align 8
  %31 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %32 = icmp ne %struct.resource_list_entry* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %35 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %4, align 4
  br label %242

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %4, align 4
  br label %242

54:                                               ; preds = %46
  %55 = call i64 (...) @pci_msi_blacklisted()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %4, align 4
  br label %242

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @pci_do_msi, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* @ENODEV, align 4
  store i32 %69, i32* %4, align 4
  br label %242

70:                                               ; preds = %65
  %71 = load i64, i64* @bootverbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %73, %70
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @min(i32 %84, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @min(i32 %90, i32 32)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @powerof2(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %4, align 4
  br label %242

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %114, %97
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @device_get_parent(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %105 = call i32 @PCIB_ALLOC_MSI(i32 %100, i32 %101, i32 %102, i32 %103, i32* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %117

109:                                              ; preds = %98
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %242

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = ashr i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %98

117:                                              ; preds = %108
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %137, %117
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %124 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %123, i32 0, i32 0
  %125 = load i32, i32* @SYS_RES_IRQ, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @resource_list_add(i32* %124, i32 %125, i32 %127, i32 %131, i32 %135, i32 1)
  br label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %118

140:                                              ; preds = %118
  %141 = load i64, i64* @bootverbose, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %205

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %149 = load i32, i32* %148, align 16
  %150 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %204

151:                                              ; preds = %143
  %152 = load i32, i32* %6, align 4
  %153 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  store i32 0, i32* %16, align 4
  store i32 1, i32* %13, align 4
  br label %156

156:                                              ; preds = %189, %151
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %192

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %13, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  %171 = icmp eq i32 %164, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  store i32 1, i32* %16, align 4
  br label %189

173:                                              ; preds = %160
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %176, %173
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %183, %172
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %156

192:                                              ; preds = %156
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %195, %192
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %146
  br label %205

205:                                              ; preds = %204, %140
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* @PCIM_MSICTRL_MME_MASK, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %15, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @ffs(i32 %214)
  %216 = sub nsw i32 %215, 1
  %217 = shl i32 %216, 4
  %218 = load i32, i32* %15, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PCIR_MSI_CTRL, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @pci_write_config(i32 %224, i64 %230, i32 %231, i32 2)
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 4
  store i64 0, i64* %239, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i32*, i32** %7, align 8
  store i32 %240, i32* %241, align 4
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %205, %112, %95, %68, %57, %52, %38, %24
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i64 @pci_msi_blacklisted(...) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @PCIB_ALLOC_MSI(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
