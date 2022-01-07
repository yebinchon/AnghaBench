; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Failed to find vendor-specific capability, error %d\0A\00", align 1
@MLX5_VSC_DOMAIN_SCAN_CRSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"VSC scan space is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot read VSC, no address\0A\00", align 1
@address = common dso_local global i32 0, align 4
@MLX5_VSC_ADDR_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"Failed waiting for read complete flag, error %d addr %#x\0A\00", align 1
@MLX5_VSC_DATA_OFFSET = common dso_local global i64 0, align 8
@M_MLX5_DUMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"inconsistent hw crspace reads: sz %u i %u addr %#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fwdump_prep(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %15 = call i32 @mlx5_vsc_find_cap(%struct.mlx5_core_dev* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %240

22:                                               ; preds = %1
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %24 = call i32 @mlx5_vsc_lock(%struct.mlx5_core_dev* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %240

28:                                               ; preds = %22
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %30 = load i32, i32* @MLX5_VSC_DOMAIN_SCAN_CRSPACE, align 4
  %31 = call i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %36 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %237

37:                                               ; preds = %28
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %38, i32 0, i32 6
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %51 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %237

52:                                               ; preds = %37
  store i64 0, i64* %9, align 8
  store i32 1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %105, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @address, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @MLX5_VSC_SET(i32 %54, i64* %9, i32 %55, i64 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @MLX5_VSC_ADDR_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @pci_write_config(i32 %58, i64 %62, i64 %63, i32 4)
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %66 = call i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev* %65, i32 1)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %53
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %70, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %71, i64 %72)
  br label %237

74:                                               ; preds = %53
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @MLX5_VSC_DATA_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i64 @pci_read_config(i32 %75, i64 %79, i32 4)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @MLX5_VSC_ADDR_OFFSET, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i64 @pci_read_config(i32 %81, i64 %85, i32 4)
  store i64 %86, i64* %10, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @address, align 4
  %89 = call i64 @MLX5_VSC_GET(i32 %87, i64* %10, i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %74
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %74
  br label %107

97:                                               ; preds = %92
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, 4
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i64, i64* %11, align 8
  store i64 %106, i64* %8, align 8
  br label %53

107:                                              ; preds = %96
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @M_MLX5_DUMP, align 4
  %113 = load i32, i32* @M_WAITOK, align 4
  %114 = load i32, i32* @M_ZERO, align 4
  %115 = or i32 %113, %114
  %116 = call i8* @malloc(i32 %111, i32 %112, i32 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_7__*
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %119 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %118, i32 0, i32 5
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %119, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %200, %107
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ult i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @MPASS(i32 %124)
  %126 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %127 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %126, i32 0, i32 5
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @address, align 4
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @MLX5_VSC_SET(i32 %135, i64* %9, i32 %136, i64 %137)
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @MLX5_VSC_ADDR_OFFSET, align 8
  %143 = add nsw i64 %141, %142
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @pci_write_config(i32 %139, i64 %143, i64 %144, i32 4)
  %146 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %147 = call i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev* %146, i32 1)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %120
  %151 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %152 = load i32, i32* %4, align 4
  %153 = load i64, i64* %8, align 8
  %154 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %151, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %152, i64 %153)
  %155 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %156 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %155, i32 0, i32 5
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i32, i32* @M_MLX5_DUMP, align 4
  %159 = call i32 @free(%struct.TYPE_7__* %157, i32 %158)
  %160 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %161 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %160, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %161, align 8
  br label %237

162:                                              ; preds = %120
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* @MLX5_VSC_DATA_OFFSET, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i64 @pci_read_config(i32 %163, i64 %167, i32 4)
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* @MLX5_VSC_ADDR_OFFSET, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i64 @pci_read_config(i32 %169, i64 %173, i32 4)
  store i64 %174, i64* %10, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @address, align 4
  %177 = call i64 @MLX5_VSC_GET(i32 %175, i64* %10, i32 %176)
  store i64 %177, i64* %11, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %162
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* %8, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %162
  br label %202

185:                                              ; preds = %180
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %8, align 8
  %188 = add nsw i64 %187, 4
  %189 = icmp ne i64 %186, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load i64, i64* %11, align 8
  %192 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %193 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %192, i32 0, i32 5
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %6, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  store i64 %191, i64* %199, align 8
  br label %200

200:                                              ; preds = %190, %185
  %201 = load i64, i64* %11, align 8
  store i64 %201, i64* %8, align 8
  br label %120

202:                                              ; preds = %184
  %203 = load i32, i32* %6, align 4
  %204 = add i32 %203, 1
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load i64, i64* %8, align 8
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @KASSERT(i32 %207, i8* %211)
  %213 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %214 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %213, i32 0, i32 5
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = call i32 @mlx5_fwdump_getsize(%struct.TYPE_7__* %215)
  %217 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %218 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %220 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* @M_MLX5_DUMP, align 4
  %226 = load i32, i32* @M_WAITOK, align 4
  %227 = load i32, i32* @M_ZERO, align 4
  %228 = or i32 %226, %227
  %229 = call i8* @malloc(i32 %224, i32 %225, i32 %228)
  %230 = bitcast i8* %229 to i32*
  %231 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %232 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %231, i32 0, i32 4
  store i32* %230, i32** %232, align 8
  %233 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %234 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %233, i32 0, i32 2
  store i32 0, i32* %234, align 8
  %235 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %236 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %235, i32 0, i32 3
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %202, %150, %69, %49, %34
  %238 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %239 = call i32 @mlx5_vsc_unlock(%struct.mlx5_core_dev* %238)
  br label %240

240:                                              ; preds = %237, %27, %18
  ret void
}

declare dso_local i32 @mlx5_vsc_find_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_vsc_lock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_VSC_SET(i32, i64*, i32, i64) #1

declare dso_local i32 @pci_write_config(i32, i64, i64, i32) #1

declare dso_local i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @MLX5_VSC_GET(i32, i64*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mlx5_fwdump_getsize(%struct.TYPE_7__*) #1

declare dso_local i32 @mlx5_vsc_unlock(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
