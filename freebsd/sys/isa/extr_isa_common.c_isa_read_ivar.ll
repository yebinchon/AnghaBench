; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_device = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i64, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @isa_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.isa_device*, align 8
  %11 = alloca %struct.resource_list*, align 8
  %12 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.isa_device* @DEVTOISA(i32 %13)
  store %struct.isa_device* %14, %struct.isa_device** %10, align 8
  %15 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %16 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %15, i32 0, i32 8
  store %struct.resource_list* %16, %struct.resource_list** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %226 [
    i32 131, label %18
    i32 130, label %32
    i32 133, label %46
    i32 132, label %60
    i32 140, label %74
    i32 139, label %88
    i32 138, label %102
    i32 137, label %116
    i32 143, label %130
    i32 142, label %144
    i32 145, label %158
    i32 144, label %172
    i32 128, label %186
    i32 129, label %191
    i32 141, label %196
    i32 147, label %201
    i32 146, label %206
    i32 135, label %211
    i32 134, label %216
    i32 136, label %221
  ]

18:                                               ; preds = %4
  %19 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %20 = load i32, i32* @SYS_RES_IOPORT, align 4
  %21 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %19, i32 %20, i32 0)
  store %struct.resource_list_entry* %21, %struct.resource_list_entry** %12, align 8
  %22 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %23 = icmp ne %struct.resource_list_entry* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %26 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %31

29:                                               ; preds = %18
  %30 = load i64*, i64** %9, align 8
  store i64 -1, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %24
  br label %228

32:                                               ; preds = %4
  %33 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %34 = load i32, i32* @SYS_RES_IOPORT, align 4
  %35 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %33, i32 %34, i32 1)
  store %struct.resource_list_entry* %35, %struct.resource_list_entry** %12, align 8
  %36 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %37 = icmp ne %struct.resource_list_entry* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %40 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load i64*, i64** %9, align 8
  store i64 -1, i64* %44, align 8
  br label %45

45:                                               ; preds = %43, %38
  br label %228

46:                                               ; preds = %4
  %47 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %48 = load i32, i32* @SYS_RES_IOPORT, align 4
  %49 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %47, i32 %48, i32 0)
  store %struct.resource_list_entry* %49, %struct.resource_list_entry** %12, align 8
  %50 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %51 = icmp ne %struct.resource_list_entry* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %54 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  br label %59

57:                                               ; preds = %46
  %58 = load i64*, i64** %9, align 8
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %57, %52
  br label %228

60:                                               ; preds = %4
  %61 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %62 = load i32, i32* @SYS_RES_IOPORT, align 4
  %63 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %61, i32 %62, i32 1)
  store %struct.resource_list_entry* %63, %struct.resource_list_entry** %12, align 8
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %65 = icmp ne %struct.resource_list_entry* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %68 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  br label %73

71:                                               ; preds = %60
  %72 = load i64*, i64** %9, align 8
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %71, %66
  br label %228

74:                                               ; preds = %4
  %75 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %75, i32 %76, i32 0)
  store %struct.resource_list_entry* %77, %struct.resource_list_entry** %12, align 8
  %78 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %79 = icmp ne %struct.resource_list_entry* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %82 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  br label %87

85:                                               ; preds = %74
  %86 = load i64*, i64** %9, align 8
  store i64 -1, i64* %86, align 8
  br label %87

87:                                               ; preds = %85, %80
  br label %228

88:                                               ; preds = %4
  %89 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %89, i32 %90, i32 1)
  store %struct.resource_list_entry* %91, %struct.resource_list_entry** %12, align 8
  %92 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %93 = icmp ne %struct.resource_list_entry* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %96 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  br label %101

99:                                               ; preds = %88
  %100 = load i64*, i64** %9, align 8
  store i64 -1, i64* %100, align 8
  br label %101

101:                                              ; preds = %99, %94
  br label %228

102:                                              ; preds = %4
  %103 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %104 = load i32, i32* @SYS_RES_MEMORY, align 4
  %105 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %103, i32 %104, i32 0)
  store %struct.resource_list_entry* %105, %struct.resource_list_entry** %12, align 8
  %106 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %107 = icmp ne %struct.resource_list_entry* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %110 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %9, align 8
  store i64 %111, i64* %112, align 8
  br label %115

113:                                              ; preds = %102
  %114 = load i64*, i64** %9, align 8
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %113, %108
  br label %228

