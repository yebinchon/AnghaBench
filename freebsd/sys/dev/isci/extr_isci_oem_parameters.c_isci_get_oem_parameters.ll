; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_oem_parameters.c_isci_get_oem_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_oem_parameters.c_isci_get_oem_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.rom_header = type { i32 }
%struct.pcir_header = type { i64, i64 }
%struct.oem_parameters_table = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@__const.isci_get_oem_parameters.oem_sig = private unnamed_addr constant [4 x i8] c"$OEM", align 1
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"oem_data->header.num_elements = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"OEM Parameter Data for controller %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_get_oem_parameters(%struct.isci_softc* %0) #0 {
  %2 = alloca %struct.isci_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rom_header*, align 8
  %11 = alloca %struct.pcir_header*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.oem_parameters_table*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store %struct.isci_softc* %0, %struct.isci_softc** %2, align 8
  store i64 786432, i64* %3, align 8
  store i64 196608, i64* %4, align 8
  store i64 43605, i64* %5, align 8
  store i64 512, i64* %6, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @BIOS_PADDRTOVADDR(i64 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %176, %1
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %180

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %176

36:                                               ; preds = %28
  %37 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %38 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %42 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = bitcast i8* %47 to i64*
  store i64* %48, i64** %9, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = bitcast i64* %49 to %struct.rom_header*
  store %struct.rom_header* %50, %struct.rom_header** %10, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = bitcast i64* %51 to i8*
  %53 = load %struct.rom_header*, %struct.rom_header** %10, align 8
  %54 = getelementptr inbounds %struct.rom_header, %struct.rom_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = bitcast i8* %57 to %struct.pcir_header*
  store %struct.pcir_header* %58, %struct.pcir_header** %11, align 8
  %59 = load %struct.pcir_header*, %struct.pcir_header** %11, align 8
  %60 = getelementptr inbounds %struct.pcir_header, %struct.pcir_header* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %175

64:                                               ; preds = %36
  %65 = load %struct.pcir_header*, %struct.pcir_header** %11, align 8
  %66 = getelementptr inbounds %struct.pcir_header, %struct.pcir_header* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %175

70:                                               ; preds = %64
  %71 = bitcast [4 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.isci_get_oem_parameters.oem_sig, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %171, %70
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = udiv i64 %75, 8
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %174

78:                                               ; preds = %72
  %79 = load i64*, i64** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %85 = bitcast i8* %84 to i64*
  %86 = load i64, i64* %85, align 1
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %170

88:                                               ; preds = %78
  %89 = load i64*, i64** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = bitcast i64* %92 to %struct.oem_parameters_table*
  store %struct.oem_parameters_table* %93, %struct.oem_parameters_table** %16, align 8
  %94 = load %struct.oem_parameters_table*, %struct.oem_parameters_table** %16, align 8
  %95 = getelementptr inbounds %struct.oem_parameters_table, %struct.oem_parameters_table* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %17, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %100 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %166, %88
  %107 = load i32, i32* %18, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %169

113:                                              ; preds = %106
  %114 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %115 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @memcpy(i32* %121, i32* %127, i32 4)
  %129 = load i32, i32* %18, align 4
  %130 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %150, %113
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %133, 4
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = bitcast i32* %141 to i8*
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  store i8 %146, i8* %20, align 1
  %147 = load i8, i8* %20, align 1
  %148 = sext i8 %147 to i32
  %149 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %135
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %19, align 4
  br label %131

153:                                              ; preds = %131
  %154 = call i32 (i32, i8*, i8*, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %160 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 4
  br label %166

166:                                              ; preds = %153
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %106

169:                                              ; preds = %106
  br label %170

170:                                              ; preds = %169, %78
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %72

174:                                              ; preds = %72
  br label %180

175:                                              ; preds = %64, %36
  br label %176

176:                                              ; preds = %175, %28
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* %8, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %8, align 8
  br label %24

180:                                              ; preds = %174, %24
  ret void
}

declare dso_local i64 @BIOS_PADDRTOVADDR(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @isci_log_message(i32, i8*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
