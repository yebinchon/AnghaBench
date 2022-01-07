; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx_fdt.c_bgx_fdt_init_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx_fdt.c_bgx_fdt_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32* }

@CONN_TYPE_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not find bgx%d node in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"qlm-mode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@M_OFWPROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not retrieve PHY address\0A\00", align 1
@MII_PHY_ANY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"No phy-handle in PHY node. Skipping...\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not find interface to PHY\0A\00", align 1
@MAX_LMAC_PER_BGX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Could not find matching PHY\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgx_fdt_init_phy(%struct.bgx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %3, align 8
  %14 = load i32, i32* @CONN_TYPE_MAXLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.bgx*, %struct.bgx** %3, align 8
  %19 = call i64 @bgx_fdt_find_node(%struct.bgx* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.bgx*, %struct.bgx** %3, align 8
  %24 = getelementptr inbounds %struct.bgx, %struct.bgx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bgx*, %struct.bgx** %3, align 8
  %27 = getelementptr inbounds %struct.bgx, %struct.bgx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %177

31:                                               ; preds = %1
  store i64 0, i64* %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @OF_child(i64 %32)
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %164, %31
  %35 = load i64, i64* %6, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %167

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %15 to i32
  %40 = call i64 @OF_getprop(i64 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.bgx*, %struct.bgx** %3, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @bgx_fdt_phy_mode_match(%struct.bgx* %44, i8* %17, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %164

49:                                               ; preds = %43
  br label %70

50:                                               ; preds = %37
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @OF_getprop_alloc(i64 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %164

56:                                               ; preds = %50
  %57 = load %struct.bgx*, %struct.bgx** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @bgx_fdt_phy_name_match(%struct.bgx* %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* @M_OFWPROP, align 4
  %65 = call i32 @free(i8* %63, i32 %64)
  br label %164

66:                                               ; preds = %56
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @M_OFWPROP, align 4
  %69 = call i32 @free(i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %49
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.bgx*, %struct.bgx** %3, align 8
  %73 = getelementptr inbounds %struct.bgx, %struct.bgx* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i64 @OF_getencprop(i64 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %77, i32 8)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %70
  %81 = load i64, i64* @bootverbose, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.bgx*, %struct.bgx** %3, align 8
  %85 = getelementptr inbounds %struct.bgx, %struct.bgx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i64, i64* @MII_PHY_ANY, align 8
  %90 = load %struct.bgx*, %struct.bgx** %3, align 8
  %91 = getelementptr inbounds %struct.bgx, %struct.bgx* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i64 %89, i64* %95, align 8
  br label %96

96:                                               ; preds = %88, %70
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @OF_getencprop(i64 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64* %7, i32 8)
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i64, i64* @bootverbose, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.bgx*, %struct.bgx** %3, align 8
  %105 = getelementptr inbounds %struct.bgx, %struct.bgx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %100
  br label %164

109:                                              ; preds = %96
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @OF_instance_to_package(i64 %110)
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @OF_parent(i64 %112)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @OF_xref_from_node(i64 %114)
  %116 = call i32* @OF_device_from_xref(i32 %115)
  %117 = load %struct.bgx*, %struct.bgx** %3, align 8
  %118 = getelementptr inbounds %struct.bgx, %struct.bgx* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i32* %116, i32** %122, align 8
  %123 = load %struct.bgx*, %struct.bgx** %3, align 8
  %124 = getelementptr inbounds %struct.bgx, %struct.bgx* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %109
  %132 = load i64, i64* @bootverbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.bgx*, %struct.bgx** %3, align 8
  %136 = getelementptr inbounds %struct.bgx, %struct.bgx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @device_printf(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %131
  br label %164

140:                                              ; preds = %109
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.bgx*, %struct.bgx** %3, align 8
  %143 = getelementptr inbounds %struct.bgx, %struct.bgx* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bgx_fdt_get_macaddr(i64 %141, i32 %148)
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.bgx*, %struct.bgx** %3, align 8
  %152 = getelementptr inbounds %struct.bgx, %struct.bgx* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  store i64 %150, i64* %156, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @MAX_LMAC_PER_BGX, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %140
  br label %167

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163, %139, %108, %62, %55, %48
  %165 = load i64, i64* %6, align 8
  %166 = call i64 @OF_peer(i64 %165)
  store i64 %166, i64* %6, align 8
  br label %34

167:                                              ; preds = %162, %34
  %168 = load i64, i64* %10, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.bgx*, %struct.bgx** %3, align 8
  %172 = getelementptr inbounds %struct.bgx, %struct.bgx* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %177

176:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %177

177:                                              ; preds = %176, %170, %22
  %178 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bgx_fdt_find_node(%struct.bgx*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i64 @OF_child(i64) #2

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #2

declare dso_local i32 @bgx_fdt_phy_mode_match(%struct.bgx*, i8*, i64) #2

declare dso_local i64 @OF_getprop_alloc(i64, i8*, i8**) #2

declare dso_local i32 @bgx_fdt_phy_name_match(%struct.bgx*, i8*, i64) #2

declare dso_local i32 @free(i8*, i32) #2

declare dso_local i64 @OF_getencprop(i64, i8*, i64*, i32) #2

declare dso_local i64 @OF_instance_to_package(i64) #2

declare dso_local i64 @OF_parent(i64) #2

declare dso_local i32* @OF_device_from_xref(i32) #2

declare dso_local i32 @OF_xref_from_node(i64) #2

declare dso_local i32 @bgx_fdt_get_macaddr(i64, i32) #2

declare dso_local i64 @OF_peer(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