116:                                              ; preds = %4
  %117 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %118 = load i32, i32* @SYS_RES_MEMORY, align 4
  %119 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %117, i32 %118, i32 1)
  store %struct.resource_list_entry* %119, %struct.resource_list_entry** %12, align 8
  %120 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %121 = icmp ne %struct.resource_list_entry* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %124 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %9, align 8
  store i64 %125, i64* %126, align 8
  br label %129

127:                                              ; preds = %116
  %128 = load i64*, i64** %9, align 8
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %127, %122
  br label %228

130:                                              ; preds = %4
  %131 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %132 = load i32, i32* @SYS_RES_IRQ, align 4
  %133 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %131, i32 %132, i32 0)
  store %struct.resource_list_entry* %133, %struct.resource_list_entry** %12, align 8
  %134 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %135 = icmp ne %struct.resource_list_entry* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %138 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %9, align 8
  store i64 %139, i64* %140, align 8
  br label %143

141:                                              ; preds = %130
  %142 = load i64*, i64** %9, align 8
  store i64 -1, i64* %142, align 8
  br label %143

143:                                              ; preds = %141, %136
  br label %228

144:                                              ; preds = %4
  %145 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %146 = load i32, i32* @SYS_RES_IRQ, align 4
  %147 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %145, i32 %146, i32 1)
  store %struct.resource_list_entry* %147, %struct.resource_list_entry** %12, align 8
  %148 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %149 = icmp ne %struct.resource_list_entry* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %152 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %9, align 8
  store i64 %153, i64* %154, align 8
  br label %157

155:                                              ; preds = %144
  %156 = load i64*, i64** %9, align 8
  store i64 -1, i64* %156, align 8
  br label %157

157:                                              ; preds = %155, %150
  br label %228

158:                                              ; preds = %4
  %159 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %160 = load i32, i32* @SYS_RES_DRQ, align 4
  %161 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %159, i32 %160, i32 0)
  store %struct.resource_list_entry* %161, %struct.resource_list_entry** %12, align 8
  %162 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %163 = icmp ne %struct.resource_list_entry* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %166 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %9, align 8
  store i64 %167, i64* %168, align 8
  br label %171

169:                                              ; preds = %158
  %170 = load i64*, i64** %9, align 8
  store i64 -1, i64* %170, align 8
  br label %171

171:                                              ; preds = %169, %164
  br label %228

172:                                              ; preds = %4
  %173 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %174 = load i32, i32* @SYS_RES_DRQ, align 4
  %175 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %173, i32 %174, i32 1)
  store %struct.resource_list_entry* %175, %struct.resource_list_entry** %12, align 8
  %176 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %177 = icmp ne %struct.resource_list_entry* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.resource_list_entry*, %struct.resource_list_entry** %12, align 8
  %180 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %9, align 8
  store i64 %181, i64* %182, align 8
  br label %185

183:                                              ; preds = %172
  %184 = load i64*, i64** %9, align 8
  store i64 -1, i64* %184, align 8
  br label %185

185:                                              ; preds = %183, %178
  br label %228

186:                                              ; preds = %4
  %187 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %188 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %9, align 8
  store i64 %189, i64* %190, align 8
  br label %228

191:                                              ; preds = %4
  %192 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %193 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %9, align 8
  store i64 %194, i64* %195, align 8
  br label %228

196:                                              ; preds = %4
  %197 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %198 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %9, align 8
  store i64 %199, i64* %200, align 8
  br label %228

201:                                              ; preds = %4
  %202 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %203 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %9, align 8
  store i64 %204, i64* %205, align 8
  br label %228

206:                                              ; preds = %4
  %207 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %208 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %9, align 8
  store i64 %209, i64* %210, align 8
  br label %228

211:                                              ; preds = %4
  %212 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %213 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %9, align 8
  store i64 %214, i64* %215, align 8
  br label %228

216:                                              ; preds = %4
  %217 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %218 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %9, align 8
  store i64 %219, i64* %220, align 8
  br label %228

221:                                              ; preds = %4
  %222 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %223 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = load i64*, i64** %9, align 8
  store i64 %224, i64* %225, align 8
  br label %228

226:                                              ; preds = %4
  %227 = load i32, i32* @ENOENT, align 4
  store i32 %227, i32* %5, align 4
  br label %229

228:                                              ; preds = %221, %216, %211, %206, %201, %196, %191, %186, %185, %171, %157, %143, %129, %115, %101, %87, %73, %59, %45, %31
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %228, %226
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
