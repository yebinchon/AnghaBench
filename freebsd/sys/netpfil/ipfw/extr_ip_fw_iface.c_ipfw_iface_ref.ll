; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_iface_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_iface_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ipfw_ifc = type { %struct.ipfw_iface* }
%struct.ipfw_iface = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_iface_ref(%struct.ip_fw_chain* %0, i8* %1, %struct.ipfw_ifc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipfw_ifc*, align 8
  %8 = alloca %struct.namedobj_instance*, align 8
  %9 = alloca %struct.ipfw_iface*, align 8
  %10 = alloca %struct.ipfw_iface*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ipfw_ifc* %2, %struct.ipfw_ifc** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %120

17:                                               ; preds = %3
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %19 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %18)
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %21 = call %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain* %20)
  store %struct.namedobj_instance* %21, %struct.namedobj_instance** %8, align 8
  %22 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %23 = icmp eq %struct.namedobj_instance* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %26 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %25)
  %27 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %28 = call i32 @vnet_ipfw_iface_init(%struct.ip_fw_chain* %27)
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %30 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %29)
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %32 = call %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain* %31)
  store %struct.namedobj_instance* %32, %struct.namedobj_instance** %8, align 8
  br label %33

33:                                               ; preds = %24, %17
  %34 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance* %34, i32 0, i8* %35)
  %37 = inttoptr i64 %36 to %struct.ipfw_iface*
  store %struct.ipfw_iface* %37, %struct.ipfw_iface** %9, align 8
  %38 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %39 = icmp ne %struct.ipfw_iface* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %42 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %47 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %7, align 8
  %48 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %47, i32 0, i32 0
  store %struct.ipfw_iface* %46, %struct.ipfw_iface** %48, align 8
  %49 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %50 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %49)
  store i32 0, i32* %4, align 4
  br label %120

51:                                               ; preds = %33
  %52 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %53 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %52)
  %54 = load i32, i32* @M_IPFW, align 4
  %55 = load i32, i32* @M_WAITOK, align 4
  %56 = load i32, i32* @M_ZERO, align 4
  %57 = or i32 %55, %56
  %58 = call %struct.ipfw_iface* @malloc(i32 32, i32 %54, i32 %57)
  store %struct.ipfw_iface* %58, %struct.ipfw_iface** %9, align 8
  %59 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %60 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %59, i32 0, i32 4
  %61 = call i32 @TAILQ_INIT(i32* %60)
  %62 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %63 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %66 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %69 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strlcpy(i32 %70, i8* %71, i32 4)
  %73 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %74 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %77 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %76)
  %78 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance* %78, i32 0, i8* %79)
  %81 = inttoptr i64 %80 to %struct.ipfw_iface*
  store %struct.ipfw_iface* %81, %struct.ipfw_iface** %10, align 8
  %82 = load %struct.ipfw_iface*, %struct.ipfw_iface** %10, align 8
  %83 = icmp ne %struct.ipfw_iface* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %51
  %85 = load %struct.ipfw_iface*, %struct.ipfw_iface** %10, align 8
  %86 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.ipfw_iface*, %struct.ipfw_iface** %10, align 8
  %91 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %7, align 8
  %92 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %91, i32 0, i32 0
  store %struct.ipfw_iface* %90, %struct.ipfw_iface** %92, align 8
  %93 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %94 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %93)
  %95 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %96 = load i32, i32* @M_IPFW, align 4
  %97 = call i32 @free(%struct.ipfw_iface* %95, i32 %96)
  store i32 0, i32* %4, align 4
  br label %120

98:                                               ; preds = %51
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @ipfw_kiflookup(i8* %99)
  %101 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %102 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %104 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %109 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %98
  %111 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %112 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %113 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %112, i32 0, i32 2
  %114 = call i32 @ipfw_objhash_add(%struct.namedobj_instance* %111, %struct.TYPE_2__* %113)
  %115 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %116 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %7, align 8
  %117 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %116, i32 0, i32 0
  store %struct.ipfw_iface* %115, %struct.ipfw_iface** %117, align 8
  %118 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %119 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %110, %84, %40, %15
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @vnet_ipfw_iface_init(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance*, i32, i8*) #1

declare dso_local %struct.ipfw_iface* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.ipfw_iface*, i32) #1

declare dso_local i64 @ipfw_kiflookup(i8*) #1

declare dso_local i32 @ipfw_objhash_add(%struct.namedobj_instance*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
