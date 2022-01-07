; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_attach_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_attach_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64, i64, i32, i32, i32, i32*, i32, %struct.netmap_adapter*, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.netmap_hw_adapter = type { %struct.netmap_adapter, i32 }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid netmap adapter size %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"either arg or arg->ifp is NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: invalid rings tx %d rx %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Error: netmap adapter hook is busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NAF_HOST_RINGS = common dso_local global i32 0, align 4
@NAF_NATIVE = common dso_local global i32 0, align 4
@netmap_hw_reg = common dso_local global i32 0, align 4
@netmap_hw_dtor = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"netmap queues/slots: TX %d/%d, RX %d/%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fail, arg %p ifp %p na %p\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_attach_ext(%struct.netmap_adapter* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netmap_hw_adapter*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netmap_hw_adapter* null, %struct.netmap_hw_adapter** %8, align 8
  store %struct.ifnet* null, %struct.ifnet** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 72
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* @netmap_debug, align 4
  %14 = load i32, i32* @NM_DEBUG_ON, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %180

23:                                               ; preds = %3
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %25 = icmp eq %struct.netmap_adapter* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %27, i32 0, i32 8
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  %30 = icmp eq %struct.ifnet* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26, %23
  %32 = load i32, i32* @netmap_debug, align 4
  %33 = load i32, i32* @NM_DEBUG_ON, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %180

40:                                               ; preds = %26
  %41 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @netmap_debug, align 4
  %52 = load i32, i32* @NM_DEBUG_ON, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %56, i32 0, i32 7
  %58 = load %struct.netmap_adapter*, %struct.netmap_adapter** %57, align 8
  %59 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.netmap_adapter* %58, i64 %61, i64 %64)
  br label %66

66:                                               ; preds = %55, %50
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %4, align 4
  br label %180

68:                                               ; preds = %45
  %69 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %69, i32 0, i32 8
  %71 = load %struct.ifnet*, %struct.ifnet** %70, align 8
  store %struct.ifnet* %71, %struct.ifnet** %9, align 8
  %72 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %73 = call i64 @NM_NA_CLASH(%struct.ifnet* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EBUSY, align 4
  store i32 %77, i32* %4, align 4
  br label %180

78:                                               ; preds = %68
  %79 = load i64, i64* %6, align 8
  %80 = call %struct.netmap_hw_adapter* @nm_os_malloc(i64 %79)
  store %struct.netmap_hw_adapter* %80, %struct.netmap_hw_adapter** %8, align 8
  %81 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %82 = icmp eq %struct.netmap_hw_adapter* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %167

84:                                               ; preds = %78
  %85 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %86 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %85, i32 0, i32 0
  %87 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %88 = bitcast %struct.netmap_adapter* %86 to i8*
  %89 = bitcast %struct.netmap_adapter* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 64, i1 false)
  %90 = load i32, i32* @NAF_HOST_RINGS, align 4
  %91 = load i32, i32* @NAF_NATIVE, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %94 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %99 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %99, i32 0, i32 7
  %101 = load %struct.netmap_adapter*, %struct.netmap_adapter** %100, align 8
  %102 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @strlcpy(%struct.netmap_adapter* %101, i32 %104, i32 8)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %84
  %109 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %110 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %114 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @netmap_hw_reg, align 4
  %116 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %117 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %117, i32 0, i32 6
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %108, %84
  %120 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %121 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %120, i32 0, i32 0
  %122 = call i64 @netmap_attach_common(%struct.netmap_adapter* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %126 = call i32 @nm_os_free(%struct.netmap_hw_adapter* %125)
  br label %167

127:                                              ; preds = %119
  %128 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %129 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %128, i32 0, i32 0
  %130 = call i32 @netmap_adapter_get(%struct.netmap_adapter* %129)
  %131 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %132 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %133 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %132, i32 0, i32 0
  %134 = call i32 @NM_ATTACH_NA(%struct.ifnet* %131, %struct.netmap_adapter* %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %136 = call i32 @nm_os_onattach(%struct.ifnet* %135)
  %137 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %138 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load i32*, i32** @netmap_hw_dtor, align 8
  %143 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %144 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %144, i32 0, i32 5
  store i32* %142, i32** %145, align 8
  br label %146

146:                                              ; preds = %141, %127
  %147 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %148 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %149 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.ifnet*
  %153 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %154 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %158 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.netmap_hw_adapter*
  %162 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %163 = getelementptr inbounds %struct.netmap_hw_adapter, %struct.netmap_hw_adapter* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @if_printf(%struct.ifnet* %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.ifnet* %152, i32 %156, %struct.netmap_hw_adapter* %161, i32 %165)
  store i32 0, i32* %4, align 4
  br label %180

167:                                              ; preds = %124, %83
  %168 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %169 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %170 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %171 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %struct.netmap_adapter* %168, %struct.ifnet* %169, %struct.netmap_hw_adapter* %170)
  %172 = load %struct.netmap_hw_adapter*, %struct.netmap_hw_adapter** %8, align 8
  %173 = icmp ne %struct.netmap_hw_adapter* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @EINVAL, align 4
  br label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @ENOMEM, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %178, %146, %75, %66, %38, %21
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i64 @NM_NA_CLASH(%struct.ifnet*) #1

declare dso_local %struct.netmap_hw_adapter* @nm_os_malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(%struct.netmap_adapter*, i32, i32) #1

declare dso_local i64 @netmap_attach_common(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_os_free(%struct.netmap_hw_adapter*) #1

declare dso_local i32 @netmap_adapter_get(%struct.netmap_adapter*) #1

declare dso_local i32 @NM_ATTACH_NA(%struct.ifnet*, %struct.netmap_adapter*) #1

declare dso_local i32 @nm_os_onattach(%struct.ifnet*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, %struct.ifnet*, i32, %struct.netmap_hw_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
